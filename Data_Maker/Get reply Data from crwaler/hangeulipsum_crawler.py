import time
from bs4 import BeautifulSoup as bs
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select


def short_sentence(count :int = 450):
    url = "http://hangul.thefron.me/"
    driver = webdriver.Chrome()
    driver.get(url)

    result = []

    page_url = driver.current_url

    time.sleep(1)

    soup = bs(driver.page_source, 'html.parser')

    driver.find_element(By.ID,'paragraphs').clear()
    driver.find_element(By.ID,'paragraphs').send_keys('1')

    driver.find_element(By.XPATH,'//*[@id="length"]').send_keys('short')

    select = Select(driver.find_element(By.XPATH,'//*[@id="length"]'))

    select.select_by_index(2)
    select.select_by_visible_text('짧게')
    select.select_by_value('short')


    for i in range(count):
        time.sleep(0.1)
        driver.find_element(By.XPATH,'//*[@id="generate_ipsum"]/div[2]/div/input').click()
        reply = driver.find_element(By.XPATH,'//*[@id="ipsum_result"]')
        result.append(reply.text)
        print(i+1,"/",count,"번째 문장 크롤링 완료", (i+1)/count*100,"%")

    return result

