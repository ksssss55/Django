import json
from multiprocessing import Pool
import requests
from requests.exceptions import RequestException
import re
import pymysql

def get_one_page(url):
    try:
        response = requests.get(url)
        if response.status_code == 200:
            return response.text
        return None
    except RequestException:
        return None
def parse_one_page(html):
    pattern =re.compile('<dd>.*?board-index.*?>(\d+)</i>.*?data-src="(.*?)".*?name"><a'
                    +'.*?>(.*?)</a>.*?star">(.*?)</p>.*?releasetime">(.*?)</p>'
                    +'.*?integer">(.*?)</i>.*?fraction">(.*?)</i>',re.S)
    items = re.findall(pattern,html)
    for item in items:
        data ={
            'index':item[0],
            'image':item[1],
            'title':item[2],
            'actor':item[3].strip()[3:],
            'time':item[4].strip()[5:],
            'score':item[5]+item[6]
        }
        write_to_mysql(data)

def write_to_mysql(data):
    db = pymysql.connect(host='localhost', user='root', password='root', db='douban', charset='utf8')
    cur = db.cursor()
    sqlc = '''
        insert into maoyan(index,image,title,actor,time,score) 
        values(%s,%s,%s,%s,%s,%s)
    '''
    try:
        if cur.execute(sqlc, (data["index"], data["image"],data["title"],data["actor"],data["time"],data["score"])):
            print('Successful')
            db.commit()
    except:
        print('Failed')
        db.rollback()
    cur.close()
    db.close()

def    main(offset):
    url='https://maoyan.com/board/4?offset='+str(offset)
    html = get_one_page(url)
    parse_one_page(html)


if __name__=='__main__':
   for i in range(10):
       main(i*10)