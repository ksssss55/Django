import json
from multiprocessing import Pool
import requests
from requests.exceptions import RequestException
import re
import pymysql

def get_one_page(url):
    try:
        respone=requests.get(url)
        if respone.status_code==200:
            return respone.text
        return None
    except RequestException:
        return None

def parse_one_page(html):
    pattern = re.compile('<li>.*?<em.*?>(\d+)</em>.*?src="(.*?)".*?"title">(.*?)</span>'
                         +'.*?<p class="">(.*?)&nbsp;&nbsp;&nbsp;(.*?)<br>(.*?)&nbsp;/&nbsp;'
                         +'(.*?)&nbsp;/&nbsp;(.*?)</p>.*?"v:average">(.*?)</span>.*?</li>',re.S)
    items = re.findall(pattern, html)
    for item in items:
        data = {
            'id': item[0],
            'title': item[2],
            'director': item[3].strip()[3:],
            'actor': item[4][3:],
            'time': item[5].strip(),
            'region': item[6],
            'type': item[7].strip(),
            'score': item[8],
            'images': item[1]
        }
        write_to_mysql(data)

def write_to_file(content):
    with open('result.txt', 'a', encoding='utf-8') as f:
        f.write(json.dumps(content, ensure_ascii=False) + '\n')
        f.close()

def write_to_mysql(data):
    db = pymysql.connect(host='localhost', user='root', password='root', db='douban', charset='utf8')
    cur = db.cursor()
    # table = 'DouBanMovies'
    # keys = ', '.join(parse_one_page(content).__next__().keys())
    # values = ','.join(['%s'] * len(parse_one_page(content).__next__()))
    # sqlc = 'insert into {table}({keys}) values ({values})'.format(table=table, keys=keys, values=values)
    sqlc = '''
        insert into movies_moives
        values(null,%s,%s,%s,%s,%s,%s,%s,%s)
    '''
    try:
        if cur.execute(sqlc, (data["title"],data["director"],data["actor"],data["time"],data["region"],data["type"],data["score"],data["images"])):
            print('Successful')
            db.commit()
    except:
        print('Failed')
        db.rollback()
    cur.close()
    db.close()

def main(start):
    url = 'https://movie.douban.com/top250?start=' + str(start)
    html = get_one_page(url)
    parse_one_page(html)
    # print(parse_one_page(html).__next__())
    # for item in parse_one_page(html):
    #     print(item)
    #     #write_to_file(item)


if __name__ == '__main__':
     for i in range(10):
         main(i*25)
    #多进程抓取
    # pool = Pool()
    # pool.map(main,[i*25 for i in range(10)])l