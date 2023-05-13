# Data Maker

## Description
파이썬을 활용하여 초기 데이터 값을 생성하는 파이썬 프로그램입니다.

## How to use
### Store Data 만드는 법
1. 아래 명령어를 통해 필요한 라이브러리를 설치합니다.
    ```bash
    pip intsall requests
    ```
2. `1.getFoodKr_API.py` 를 실행하여 `getFoodKR.json` 파일을 생성합니다.
3. `2.store_sql_maker.py` 를 실행하여 `store.sql` 파일을 생성합니다.
4. `store.sql` 파일을 MySQL에 적용합니다.

### 댓글 데이터 만드는 법
1. 아래 명령어를 통해 필요한 라이브러리를 설치합니다.
    ```bash 
    pip install BeautifulSoup
    pip install selenium
    ```
2. `reply_sql_maker.py.py` 를 실행하여 `reply.sql` 파일을 생성합니다.
3. `reply.sql` 파일을 MySQL에 적용합니다.
