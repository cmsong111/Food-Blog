import json

jsonFile = open('getFoodKr.json', 'r', encoding='UTF-8')

storeData = json.load(jsonFile)

items = storeData['getFoodKr']['item']

file = open('store.sql', 'w', encoding='UTF-8')
file.write(
    "insert into article(title, content, author_email, picture_url, create_time, update_time)\n")
file.write("values ")


a = 0
for item in items:
    a += 1
    file.write("('")
    file.write(item['MAIN_TITLE'])
    file.write("', '")
    file.write(str(item['ITEMCNTNTS']).rstrip())
    file.write("', '")
    file.write("test"+str(a % 4+1) + "@test.com")
    file.write("', '")
    file.write(str(item['MAIN_IMG_NORMAL']).rstrip())
    file.write("',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)")

    if a == len(items):
        file.write(";")
    else:
        file.write(",\n")


file.close()
