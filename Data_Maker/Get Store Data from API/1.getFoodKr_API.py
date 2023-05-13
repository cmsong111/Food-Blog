# Python3 샘플 코드 #

import requests

def getStoreJson(serviceKey:str):
    
    url = 'https://apis.data.go.kr/6260000/FoodService/getFoodKr'

    params = {
        'serviceKey': serviceKey,
        'pageNo': '1',
        'numOfRows': '150',
        'resultType': 'json'
    }

    response = requests.get(url, params=params)

    file = open('getFoodKr.json', 'w+', encoding='UTF-8')
    file.write(response.text)
    file.close()


# input your service key
getStoreJson('P85FKUFu2kJIbADd5Sf2NMcuhK9sGMcciPLj3s0tm+tOG9SBwS0Dk6t5dkUnl0Un7EA/5TzGsbI/2fV+cmA4/Q==')