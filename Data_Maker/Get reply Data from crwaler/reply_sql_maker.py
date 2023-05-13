import hangeulipsum_crawler

print("짧은 문장 크롤링 후 SQL 파일로 저장하기")
print("웹 크롤링을 시작합니다. 잠시만 기다려주세요...")
count = 450
print(count,"문장 크롤링 중...")

a = hangeulipsum_crawler.short_sentence(count)
print("웹 크롤링이 완료되었습니다. SQL 파일로 저장합니다...")

f = open("reply.sql", 'w',encoding="UTF-8")

f.write("insert into reply(content, article_id, user_email, create_time, update_time)\n")
f.write("values")

idx = 1
for item in a:
    if item == '':
        continue
    f.write("('" )
    f.write(item)
    f.write("', ")
    f.write(str(idx // 3 + 1))
    f.write(", '")
    f.write("test"+ str(idx%4+1)+"@test.com")
    f.write("',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)")
    
    if a.index(item) == len(a) - 1:
        f.write(";")
    else:
        f.write(",\n")    
    
    
    idx += 1



f.close()

print("SQL 파일 저장이 완료되었습니다.")