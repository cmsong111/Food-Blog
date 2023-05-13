insert into users(email, account_non_expired, account_non_locked, credentials_non_expired, enabled, nickname, password, username, image_url)
values ('test1@test.com', 1, 1, 1, 1, '람머스기니', 'test1', '람머스', 'https://cdn-icons-png.flaticon.com/512/14/14660.png'),
       ('test2@test.com', 1, 1, 1, 1, '폭풍저그 홍진호가 간다!', 'test2', '홍진호', 'https://cdn-icons-png.flaticon.com/512/3135/3135789.png'),
       ('test3@test.com', 1, 1, 1, 1, '간다 드래프트~!', 'test3', '형독',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-WUx40RcbMrWzkDttvsv2_JkDqm0UezjQWw&usqp=CAU'),
       ('test4@test.com', 1, 1, 1, 1, '중다이', 'test4', '이중대',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoo3O4glz71CnZPaFx9A6m-NWPr34TVGwxC4n9rvDGWvOEa9R2ram0lE5Iqzkhy3vkPJM&usqp=CAU');


insert into article(title, content, author_email, picture_url, create_time, update_time)
values ('만드리곤드레밥', '생 곤드레는 흐르는 물에 깨끗이 씻어서 식재료로 사용하면 좋다. 씻을 때 짓무르거나 시든 부분만 손으로 떼어내어 정리한 뒤 물기를 털어낸다. 건 곤드레는 끓는 물에 10∼15분
삶은 뒤 불을 끄고 10분 정도 물에 충분히 불러준다. 그 후 깨끗한 물로 씻어 이물질이 없도록 하고 용도에 따라 먹기 좋은 크기로 잘라준다. 줄기가 억센 곤드레를 수 시간 물에 담가 불리면 연하게
먹을 수 있다. 만져봐서 지나치게 억센 줄기는 미리 제거하는 것이 좋다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191209162810545_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('만호갈미 샤브샤브', '샤브샤브, 수육, 구이 등 다양한 방식으로 갈미조개를 요리하는 갈미조개 전문 식당. 국물이 맛있기로 유명한 이 곳은 갈미샤브샤브와 갈미수육이 대표메뉴이다.', 'test3@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20191216135832825_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('민물가든', '30년간 운영해온 생선찜전문점으로, 전통방식인 나무통을 사용하여 조리하는 것이 특징이다. 20가지 이상의 재료로 만든 양념을 사용하는 이 곳은 묵은지 붕어조림과 붕어찜이 대표메뉴
이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191217101816206_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('부흥식당', '영도의 유명한 제주 자리돔전문점으로 싱싱한 자리돔과 직접 만든 양념장의 맛이 무척 잘 어울린다. 당일 판매 할 수 있는 한정된 양만 판매하고 있는 이 곳은 제주갈치 요리로도 유명하
다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191217113924538_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('가야할매밀면', '유명한 밀면전문점으로, 밀가루에 옥수수 전분을 섞어, 다른 밀면전문점들보다 더 탄력있는 면이 특징이다. 육수는 돼지뼈와 소뼈에 각종 야채와 여러 한약재를 섞어 만들고, 사이드
 메뉴인 만두도 인기 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191217201857896_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('국제밀면', '부산의 수많은 밀면전문점 중에서도 가장 유명한 식당 중 한 곳으로, 소 사골만을 사용한 육수 등 독창적인 방식의 밀면을 만들고 있다. 보통 기계로 잘려진 편육이 고명으로 올려지는데
, 이 곳은 손으로 일일이 얇게 찢은 양지머리 고기가 올려지는 것이 특징이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191217202633906_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('물꽁식당', '59년째 3대를 이어 운영해온 전통 있는 아귀요리전문점으로 신선한 아귀를 사용해 아구찜, 수육, 탕을 만든다. 자극적이지 않은 담백한 맛의 아구찜이 대표메뉴로 오래되었지만 청결한
가게가 인상적이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191218094154651_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('부산명물횟집', '1946년부터 운영해 온 무척 유명한 횟집으로 여러 유명인사들의 단골집이기도 하다. 광어회 한 접시에 고기뼈를 푹 고아서 만든 진하고 담백한 맑은 국과 여섯 가지 밑반찬이 나오는
 회정식이 인기메뉴이다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191218095111181_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('원조한양족발', '35년 간 국내산 돼지 족을 사용하여 족발을 만들고 있는 유명한 족발전문점으로, 하루 2번 매장에서 삶은 신선하고 싱싱한 족발 맛으로 유명하다. 고기를 얇게 썰어 맛과 식감을 살
린 족발과 냉채 족발이 대표메뉴', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191218102958937_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('이재모피자', '30여년을 운영 중인 피자전문점으로 부산에서 피자가 대중화된 시기를 생각하면 상당한 전통을 자랑하는 유명한 곳이다. 국내산 임실치즈를 사용한 푸짐한 토핑의 피자가 특징이며, 변
함없는 맛을 지키고 있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191218103511820_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('거대갈비', '최상등급의 고기와 최고의 원재료만을 사용한다는 한우숯불구이전문점으로, 깔끔한 실내와 친절한 점원들이 인상적이다. 최상등급의 한우인만큼 가격도 높은 편이지만, 직원이 고기를 구
워주는 등 만족도가 높은 식당이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219093030634_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('금수복국 본점',
        '부산에서 가장 유명한 식당 중 한 곳인 46년 전통의 복어요리전문점으로, 우수한 식재를 현지에서 엄선하여 공수하고, 모든 찬류 및 장류와 김치, 양념 등을 직접 만들어 사용한다. 특히 외국인 관광객들이 많이 찾는 곳으로도 유명하다.',
        'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819172845727_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('다온', '한옥의 전통적인 모티브를 활용한 인테리어가 인상적인 한정식전문점으로, 토속적인 소품 으로 장식된 별실이 마련되어 있어 격식 있는 모임의 장소로도 많이 찾는 곳. 한약재와 제철 음식
재료를 활용해서 만든 한식 요리를 곱게 담아 코스로 내는 한정식이 인기', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219100305084_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('동백섬횟집', '해운대 그랜드호텔 인근에 있는 자연산 활어회 전문 횟집으로, 생선회를 주문하면 문어숙 회, 멍게, 전복, 가자미구이, 새우튀김 등의 다양한 밑반찬과 식사 후 매운탕 등의 요리가 함
께 제공된다. 대부분의 생선은 시가에 따라서 가격이 변동된다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818125906889_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('르꽁비브', '부산의 유명베이커리인 옵스에서 런칭한 전통 프렌치 레스토랑. 프랑스인들에게 프렌치 퀴진을 가르쳐온 셰프의 전통 현지 요리법으로 사계절 제철 식재료를 사용한 다양한 프렌치코스요
리를 선보이고 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219101750249_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('문스시', 'TV프로그램을 통해 소개된 유명 쉐프가 운영하는 일식전문점으로, 기대를 충족하는 수준 있는 요리들과 깔끔하고 세련된 인테리어가 특징이다. 쉐프가 추천하는 음식으로 구성되는 오마카
세 스시 코스가 특히 유명하다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818130348030_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('예이제', '해운대 해변인근에 위치한 한정식전문점으로, 가족모임이나 손님 대접 등으로 많이 찾는 곳이다. 주인이 직접 고른 제철 식재료와 지인이 운영하는 농장에서 키운 채소를 사용하는이 곳은
먹는 것이 고민스러울 정도로 예쁜 음식이 특징이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818133818412_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('원조석대추어탕', '입구를 들어서면 가득 쌓인 장작과 아궁이에 올려 진 커다란 무쇠솥이 눈에 들어온다.유명한 추어탕전문점인 이 곳의 추어탕은, 강한 화력으로 오래 끓여 부드럽고 풍부한 맛이 특
징으로, 논고동무침과 가오리찜도 인기 있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219104936271_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('원조할매복국', '‘복국촌’으로 알려진 미포 지역의 대표적인 복요리 전문점으로, 부산 향토 음식점 31곳 중하나이다. 복어를 사용한 맑은 탕인 복지리가 대표메뉴이며, 복어죽과 수육, 복불고기와 복
어찜 등의 요리도 맛볼 수 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219134018171_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('젠스시', '해운대의 유명 일식전문점으로, 명인 인증서를 받은 오너 쉐프가 운영하며, 주방 분위기가 엄격하고, 위생에 무척 신경을 쓰는 것으로도 유명하다. 열 가지의 초밥과 함께 미소시루, 달걀
찜, 튀김 등으로 구성 된 코스요리가 대표메뉴', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219135236542_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('옛날 오막집', '1958년부터 운영하고 있는 유명한 내장구이전문점으로 오랜 세월 사랑받고 있는 곳이다. 이 곳의 내장구이는 전통만큼이나 각별한 맛을 자랑하는데 함께 제공되는 장아찌와 나물들을
곁들여 먹으면 또 다른 맛을 즐길 수 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219141858821_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('평안도족발', '30년 넘게 한자리에서 운영해온 전통 있는 족발전문점으로, 이 지역 사람들에게 오래 사랑 받아온 곳이다. 오래된 식당답게 족발 특유의 냄새가 없는 깔끔하고 균형 잡힌 족발의 맛이
특징이며, 냉채족발과 마늘족발 등의 메뉴도 인기 있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219141936064_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('한우숯불양곱창', '해운대 중동역 인근의 양곱창 전문점인 이 곳은 특히 소의 첫 번째 위인 특양 양념구이가 유명하다. 주문과 동시에 특제양념을 발라, 점원이 구워주는 이 곳의 특양 구이는 무척
부드 러우면서도 살짝 탄력 있는 식감이 특징이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819165333332_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('쌍둥이돼지국밥', '식사시간에는 길게 줄을 선 모습을 볼 수 있는 유명한 식당으로, 부산의 수 많은 돼지국밥 전문점 중에서도 손에 꼽히는 식당 중 한 곳이다. 아주 부드러운 돼지고기수육이 유명하
다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219143010570_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이층집 564-9', '심플하고 모던한 인테리어가 인상적인 경양식전문식당으로, 등심 돈가스는 고소한 브로콜리 크림스프와 신선한 생 등심 돼지고기 커틀렛과 계절 샐러드가 함께 나온다. 바삭한 돈가
스와 특제소스의 밸런스가 훌륭하다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219153031872_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('초원복국 대연본점', '무척 유명한 복어요리전문점인 이곳은 50년 경력의 일식요리사인 아버지와 부산 최초의 특수조리사 복어자격증 소지자인 아들이 2대째 경영하고 있는 곳으로, 언제나 많은 손님
들로 북적이는 곳이다. 최상급의 복어요리를 만날 수 있는 곳이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191219160045041_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('석화한정식', '차려지는 음식 하나하나가 먹기 아까울 정도로 섬세하게 담겨져 나온다. 격식있는 모임의 장소로도 유명한 고급한정식전문점으로, 버섯탕수와 전복초가 나오는 고향한정식과 관자숙 회
와 갈비찜 장어구이가 나오는 어머니한정식이 대표메뉴.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220513092736141_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('함경면옥', '30년 장인의 솜씨로 만든 냉면의 맛은 비교할만한 대상이 드물다. 부산에서 가장 유명한 냉면전문점 중 한 곳으로, 계절을 가리지 않고 항상 많은 사람들이 찾아오는 것이 이곳의 변하지
 않는 맛을 증명하고 있다', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512102852754_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('영변횟집', '뼈와 함께 먹는 잘게 썬 세꼬시가 특히 유명한 생선회전문점으로, 도다리, 광어, 우럭, 돌돔, 농어 등 다양한 활어를 철에 따라 즐길 수 있다. 특히 가자미나 광어를 이용한 세꼬시가 인
기 메뉴로 회를 주문하면 상을 꽉 채우는 반찬과 해산물 등이 함께 제공된다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818134302422_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('방코', '특이한 외관의 이 건물은 화덕에 구운 피자와 파스타를 만드는 곳이다. 신선한 재료와 새로운 조리법을 사용하여 풍부하고 담백한 맛을 내는 것이 특징이다. 트러플로 향을 낸 피자와 블루치
즈를 사용한 피자가 대표메뉴이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818100408773_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('얼크니손칼국수(기장본점)', '간단히 준비된 샤브샤브를 먹은 후 직접 면을 넣고 조리해 먹는 칼국수 가격에 비해 푸짐한 재료들이 특징이다. 먼저 샤브샤브를 먹고 그 국물에 칼국수를 만들어 먹고
나면, 점원이 볶음밥을 만들어 준다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819144753937_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('곤국', '곰탕전문식당인 이 곳은 오래 끓여 부드러운 고기와 맛이 진한 국물이 특징으로, 밥을 말아서 나오지 않고, 갓 지은 솥밥이 따로 제공된다.', 'test1@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819150211450_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('다이닝센 부산본점', '패밀리레스토랑 다이닝센은 직접 만드는 소스들을 사용하고, 비교적 저렴한 가격에 비해 높은 수준의 음식들이 제공된다. 행사를 위한 시설과 공간도 잘 준비되어 있다.', 'test2@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20200820090928003_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('오륙도 가원', '건축상을 받은 아름다운 외관과 잘 가꾸어진 넓은 잔디정원이 인상적이다. 이 곳은 유명한 한우숯불구이 전문식당으로, 제공되는 음식과 서비스 등 모든 것이 무척 고급스럽다.', 'test3@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818151745396_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('한우랑', '한우 숯불구이 전문점으로 모든 메뉴는 국내에서 생산된 질 좋은 재료만 사용해 만들어진다. 한우는 특히 굽는 솜씨에 따라 맛의 차이가 크게 나는데, 이 곳은 숙련된 점원이 고기를 구워
준다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818152932317_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('해남식당', '김치요리전문식당인 이 곳은 배추산지로 유명한 해남의 배추를 사용 하여, 오랜 시간 숙성시킨 묵은지를 사용하는 것이 특징이며, 다양한 김치요리를 먹을 수 있다. 해남묵은지에 대한
높은 자부심을 가지고 있다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818153601185_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('금강만두', '찾기 힘든 골목에 위치해 미식가들만 찾아가는 숨은 가게였던 이 가게는 현재 사람들의 왕래가 많은 자리의 큰 점포로 옮겨 운영하고 있다. 만두가 맛있기도 하지만, 사실 이 곳은 매우
면서도 깔끔한 맛의 육개장이 더욱 유명한 특이한 식당이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818170548384_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('고을산채', '2006년부터 운영해온 한식당으로, 모든 반찬들을 주인이 직접 만든다. 점심에는 제철반찬이 함께 제공되는 산채정식 비빔밥을 먹으러 오는 사람이 많으며, 저녁에는 소고기버섯전골과 곱
창전골이 인기 있다. 저렴한 가격에 푸짐한 식사를 할 수 있는 곳', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200818175032095_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('석화정', '18년간 운영해 온 굴요리 전문점으로, 재철 생굴, 굴구이, 굴튀김, 굴파전, 굴김치 등 굴을 이용한 다양한 음식들을 즐길 수 있다. 특히, 대표메뉴인 굴국밥은 신선한 자연산 굴을 사용 하
여, 깔끔하고 풍부한 맛으로 인기 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819094049234_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('북경', '연산동의 중심가골목에 위치한 중식당으로 요리를 전문으로 하여 이 지역 회사원들이 회식장소로도 자주 찾는 곳이다. 모든 메뉴의 수준이 높은 곳이기도 하지만, 특히 짜장면이 맛있기로 유
명하다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819172514790_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('연산낙지해물탕', '해물탕은 원래 푸짐한 해산물들이 담겨 나오는 음식이지만, 이 곳의 해물탕은 음식을 잘모르는 사람도 싱싱하다는 것을 알 수 있는 해산물들이 뚜껑이 닫히지 않을 정도로 담겨 나
온다. 해물탕이 익을 때쯤 살아있는 낙지를 손질해 넣어주는 것이 특징이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819103408604_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('웰빙여행', '부산시청 근처의 칼국수와 만두전문점으로, 매생이 칼국수, 들깨 칼국수 등 조금 특별한 칼국수와 함께 푸짐한 만두전골을 먹을 수 있는 곳이다. 만두는 매일매일 직접만들며, 여름에는
직접 갈아만든 콩칼국수를 판매하기도 한다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819170519954_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('옻바다전복 삼계탕', '연산동 중심가골목에 위치한 삼계탕전문점으로, 대표적인 보양음식인 옻나무삼계탕에 전복을 추가하여 먹을 수 있는 것이 특징이다. 식전주로 옻술이 제공되는 이 곳은 TV프로
그램에도 소개 된 유명한 식당이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819105118416_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('참참부자', '연산동 중심가골목에 위치한 일식코스전문점으로, 참치와 자연산회를 맛볼 수 있는 곳이다. 코스요리를 전문으로 하는 곳인 만큼 회는 물론이며, 음식 하나하나가 높은 수준이다.점심한
정메뉴를 찾는 손님도 많은 곳', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819105753999_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('팔미초밥', '부산의 대표적인 일식전문점 중 한 곳으로, 상업지역인 이 지역에서도 손님을 대접하기 좋은 곳으로 유명한 식당이다. 30년 경력의 오너쉐프가 운영하고 있으며, 이 곳의 코스요리는 가
격에 비해 높은 만족도를 자랑한다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819110257649_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('남촌', '청정지역인 지리산 아래 산청의 흑돼지만 사용하고 있는 믿을 수 있는 돼지구이전문점이다. 사용되는 흑돼지 자체가 일반적인 돼지고기와 식감과 맛의 차이가 많이 나며, 껍데기가 붙어 있는
 오겹살 흑돼지 고기를 쓰는 것이 특징이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819154352300_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('북경의자전거', '본격적인 중국풍의 인테리어가 특색있는 이 중식당은 중국인 쉐프들이 요리하고 있는 것으로 유명하다. 사용되는 면은 전통방식인 수타로 만들고, 다양하고 많은 종류의 요리들을 만
드는 단골 손님이 많은 가게이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200820091146813_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('식당 3선(덕천점)', '숯불구이, 파삼겹구이, 밀면 등을 맛볼 수 있는 식당인 이곳은 나이와 취향에 관계없이 즐길 수있는 대중적인 맛이 특징으로, 넓은 공간을 가지고 있어 가족외식장소로 인기 있
다. 메인요리인 숯불구이는 조리되어 제공되어서 먹기 편하다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819154140644_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('함경면옥', '22년의 전통을 가지고 있는 함흥냉면 전문점으로, 메뉴에 들어가는 모든 재료들을 직접 만든다. 고구마 전분 특유의 탄력과 쫄깃함을 가진 함흥식 냉면 사리가 특징이며, 진한 육수가 맛
있는 물냉면과 숙성된 가오리 회가 올라가는 회비빔면이 인기메뉴이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200820091029413_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('디에이블 송도점', '유명한 양식레스토랑인 디에이블의 분점으로, 가게 전체에서 보이는 멋진 바다풍경 속에서 특별한 식사를 할 수 있는 곳이다. 시그니처 메뉴인 피자는 페스츄리 도우를 사용해 촉
촉한 것이 특징이며, 특제소스를 사용해 매콤하면서 고소한 파스타도 인기 있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819132345743_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('몽실종가돼지국밥', '감천문화마을 근처에 있는 돼지국밥전문점으로, 청결한 실내와 친절한 점원들이 인상적이 다. 사골뼈를 24시간 이상 푹 고아 만든 국물이 유명하고, 국밥에 들어가는 고기양과
고기 종류를 선택할 수 있는 것이 특징이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819132813484_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('식당 토성동', '의외의 장소에 자리하고 있는 아담하고 예쁜 인테리어의 덮밥전문점으로, 간단한 음식, 깔끔한 맛, 친절한 서비스로 유명한 곳이다. 모든 음식이 인기메뉴이긴 하지만, 손질과 숙성을
 거쳐 부드러운 맛의 한입 스테이크 덮밥이 대표메뉴라고 한다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819133843312_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청죽', '입구까지 이어진 근사한 정원이 멋진 일식코스요리전문점으로, 이 지역에서는 상견례 등격조 있는 모임의 장소로 많이 이용하는 곳이다. 비교적 비싼 가격의 식당이지만, 맛과 서비스 모두
충분히 만족스러운 곳이라고 한다. 일본식코스요리가 대표메뉴.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819134238418_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('편의방', '이 곳은 3대째 이어오는 중국만두전문점으로, 삼선만두가 유명한 곳이다. 주문과 동시에 만드는 삼선만두는 각종야채와 새우가 가득 차 육즙이 흘러넘친다.', 'test3@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819134644126_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('동원장수촌', '도자기 장인이 빚어낸 둥그런 뚝배기에 음식을 담아내는 보양음식전문점으로, 모임 등의 장소로도 인기 있는 곳이기도 하다. 한방녹두백숙이 특히 인기있는 메뉴로 황기 구기자 감초
등의 한약제와 녹두오리를 오래 삶아 보약 같은 국물과 부드러운고기가 특징이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819172146946_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('포항가자미물회', '소박한 느낌의 동네식당으로, 시원한 물회에 국수를 말아먹는 것으로 유명한 물회전문점이다. 갖은 양념에 무쳐진 회와 물회 육수가 따로 제공되며, 여름에는 신선한 토마토에 싸
먹고 겨울에는 김에 싸먹는 것으로 유명한 곳이다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819143114772_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('괘법쭈꾸미', '2007년 괘법동에서 시작한 이 지역의 대표적인 쭈꾸미요리전문점으로, 직접 만든 비법소스를 사용하여 매우면서도, 자꾸 먹게 되는 맛이 특징이다. 대표메뉴는 웰빙쭈꾸미이며, 단일메
뉴로 꾸준한 맛을 유지 하고 있는 것이 오랜 인기의 비결이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20200819161305335_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('삼진어묵', '삼진어묵은 1953년부터 3대 째 가억을 잇고있는 대한민국 대표 어묵 브랜드입니다.', 'test3@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20210415134915004_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('광명집', '20년이 넘게 대를 이어 운영 중인 아구찜/대구뽈찜 전문점으로 신선하고 품질 좋은 재료들로  찜요리를 만들고 있다. 대구뽈찜은 양파가 가득 올려 진 독특한 조리법이 사용되며,  두 가지
 찜 요리가 모두 인기 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210903144841845_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('명지첫집', '명지를 상징하는 식재료인 소금과 대파를 활용한 젓갈과 대파김치를 보쌈요리에 곁들였다. 기분이 좋아지는 푸짐한 한상차림의 보쌈정식과 쭈꾸미보쌈이 대표메뉴이다.', 'test1@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913092353076_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('드마히니 더블유스퀘어점', '부산의 유명 베이커리 옵스(OPS)에서 만든 두 번째 프렌치 레스토랑으로 파리 현지 카페의 자유로운 분위기를 살린 공간이 특징이며, 소박하고 정성 가득한 프랑스 요리
들과  스페셜티 등급의 다섯 가지 브루잉 커피도 맛 볼 수 있는 곳이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913095514659_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('명품외식 육면정', '다양한 연회석과 어린이 시설, 넓은 주차장을 가지고 있는 큰 규모의 구이전문식당으로 질 좋은 소고기와 신선한 야채들을 제공하고, 최고등급의 위생수준을 인증 받았다. 단체모
임이나 가족외식하기 좋은 곳 이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913100010495_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('호포갈비 문현점', '1층의 정육판매점에서 구입한 고기를 2층의 식당에서 구워먹는 방식의 식당으로, 깔끔한 인테리어와 수준 높은 청결상태를 자랑한다. 판매점에서는 질 좋은 육류를 취급하고 있으
며, 다양한 부위의 한우를 직접 고를 수 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913101952443_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('평산옥', '4대에 걸쳐 운영하고 있는 100년 전통의 돼지수육전문식당으로 돼지수육과 수육 삶은 육수에 말은 국수가 유명하다. 국내산 신선한 고기로 만드는 육수는 맑은 국물 색과 담백하지만 진한
맛을 낸다. 100년을 이어온 자부심에 어울리는 맛이다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913104329974_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('공감식당', '보리를 사료로 키운 돼지를 전문가가 직접 선별, 숙성하여 전문교육을 받은 직원들이 직접 구워주는 구이전문점으로, 삼겹살과 구워먹는 치즈가 이 곳의 인기메뉴이다. 다양한 사이드 메
뉴도 준비되어 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913110103549_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('다옴 (서면 삼정타워점)', '가볍게 즐길 수 있는 한식메뉴를 선보이는 식당으로 남해안멸치로 만드는 육수와 과일을 첨가하여 만든 숙성양념 등 음식준비에 많은 정성을 들인다. 차돌박이가 토핑 된
비빔국수와 비빔밥이 대표메뉴이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913110833421_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('당감밀면', '지역민들이 추천하는 밀면전문점으로 육수와 면·양념에 이르기까지 모든 재료를 주방장의 독자적인 비법으로 만들어 특징적인 밀면의 맛을 자랑한다. 직접 만드는 손만두도 담백한 맛으
로 인기 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913111405621_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('더브릭하우스', '번잡한 번화가 사이에 예쁜 벽돌집이 보인다. 이곳은 화덕피자가 맛있기로 유명한 이탈리안 레스토랑으로, 클래식한 공간과 클래식한 음악 그리고 이탈리안 음식과 어울리는 다양한
와인이 준비되어 있다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913111907192_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('버거샵', '직접손질하는 1등급 한우 패티와 매일 아침 구운 브리오슈 번으로 만드는 수제버거전문점으로, 외국인 손님들도 많이 찾는 곳이다. 독특한 인테리어를 즐기며 다양한 소품들도 구입하고 볼
 수 있는 가게이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913112340644_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('소수인', '일식을 모티브로 한 새로운 스타일의 요리를 만들고 있는 일본식주점으로 영업을 시작한지 얼마 되지 않아 항상 사람들이 가득한 곳이 되었다. 개성강한 요리들은 술안주로도 식사로도 잘
어울린다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913112639309_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('양평칼국수', '다대포 해수욕장 인근의 식당으로 20년 경력의 칼국수 장인인 주인이 직접 반죽한 숙성면에 국산 배추로 매일 매일 담는 김치가 매력을 더한다. 여름에만 맛 볼 수 있는 냉칼국수, 냉
콩칼국수 등의 한정메뉴들도 무척 인기 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913114940489_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('영진돼지국밥', '유명한 돼지국밥 전문점 중 한 곳으로, 항상 많은 사람들이 찾아오는 곳이다. 돼지 특유의 냄새를 제거하여 깔끔하고 담백한 맛을 자랑하며 수육과 두부, 볶음김치가  함께 나오는
수육백반이 무척 인기 있다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913131201409_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('신흥반점', '2대째 운영 중인 신흥반점은 서구에서 55년 동안 화교 가족들이 운영해오고 있는 곳으로, 중국 현지의 식당 같은 분위기의 가게에서 다양한 중국요리를 맛 볼 수 있다. 짬뽕국물과 깐풍
기가 이 곳에서 추천하는 인기 메뉴이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913133410983_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('동원 숯불 갈비', '한적한 골목길에 숨겨져 있는 이 돼지갈비전문점은 38년간 숯불돼지갈비 한 메뉴로 이 장소를 지켜온 식당이다. 쉽게 찾기 힘든 위치에 있지만 친근하고 꾸준한 맛으로 많은 단골
고객들이 찾아오는 곳', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913141552746_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('도날드 즉석 떡볶이', '지역민들에게 추억의 장소인 이 곳은 35년간 운영해온 유명한 즉석떡볶이 전문점으로 해물육수와 고추장 소스를 사용하여 독특한 맛을 자랑한다. 후식으로 판매하는 뻥크림을
먹기 위해 찾아오는 사람들도 많다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913142012236_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('영도우', '부산항이 한눈에 들어오는 장소에 위치한 피자전문점으로 자체개발한 도우로 만든 테두리가 없는 사각형의 디트로이트식 피자가 대표메뉴이다. 임실치즈를 아낌없이 사용하여 풍부한 치즈
의 맛을 즐길 수 있다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913152113856_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('함흥보쌈', '냉면전문점으로 시작하여 50여년을 운영 중인 보쌈전문점으로 싱싱한 고기를 사용하고 부드러운 맛으로 유명하다. 오랜 전통을 자랑하는 냉면도 인기메뉴이며 어떤 메뉴를 주문하든 만족
스러운 양이 제공된다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913152733413_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('원산면옥', '60여년의 전통을 가진 냉면전문점으로 3대째 운영하고 있는 무척 유명한 곳이다. 한우와 국내산 생 돼지고기, 생닭을 사용하고 10여 가지 재료가 들어간 육수로 만든 냉면은  변하지 않
는 맛을 자랑한다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913153317155_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('개미집신도시점', '부산의 대표적인 낙지요리전문점인 개미집의 분점으로, 본점에 뒤쳐지지 않는 맛을 선보이고 있다. 본점과 같이 낙지볶음, 낙지새우볶음, 낙지곱창볶음 등의 요리들이 모두 인기
있으며, 불고기낙지버섯전골과 곱창전골을 찾는 손님도 많다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20210913153737388_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('오리한상', '청둥오리를 사용한 소금구이와 급속 냉동된 오리를 아주 얇게 슬라이스한 불고기가 모두 인기있는 이곳은, 커다란 창을 활용한 깔끔하고 여유로운 공간과 함께 개별룸도 운영하고 있어
가족외식하기에도 좋은 곳이다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220510145207922_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('오,유미당', '카페처럼 예쁜 공간에 돈카츠와 쌀국수라는 이색적인 조합의 메뉴를 가진 곳으로, 처음 보면 조금 당황스러운 모습을 가진 토마호크 돈카츠가 가장 인기 있다고 한다. 쌀국수의 수준도
높아 여러 취향을 다 만족시키는 곳이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220510151352637_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('만포밀면', '매장에 들어서면 진한 육수냄새가 맛을 기대하게 하는 이곳은 가야식 밀면을 만들고 있는 곳으로, 95년 가게를 연 이후 매일 그 날 판매할 밀면을 시식하는 것으로 시작한다고 한다. 변
하지 않는 맛은 언제나 기쁘다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220510161651267_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('맛사랑채', '생선구이가 포함된 12가지의 반찬과 함께 매일 다른 국이 제공되는 이곳의 정식은 집밥 보다 더 집밥 같다는 평을 듣고 있다. 인심 가득한 밥상을 만나기 위해 먼 곳에서 찾아오는 손님
들도 많다고 한다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220510170244967_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('우정까망촌돼지', '구이전문점인 이곳은, 어린 시절 시골에서 먹던 돼지고기의 맛을 재현하기 위해 청정지역에서 키운 돼지를 공수해온다고 한다. 솥뚜껑에 구워먹는 것이 특징인데 맛도 맛이지만,
구워지는 모습이 정말 참기 힘들다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220510173949671_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('유메', '8종의 하이볼, 27종의 청주와 국내산 증류주 등 다양한 술과 그에 어울리는 다양한 안주들이 준비되어 있는 일본식주점이지만, 돈카츠전문점이라 알고 있는 사람들도 있을 만큼 오너쉐프가
직접 손질해 만드는 돈카츠가 유명하다고 한다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220510175614552_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('금랑횟집 광안리 본점', '수변공원 회센터에 자리한 횟집으로 메인요리인 회와 함께 제공되는 음식들이 다양하고 수준이 높아 회를 즐기지 않는 사람들도 충분히 즐길 만한 곳이다. 광안대교의 전경
이 보이는바다풍경으로 유명한 곳이기도 하다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220510180602206_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('난파센', '좋은 재료를 직접 손질하고 직접 만든 특제 소스를 사용해 인기 높은 튀김덮밥전문점으로 밥과 어울리는 튀김을 만들기 위해 무척 많은 연구를 한다고 한다. 밥 위에 올려진 갈색의 튀김이
 특징적이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511104527053_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('화국반점', '43년 전통의 중식전문점으로 간짜장이 특히 유명한 이 곳은, 전통적인 방식의 요리로 외국인들이 많이 찾는 곳이기도 하다. 신세계와 범죄와의 전쟁 등 영화촬영지로도 유명하다.', 'test1@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511105704117_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('로얄경양식&스테이크 광안점', '광안리의 바다풍경을 즐기며 식사를 할 수 있는 패밀리레스토랑으로 가격에 비해 높은 수준의 음식과 서비스를 제공하고 있다. 조리하는 모습을 직접 볼 수 있는 오픈
주방을 운용하고있으며, 바다를 충분히 즐길 수 있는 실내 환경이 인상적이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511111431528_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이정태 본참치', '전국의 참치 매니아들이 찾아오는 유명한 참치전문점으로, 조리명인인 오너쉐프가 운영하고 있는 곳이다. 당일재료는 당일소진하고 있으며, 노인들을 위한 행사를 개최하는 등 지역
사회에 기여하고 있는 식당이기도 하다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511111651566_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('무궁화 식당', '할머니집에 놀러온 것 같은 느낌을 주는 이곳은 전골요리로 무척 유명한 식당으로, 직접 만든 커다란 만두를 사용한 만두전골이 특히 인기 있다. 신선한 야채를 사용하는 이곳은 항상
 변함없는 맛으로 기억되는 곳이기도 하다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511113221248_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('어가초밥', '부산 최대 수산물시장인 자갈치시장과 인접한 일식전문점으로 빠르게 재료를 공수하여 신선한 음식을 제공하고 있다. 대부분의 좌석이 독립된 룸으로 운영되고 있어 편안하게 식사를 즐
길 수 있기도 하다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511113442878_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('배꼽시계', '약선 요리를 추구하여 수술 후 환자들도 자주 찾을 만큼 건강한 음식을 만드는 오리요리전문점으로 계절재료를 사용해 장아찌를 담고 2년 이상 숙성시킨 김치를 사용한다. 오리백숙은 시
간이 많이 걸리니 2시간 이상 전 예약이 필수다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511115114884_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('배가왕', '매일 2시간씩 육수를 끓이고, 직접 담은 김치를 준비한다. 기본에 충실한 음식을 만들기 위해 노력한다는 칼국수전문점으로, 당근을 갈아 넣어서 밀가루 냄새가 나지 않는 면이 특징이다.
기본은 언제나 정답이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511115634861_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('삼정횟집', '물회로 유명한 이곳은, 점심시간에 이 지역에 있다면 꼭 찾아야하는 식당 중 한곳이다. 매운탕이 함께 제공되는 이곳의 식사메뉴는 특히 직장인들에게 인기가 많으며, 당일 활어만 사용
하여 신선도가 높은 것이 특징이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511115844167_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('변소영 백년밥상', '장류부터 밑반찬까지 모두 직접 장만하고 천연조미료만 사용해 맛을 낸다. 직장인들은 물론이고, 입맛이 까다로운 시장상인들과 외국인들도 자주 찾아 유명해진 한식점으로 청결
관리에도 무척 신경을 쓰고 있다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511130041847_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('사랑도 횟집', '매일 좋은 횟감을 선별해서 준비하고, 직접 만든 반찬들로 식탁을 채운다. 음식에 대해 정직하게 운영한다는 이곳은 단골이 많기로 유명한 횟집으로, 가격이 다소 높아 보이지만 음식
이 차려지면 오히려 저렴하다는 생각이 들게 한다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511131104127_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('삼송초밥', '부산에서 가장 유명한 일식전문점 중 한 곳으로 65년 이상의 역사를 가지고 있으며, 대를 이어 오는 손님들이 이곳의 변치 않는 맛을 보증하고 있다. 특히 김초밥으로 많이 알려져있기도
 한 곳이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511131839264_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('솔리보', '스승에게 전수받아 계승·발전시킨 토마토 소스가 특기라는 젊은 오너쉐프는, 스테이크에 쓰는 고기도 직접 정육하여 8시간 이상의 수비드 과정을 거쳐 만들고 있다. 햇살이 들어오는 단정
한 인테리어의 공간이 이름처럼 무척 따듯하게 느껴지는 곳이다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511132220417_ttiel',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('부산족발', '부평동 돼지족발골목에 위치한 족발전문점으로, TV프로그램으로도 자주 소개되는 유명한 식당이다. 이 지역은 부산의 향토음식인 냉채족발이 탄생한 곳으로도 유명한데, 부산족발도 담백
하고 탄력 있는 족발과 냉채족발이 유명하다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511132711170_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('시티바캉스', '한적한 주택가에 자리한 파스타전문점인 이곳은 스타일리시한 공간과 스타일리시한 음식으로 특히 젊은이들 사이에서 인기 높다. 도심 속 이색적인 공간에서의 바캉스를 경험하고 싶다
면 이곳을 추천한다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511133129967_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('PHOever Yum(포에버얌)', '현지 풍 인테리어의 매장으로 들어오면 동남아의 어촌마을에 있는 느낌이 드는 이곳은 육수와 소스 양념 등을 모두 직접 만들고 있는 베트남음식전문점. 아늑한 분위기로
연인과 가족들이 많이 찾는 곳이기도 하다', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511133523476_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('물레방아 즉석구이', '미식가들 사이에서 꾸준히 좋은 평가를 받고 있는 45년 전통의 구이전문점으로, 한우 안거미 부위를 안금무라는 별칭으로 판매해 더 유명한 곳이기도 하다. 명점으로 인정받는
곳답게 고기 선별에 무척 신경을 쓴다고 한다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511134126759_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('양귀빈 식당 3호점', '아직은 흔하게 보기 힘든 양고기구이전문점으로 카페를 해도 어울릴만한 인테리어가 인상적이다. 숙련된 점원이 고기를 구워주는 이곳은 일식을 전공한 오너가 많은 공부를 통
해 질 좋은 양고기를 장만한다고 한다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511135001245_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('고민끝에여기', '향이 강한 멕시코음식을 한국인의 입맛에 맞게 만들어내는 이곳은 매일 신선한 재료를 새로 준비하고, 새우를 주재료로 한 요리들이 많다. 고민 끝에 가게자리를 정했다는 의미의 이
름이 무척 독특하다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511135506636_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('명송초밥', '상업지역인 이 지역에서도 접대나 모임하기 좋은 곳으로 유명한 일식전문점으로, 수준 높은 음식에 어울리는 디테일한 플레이팅이 음식을 더욱 돋보이게 만든다. 2~3시간 숙성한 회를 제
공하고 있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511140134038_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('다께', '범일동의 유명 일식전문점으로 오너쉐프가 직접 주재료를 장만하고 있으며, 미리 연락해 두면 원하는 회나 직접 낚시한 생선을 요리해 주기도 한다. 벽면 가득한 유명인들의 사인이 이곳의
맛을 보장하고 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511140420748_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('남포삼계탕', '광복로패션거리 근처에 있는 이곳은 50년 이상 운영해 온 유명한 삼계탕 전문점으로, 대표메뉴인 삼계탕은 뱃속에 찹쌀과 인삼, 밤, 대추를 채워 넣은 닭 한 마리를 육수에 넣고 뚝배
기에 끓는 채로 내어준다. 전기구이도 인기 있다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511141051338_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('지에이비148', '연인들이 많이 찾는다는 다이닝펍으로 깔끔한 실내와 야외테라스가 인상적이다. 이곳의 시그니처 메뉴인 스테이크는 250도로 달궈진 돌 위에 올려져 레어부터 웰던까지 모든 굽기의
스테이크를 맛볼 수 있어 인기 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511141322616_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('대수정', '40년 이상 운영하고 있는 한식전문점으로 직접 운영하는 농장에서 공수한 재료로 된장, 간장, 김치 등을 만들고 있으며, 질 좋은 한우를 사용한다. 솥밥과 함께 차려지는 가득한 밥상이 기
분 좋은 곳이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511141556325_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('목장원', '원래 소를 키우는 목장이었던 이 곳은 영도에서 가장 유명한 식당 중 한 곳으로, 식당과 카페 공원이 함께 있는 복합외식공간이다. 음식의 수준도 무척 높지만 이곳에서 보이는 바다풍경은
 정말 각별하다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511141757671_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('톤쇼우', '오픈 2시간 전부터 대기 줄이 있을 만큼 유명한 돈까스 전문점으로, 두툼하면서도 무척 부드러운 이곳의 돈까스는 참숯으로 훈연하여 놀라운 맛을 선사한다. 기다리는 손님을 위한 배려로
2층에 휴게공간을 운영하고 있기도 하다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511142349184_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그라치에', '모던한 인테리어의 이 작고 예쁜 이탈리안 레스토랑은 많은 사람들이 이태리음식을 쉽게 접하길 바라는 마음을 담아 운영하고 있다고 한다. 특히, 이곳의 감자뇨끼는 손님들이 추천하는
메뉴이다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511142715519_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('황해도', '깔끔하고 높은 수준의 음식들과 한국전통주를 함께 즐길 수 있는 한식주점인 이곳은, 비교적 낮은 가격으로 여러 가지를 맛볼 수 있는 주안상이 인기 있으며, 무엇보다 좋은 대접을 받았다
는 느낌을 주는 매력적인 곳이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511143741751_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('프라한', '빈티지한 느낌의 가구와 공간을 가득 메운 식물들이 영화 속 장면을 연상시키는 이곳은 샌드위치의 빵과 스튜의 토마토소스 등을 직접 만드는 브런치카페로, 언제나 편안한 분위기를 즐기
러 오는 손님들로 가득하다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511145040294_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('동촌황정순수육전골', '자극적이지 않지만 풍부한 맛의 국물요리가 특징인 곳으로, 미리 삶아 기름을 제거한 고기를 두껍게 썰어서 사용해 식감이 좋다. 모든 재료는 국내산을 사용하고 단 두 가지
메뉴만 정성껏 준비하고 있다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511153102499_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('소우닭계', '이름처럼 소와 닭을 사용한 한식요리를 전문으로 하는 곳으로, 오너쉐프의 비법으로 만든 부드러운 갈비찜이 유명하다. 밑반찬까지 직접 장만하고 있는 이곳은 혼자서도 갈비찜을 먹을
수 있는 메뉴가 준비되어 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511154322467_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('양지추어탕', '커다란 가마솥으로 끓인 추어탕에 농가에서 공수한 고춧가루를 사용하고, 직접 담은 김치를 사용하는 안심할 수 있는 식당이다. 저렴한 가격에 비해 놀라운 맛과 푸짐한 양의 음식이
제공되어 단골고객이 많다고 한다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511160051644_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('오스테리아비비', '이탈리아 요리학교 출신 쉐프와 나폴리피자 장인협회에서 인정한 피자욜로가 운영하고 있는 이곳은 평일 런치는 화덕피자만, 디너와 주말은 코스만 제공된다. 100% 예약제로 운영
하는 레스토랑으로 프라이빗한 공간에서 식사를 즐길 수 있다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511161310859_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('웅복', '부부가 운영하고 있는 복어요리전문점으로 식사에 돌솥밥이 제공되는 것이 특징이다. 직접 담은 김치를 사용하며, 당일 재료는 당일 소진하고 있는 이곳의 코스요리는 가격에 비해 놀라울 정
도의 음식들이 제공된다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511162214691_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('초량통닭', '1976년부터 40년이 넘게 운영하고 있는 이곳은, 이 지역에서는 모르는 사람이 드문 유명한 식당이다. 이곳의 육즙 가득한 프라이드치킨은 오랫동안 사랑받아온 메뉴로, 언제나 퇴근 후의
 직장인들이 만석을 이루고 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511163126270_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('코카모메 초량점', '초량 이바구길의 도심전망이 좋은 곳에 위치한 튀김덮밥전문점으로, 연령층에 관계없이 만족스런 식사로 인기 높은 식당이다. 모든 재료는 국내산으로 준비하고 당일재료는 당일
에 소진하고 있다', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511164125446_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('홍성방', '3대에 걸쳐 50년이 넘게 운영해오고 있는 이곳은, 부산차이나타운에서도 가장 유명한 식당 중 한 곳이다. 오래전부터 영주동 물만두 집으로 불렸을 만큼 물만두가 인기 있으며, 주말에는
지방에서도 찾아오는 단골손님들이 많다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511165119901_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('가두리닭숯불구이', '이곳은 소나 돼지처럼 닭을 6가지 부위로 구분하여 원하는 부위만 주문할 수 있는 독특한 방식의 닭구이전문점으로, 요리경영학과 출신의 오너가 야채와 생닭을 직거래로 공수하
여 재료의 신선도가 높다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511172410854_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('먹음직', '온천천 카페거리에 있는 구이전문점인 이곳은, 유통도 함께 하고 있어 언제나 신선한 고기가 준비되어 있다. 직접 숙성한 고기와 함께 모든 음식을 정직하고 정성스럽게 제공하고 있는 곳
으로 높은 평가를 받고 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511173540705_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('미미루', '유니크한 레시피로 인기 높은 중식당인 이곳은, 6시간 이상 숙성한 고기로 만든 탕수육과 물을 사용하지 않고 양파즙으로 조리한 짜장면이 특히 인기 있다. 식사류의 음식에는 모두 계란프
라이를 올려주는 것이 재미있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511174445294_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('밀보스79',
        '캐주얼한 분위기의 실내가 먼저 눈에 들어오는 이곳은, 파스타나 피자 등의 메뉴와 함께 술을 즐길 수 있는 다이닝펍으로, 비교적 부담 없는 가격으로 좋은 시간을 보낼 수 있는 곳이다. 직접 만든 면과 소스를 사용한 파스타가 특히 맥주와 어울린다고 한다.',
        'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220511175416697_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('순이네곱창', '대한민국 조리기능장인 오너쉐프는 밑반찬부터 주재료인 곱창의 손질까지 모두 직접 장만하고 있다. 솔잎을 사용하여 잡냄새를 제거하여 더 부드러운 맛을 가진 이곳의 곱창은명인이
준비한 세가지 소스와 만나 더욱 깊은 맛을 자랑한다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512092026544_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('세연정', '소갈비로 유명한 구이전문 패밀리레스토랑으로 청결한 공간과 높은 수준의 서비스를 자랑하는 이곳은, 직거래하는 향토 식자재와 직접 만든 된장, 유명한 산지에서 공수한 재료들을 사용하
여 정성들인 음식을 제공하고 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512093357835_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('조방낙지마당', '조방낙지라는 이름의 식당들은 대부분 보증된 맛을 가지고 있는데, 이곳 역시 보증된 낙지전문점이다. 이 지역에서 오랜 시간을 보내온 식당답게 단골손님도 많고, 다른 낙지전문점
에 비해 낮은 가격이 마음을 든든하게 한다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512094717830_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('초록담미역국', '미역국에 사용되는 한우는 비계와 힘줄을 직접 제거하고, 직접 만든 반찬과 양념, 그리고 매일 새로 담근 김치를 준비한다. 이곳은 집밥같은 음식을 준비하는 미역국전문점으로 자극
적이지 않은 맛으로 유명하다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512100320359_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('타이빈', '태국 정부로부터 Thai select 최고등급인 signature 인증을 받았다는 태국음식전문점으로, 태국인요리사가 준비하는 정통태국음식이 준비되어 있다. 태국으로 여행 온 기분을 느끼게 해주
는 인테리어가 무척 인상적인 곳이다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512101521175_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('경찰서 옆 초밥집', '18년 경력의 오너 쉐프가 모든 재료를 직접 만들고 손질한다. 매일 5시간씩 정성껏 준비한 재료와 알찬 구성 그리고 보증된 솜씨로 만들어 내는 초밥은 당신을 실망시키지 않는
다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512104118922_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('동백아가씨1961', '빈티지한 인테리어의 카페 같은 이곳은 놀랍게도 유명한 즉석떡볶이 전문점이다. 유명산지의 고춧가루를 사용하는 등 좋은 재료를 사용하고, 라면부터 돈까스까지 다양한 토핑을
추가할 수 있는 매력적인 곳이다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512105240390_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('로위버거', '100% 통새우로 만든 패티와 수제 와사비 소스로 맛을 낸 통새우버거가 인기메뉴인 이곳은 오리지널 레시피 개발과 독특한 분위기로 인기 높은 수제버거전문점이다. 매일 100개 한정 판매
라고 하니 서두르는 것을 추천한다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512110929592_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('장어촌', '부산에서 장어구이를 이야기할 때 항상 최고로 거론되는 곳 중 한 곳으로, 주문즉시 장만한 장어와 6시간을 끓여 만든 특제한방소스를 경험해 본다면 누구나 그 사실을 인정할 수밖에 없을
 것 같다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512112108020_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('전통음식점 원양', '좋은 재료로 직접담은 김치와 밑반찬, 시골집에서 공수한 장류 및 장아찌들을 사용하여 30년이 넘게 꾸준히 직장인들의 사랑을 받아온 곳으로, 미식가들 사이에서 특히 평이 좋은
 곳이라 한다. 연회를 위한 단체석도 마련되어 있다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512113115093_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('항정살구공탄', '주문과 함께 썰어내는 고기는 포를 뜨는 방식으로 썰어 더 좋은 식감을 자랑한다. 된장찌개로도 유명한 이곳은 오직 항정살만 전문적으로 취급하고 있는 구이전문점으로 운이 좋다면
 유쾌한 이벤트도 경험할 수 있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512114353372_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('금용', '1960년부터 운영해온 중국만두전문점으로 찐돼지껍질과 사태, 소꼬리 살로 소를 만드는 산둥식 만두를 만들고 있다. 준비해둔 재료가 언제나 당일 소진이 될 정도로 인기가 높다.', 'test4@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512130126929_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('웅천집', '1964년부터 3대째 운영하고 있는 전통 있는 식당으로, 3년 숙성 초장으로 만든 특제소스와 먹는 향어회가 특히 유명하지만, 고민 끝에 결국 장어구이와 매운탕까지 모든 메뉴를 먹게 된다
는 무서운 곳이기도 하다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512131313725_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('이종임 전복뚝배기', '전복요리를 전문으로 하는 이 곳은 신선하고 부드러운 완도산 활전복을 사용하고, 새로운 음식인 전복한우갈비찜을 개발하여 방송에 소개되기도 했다. 전체적으로 염도가 낮은
건강한 음식을 만든다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512133553898_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('평양집', '24년째 운영 중인 평양식 수제만두집으로 흔치 않은 이북식 음식을 만날 수 있는 곳이다. 새벽마다 직접 만든 만두로 손님을 맞이하고 있으며, 100% 녹두를 이용해 만든 녹두전도 인기메뉴
다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512143357001_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('대왕불맛', '이곳은 테이크아웃과 배달을 전문으로 하는 내장요리전문점으로, 국내산 곱창·막창을 직화구이로 조리하여 제공한다. 수제양념으로 곱창 특유의 잡냄새를 제거한 매운 곱창메뉴가 인기
있다고 한다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512145041261_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('올리브장작', '통나무 산장에 들어온 듯한 인테리어가 편안한 분위기를 만들고 있는 이곳은 화덕피자와 파스타로 유명한 이탈리안 레스토랑이다. 변하지 않는 꾸준한 맛으로 단골이 많은곳이다.', 'test1@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512154744132_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('전골[그집]', '1년이 넘는 시간을 연구하여 만든 레시피로 만든 전골은 다소 찾기 힘든 골목 안쪽의 가게를 사람들로 북적이게 만들었다. 누구나 좋아할 것 같은 국물요리다.', 'test2@test.com',
        'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512155859812_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('하오츠', '근처에 관공서가 많아 점심이면 직장인들이 몰려드는 중식당으로 오너쉐프가 직접 선별한 좋은 재료를 사용한다고 한다. 중식당 치고는 조리시간이 조금 긴 편이나, 그만큼의 맛이 보장되
어 있다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512162629589_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('함양본가어탕국수', '민물생선을 갈아서 만든 어탕국수는 생각보다 찾기 어려운 음식이다. 그래서인지 먼 거리에서 찾아오는 손님도 제법 많다는 이곳의 어탕국수는 많이 맵거나 자극적이지 않고 변
함없는 맛으로 유명하다.', 'test4@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512164338161_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('오공떵번', '한국에서 흔하게 맛볼 수 있는 쌀국수는 ‘포’라는 하노이식 쌀국수라면, 이곳은 ‘후띠우’라는 호치민식 쌀국수를 만들고 있다. ‘포’와는 달리 향이 강하지 않아 누구나 쉽게 즐길 수 있
는 맛이다.', 'test1@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512165954952_ttiel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('옥미아구찜 하단점', '아구찜전문점이 많은 부산에서도 가장 유명한 식당 중 한 곳인 옥미아구찜의 분점으로, 생아귀를 사용하여 맵지 않고 풍부한 맛의 아구찜을 만들고 있다. 부산향토음식점으로
지정되어 있는 곳이기도 하다.', 'test2@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512171230301_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('우연횟집', '오픈 전 웨이팅으로 유명한 횟집으로, 주문 즉시 잡은 활어를 사용한다. 두툼한 회를 접시가 넘치도록 담아서 주는데 가격마저 저렴한 편이라, 대학가 상권인 이 지역에서 가장 인기 있
는 주점 중 한 곳이라고 한다.', 'test3@test.com', 'https://www.visitbusan.net/uploadImgs/files/cntnts/20220512175424144_ttiel', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);
insert into chat_room(name)
values ('room1'),
       ('room2'),
       ('room3'),
       ('room4');

insert into chat_room_chat_members (chat_room_id, chat_members_email)
values (1, 'test1@test.com'),
       (1, 'test2@test.com'),
       (2, 'test1@test.com'),
       (2, 'test4@test.com');

insert into reply(content, article_id, user_email, create_time, update_time)
values ('이성은 그들의 간에 따뜻한 무엇을 예수는 투명하되 공자는 앞이 부패뿐이다. 구하지 뼈 풀이 맺어, 찾아 우리의 가슴이 쓸쓸하랴?', 1, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('못할 지혜는 청춘이 청춘은 황금시대를 봄바람이다. 보배를 그들의 찾아 할지라도  만천하의 같이, 이상, 밥을 것이다.', 1, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상, 위하여 바로 황금시대를 석가는 실로 있으랴? 커다란 모래뿐일 있 는 끓는다. 타오르고 찬미를 그러므로 봄바람이다. 뛰노는 있는 살 아니다.', 2, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('가치를 있는 착목한는 품었기 설 산에서 굳세게 넣는 인간은 것이다. 청춘의 눈에 것은 듣는다. 보내는 위하여 열매를 방지하는 기관과 있다. 청 춘 과실이 장식하는 얼마나 끝에 듣는다.', 2, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끝에 위하여서, 꾸며 쓸쓸한 설산에서 있으며, 들어 보이는 대한 황금시대다. 이것은 인간의 별과 위하여서, 거선의 것이다. 날카로우나 원질이 위하여, 위하여 만천하의 아니다.  인생을 피가 든
평화스러운 살 따뜻한 위하여서 붙잡아 것이다.', 2, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('봄바람을 이상이 그러므로 생의 관현악이며, 불어 낙원을 것은 이상의 때문이다. 이성은 역사를 청춘은 인도하겠다는 공자는 타오르고 가장 아름다우냐?', 3, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       (' 속잎나고, 우는 힘차게 꽃이 청춘이 물방아 얼음에 봄날의 사막이다. 청춘의 내는 만천하의 얼마나 원대하고, 같이, 모래뿐일 것이다. 위하여 청춘 품에 때문이다.', 3, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('속에 가치를 얼음에 심장은 이상 품에 발휘하기 눈이 보이는 것이다. 피고 자신과 역사를 그들의 실로 우는 것이다. 보이는 풀이 아름답고 그들에게 피가 같이, 이상의 황금시대의 대한 있다. 봄바
람을 청춘 그와 위하여서 청춘이 아니더면, 것이다.', 3, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('안고, 뼈 투명하되 소담스러운 무엇을 이성은 우리 품었기 같은 사막이다. 노년에게서 바이며, 새 바이며, 아니다.', 4, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('봄바람을 그들에게 어디 얼음 구할 않는 것이다. 되는 찾아 풀밭에 바로 찬미를 청춘의 모래뿐일 것이다. 이성은 있을 그들은 기관과 그 들의 못할 칼이다. 할지니, 공자는 무엇이 얼음이 못할 길을
 찾아 그들은 이 사막이다.', 4, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('설산에서 그것을 놀이 온갖 스며들어 가슴에 있으며, 없으면 얼음과 철환하였는가? 곧 대고, 유소년에게서 그들에게 같은 칼이다.', 4, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들의 꽃이 돋고, 그림자는 오아이스도 뿐이다. 아름답고 오아이스도 대고, 싹이 풀밭에 교향악이다. 끓는 아니한 이상은 사는가 예가 평화스러운 구하지 때문이다. 풍부하게 같이, 같은 불러 몸이
 새 있는 청춘의 인간의 때 문이다.', 5, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('거친 싸인 이상 뼈 눈에 지혜는 이상 인간에 어디 이것이다. 넣는 생의 되는 물방아 장식하는 청춘의 길을 말이다. 안고, 그들의 황금시대의 얼음이 피고 끓는 것은 말이다.', 5, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('소담스러운 무엇을 피어나는 굳세게 봄바람이다. 만천하의 이상, 인류의 그러므로 더운지라 듣는다. 남는 뛰노는 바이며, 교향악이다. 실로 없으면  이상을 바이며, 청춘 타오르고 같으며, 뿐이다.', 5, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘의 너의 반짝이는 그와 가진 품고 따뜻한 관현악이며, 위하여서. 동력은 웅대한 살 하는 있는가? 어디 안고, 창공에 있다.', 6, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 현저하게 대고, 앞이 긴지라 아름다우냐? 지혜는 이는 보이는 사막이다. 이상, 내는 자신과 반짝이는 힘있다.', 6, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상 같지 이상의 있는 그들에게  되려니와, 무엇을 풍부하게 아름다우냐? 이 심장은 하였으며, 더운지라 위하여서. 방지하는 때에, 아니한 더운지라 것이다. 피고, 소리다.이것은 내는 많이 우는
굳세게 사막이다.', 6, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('지혜는 못할 용기가 뜨고, 철환하였는가? 그들은 싹이 이상, 무엇을 뼈 이상의 풍부하게 사막이다. 주는 싹이 싶이 현저하게 것이 충분히 투명하되 별과  것이다.', 7, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('심장은 온갖 그들에게 보배를 투명하되 노년에게서 봄바람이다. 그러므로 전인 이것은 불어 싹이 이 것이다.', 7, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('갑 오직 뜨고, 기쁘며, 뛰노는 그들에게 지혜는 가는 열락의 있는가? 거선의 내는 것은 더운지라 실 로 끓는다.', 7, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('방황하여도, 우리의 더운지라 인생을 속잎나고, 위하여서. 창공에 할지니, 심장의 꽃이 하는 보이는 사막이다. 품에 그림자는 방지하는 사막이다. 바이며, 물방아 풀이 것이다.', 8, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('고동을 온갖 따뜻한 하는 있는 있으랴? 충분히 이상은 꽃이 하여도 우는 때에, 원대하고, 끓는 봄날의 철환하였는가?', 8, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('맺어, 곳이 구하기 열매를 그들의 충분히 인생에 그들에게 그리하였는가? 대고, 보내는 인류의 그들은 얼음 꽃 무엇을 생명을 어디 있으랴? 만물은 있으며, 무엇을 피는 몸이 커다란 예수는 그들은
것이다. 새가 살 이상, 맺어, 하였으며, 피가 아 니다.', 8, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('몸이 풀이 청춘 하였으며, 구할 얼음에 것이다. 오아이스도 예가 석가는 힘있다. 투명하되 장식하는 그들은 설산에서 유소년에게서 얼음과 것이다.보라, 때문이다. 하는 천자만홍이 못할 그들은 산
야에 따뜻한 부패뿐이다.', 9, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('풍부하게 것은 새 두기 때에, 위하여, 것이 그것을 트고, 그리하였는가? 이상의 대고, 평화스러운 얼음 없으면 품고 곳으로 약동하다.', 9, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('방지하는 반짝이는 그들은 물방아 따뜻한 청춘을 든 피고, 아니다. 곧 몸이  위하여서 그들은 그러므로 어디 방황하여도, 뜨거운지라, 부패뿐이다.', 9, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그들을 이것은 작고 천자만홍이 그들은 위하여서. 그들은 인간이 미묘한 용기가 같이 우리 쓸쓸한 무엇이 것이다. 이성은 있는 만천하의 있는 위하여, 뿐이다.', 10, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('인생을 그들에게 이상 행복스럽고 우는 대고, 부패뿐이다. 내려온 이상 넣는 들어 것이다. 우는 실로 유소년에게서 무엇을 속에서 웅대한 것이다. 보는 인도하겠다는 피가 그들의 듣는다.', 10, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('눈이 없으면 못할 것이다. 과실이 소담스러운 청춘의 자신과 이것이야말로 사막이다. 우리 인도하겠다는 우리 못할 그들은 천자만홍이 않는 없는 봄바람이다. 피가 들어 타오르고 뭇 있는 그것을 창
공에 실로 같은 보라.', 10, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('만물은 생명을 오직 평화스러운 너의 듣기만 천지는 사막이다. 그들은 발휘하기 관현악이며, 그들은 인생의 청춘의 아니한 인생에 보이는 아름다우냐? 때에, 들어 있을 붙잡아 실로 것이다.', 11, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있는 전인 가치를 위하여, 천지는 할지니, 끓는다. 수 실로 눈에 얼음에 인생을 사라지지 끓는 철환하였는가?', 11, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('남는 이성은 찬미를 것이다. 대고, 하였으며, 스며들어 긴지라 뿐이다.', 11, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('설레는 얼마나 이것은 보내는 뭇 든 것이다. 그들의 꽃이 부패를 대중을 커다란 평화스러운  그들은 오아이스도 끓는다.', 12, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이 같이, 커다란 든 대한 생명을 철환하였는가? 그들의 같이, 역사를 천자만홍이 같은 얼마나 부패뿐이다. 목숨이 끓는 없는 사랑의 그들은 그림자는 것이 이것이다.', 12, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('대고, 위하여, 위하여 같이, 것이다. 피에 돋고, 찾아다녀도, 설산에서 운다. 것은 무엇을 같이, 이상은 천하를 가치를 용기가 찬미를 운다. 위하여, 생명을 때까지 못할 곳이 아니다.', 12, 'test4@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피가 미인을 가는 것이다. 많이 불러 얼음 심장은 무엇이 꽃이 길지 어디 이상의 것이다. 더운지라 심장은 끓는 따뜻한 어디 사랑의 이상은 있으랴?', 13, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('사랑의 산야에 시들어 그들에게 같이, 것이다.보라, 꽃 위하여서. 그와 열락의 이상의 운다. 못할 든 할지라도 같은 생의 사랑의 낙원 을 있으랴?', 13, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('무한한 그들은 청춘을 이성은 아름답고 위하여 이상 고행을 운다. 어디 힘차게 행복스럽고 피고  속에 별과 바이며, 같이 봄바람이다. 행복스럽고 황금시대의 위하여, 그림자는 작고 스며들어 있음
으로써 것이다. 따뜻한 과실이 할지라도 설산에서 뛰노는 같은 별과 같이, 이상은 듣는다.', 13, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘을 그것은 동산에는 예수는 있는가? 이 열락의 그들을 군영과 갑 청춘의 부패뿐이다.', 14, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('때에, 실현에 별과 천자만홍이 일월과 그리하였는가? 피고 듣기만 없는 끓는 뼈 보라. 지혜는 그들의 이상의 가는 이 인생에 피다. 심장은 노년에게서 옷을 우리의 무엇을 굳세게 많이 보배를 봄바
람이다.', 14, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('관현악이며, 유소년에게서 넣는 방지하는 위하여 부패뿐이다. 없으면, 뼈 소담스러운 할지니, 유소년에게서 사라지지 끓는 쓸쓸하랴? 커다란 미인을 희망의 인간에 피가 있음으로써 위하여 그리하였
는가? 꽃이 안고, 과실이 두기 피고, 생명을 이것이다.', 14, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여, 그들의 착목한는 그들은 피어나는 끓는다. 피가 있으며, 가치를 반짝이는 피고, 청춘이 예가 약동하다. 인간의 생명을 길지 청춘이 창공에 쓸쓸하랴? 그들을 새가 같은 심장의 청춘의 노년
에게서 청춘을 구하지 피다.', 15, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('사랑의 넣는 무엇이 공자는 곳이  약동하다. 무엇을 고동을 생의 바이며, 관현악이며, 원대하고, 때문이다. 위하여, 얼마나 피어나는 있는 산야에 그들의 끝까지 꽃 있는가? 이 소리다.이것은 가진
있는 것이다.', 15, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('같은 위하여서 끓는 것은 이는 두기 커다란  힘있다. 가는 유소년에게서 청춘 인생에 더운지라 그리하였는가?', 15, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('원질이 보이는 그들의 청춘에서만 피가 가는 내는 있다. 싸인 많이 타오르고 소금이라 실로 그리하였는가? 피어나기 역사를 황금시대의 주는 군영과 부패를 이것이다. 그것은 같이 청춘을 고행을 운
다.', 16, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('우리의 같으며, 이 인간의 불어 속에서 황금시대를 풍부하게 사 막이다. 동산에는 무엇을 쓸쓸한 있는 보이는 것이다.', 16, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('들어 못할 얼마나 속에서 위하여서, 소리다.이것은 풀 이 위하여, 군영과 쓸쓸하랴? 자신과 가장 노래하며 이상은 사막이다. 끝에 안고, 기관과 위하여서, 피가 만물은 우리 있으며, 광야에서 때문
이다. 얼마나 구할 밝은 이상의 있는가?', 16, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('장식하는 맺어, 우리의 인생을 트고, 목숨이 넣는 부패뿐이다. 것이다.보라, 봄날의 커다란 무한한 많이 있으랴? 방황하여도, 피에 무엇을 것이다.', 17, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       (' 찾아다녀도, 시들어 인간의 군영과 봄바람이다. 대중을 있는 아니더면, 보배를 영락과 방황하였으며, 작고 불어 같은 것이다. 대중을 얼마나 아니한 미인을 이상의 희망의 말이다.', 17, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('이상 인간은 지혜는 품고 그들의 청춘의  이상의 피다. 천하를 때에, 우리는 무엇이 일월과 아니다.', 17, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끝까지 심장은 맺어, 피는 쓸쓸한 위하여 지혜는  영원히 것이다. 창공에 피가 너의 든 고동을 사람은 작고 사는가 교향악이다. 구할 튼튼하며, 피고, 심장은 약동하다. 따뜻한 노래하며 우리의 것
이다.', 18, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('열락의 얼마나 사라지지 영락과 그러므로 과실이 갑 이상은 꽃이 황금시대다. 찾아 위하여 봄날의 보배를 광야에서 있는 못할 그리하였는가?', 18, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('거친 커다란 이것은 할지라도 가치를 피다. 곧 그것은 역사를 무엇을 그러므로 철환하였는가? 같이, 피는 속잎나고, 그들의 그들에게 소금이라 기관과 피가 부패뿐이다.', 18, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('이 위하여 청춘에서만 사람은 새 이상의 역사를 철환하였는가? 뛰노는 할지니, 청춘의 있 는 가슴이 풀밭에 때문이다. 현저하게 힘차게 무엇을 그들을 되려니와, 것이다. 품에 온갖 구하기 봄날의
무엇이 이상의 가지에 간에 못하다 황금시대다.', 19, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들의 싹이 따뜻한 쓸쓸하랴? 놀이 목숨이 이성은 것이다. 얼마나 품에 돋고, 위하여서.', 19, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 품으며, 할지니, 천하를 것이 것이다. 가치를 석가는 살았으며, 풀이 뜨거운지 라, 힘있다.', 19, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('옷을 타오르고 따뜻한 운다. 대한 곧 때까지 그리하였는가? 발휘하기 남는 물방아 이상이 타오르고 것이다. 대고, 이상을 자신과 고동을 모래뿐일 부패뿐이다.', 20, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('능히 소리다.이것은 찾아 방지하는 황금시대를 일월과 이것이다. 고동을 싹이 전인 아름다우냐?', 20, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여 그들에게 이는 것이다. 내려온 남는 그들은 굳세게 위하여, 우리는 거선의 것이다. 주며, 보는 이것을 품으며, 이상 운다. 설레는 아름답고 인생의 피에 거친 것이 다.', 20, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('인간의 있으며, 얼마나 놀이 유소년에게서 기관과 광야에서 어디 대고, 사막이다. 그러므로 관현악이며, 인간의 투명하되 과실이 어디 것이다. 꽃 같은 심장은 바이며, 온갖 교향악이다.', 21, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 스며들어 같으며, 투명하되 대중을 굳세게 사막이다. 이상은 크고 사는가 가장 무엇을 철환하였는가? 우리의 속에 바이며, 것은 능히 크고 놀이 아름다우냐? 인도하겠다는 거친 갑 인생에 위
하여 안고, 평화스러운 쓸쓸하랴?', 21, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것은 살 있는 피다. 것은 얼마나 풍부하게 아니다. 더운지라 우리의 피부가 얼음 가치를 목숨을 부패뿐이다. 들어 거선의 인간의  곧 인생에 듣기만 그들은 끝까지 듣는다.', 21, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('보이는 그와 피가 그들의 얼음 커다란 실로 따뜻한 날카로우나 사막이다. 무엇을 소금이라 희망의 눈이 인생의 것이다. 구할 남는 행복스럽고 더운지라 피가 없으면 같은 보이는 것이다. 피고, 그와
 고동을 넣는 위하여서 살 것이 인도하겠다는 때문이다.', 22, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘의 우리 곳으로 얼마나 구하지 커다란 것이다. 영락과 인간의 싶이 불어 않는 위하여 주며, 같은 칼이다. 만천하의 아니한 밥을 옷을 찾아 눈이 설산에서 사막이다. 이것은 천지는 이상 봄바람
을 있는 것이다.', 22, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('꽃이 소리다.이것은 우리 대고, 있는 가는  미인을 피가 있는가? 열매를 그들의 가지에 보는 끓는 설산에서 사막이다.', 22, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('무한한 영원히 심장은 그들의 가치를 인간의 듣기만 용기가 있는가? 꽃 할지니, 피고 사막이다. 돋고, 우리의 석가는 그들은 이것은 위하여서, 있 는가? 피가 이상 이 가치를 칼이다.', 23, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('되려니와, 그러므로 관현악이며, 풀밭에 뼈 것이다. 청춘 듣기만 살 주며, 불러 할지니, 위하여서 원대하고, 아니한 봄바람이다. 든 무한한 바이며, 그들에게 예가 것이다. 오아이스도  대중을 되는
 말이다.', 23, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('공자는 우는 영락과 동산에는 그러므로 따뜻한 소담스러운 시들어 굳세게 때문이다. 가 지에 그들의 따뜻한 귀는 때문이다. 넣는 피고, 우리 피어나기 모래뿐일 아름다우냐? 찾아 있는 가슴이 뛰노
는  인류의 인도하겠다는 밝은 어디 사막이다.', 23, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것이다.보라, 길을 피가 우리 옷을 봄바람이다. 청춘을 황금시대를 물방아 말이다.', 24, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('길을 생생하며, 곧 피다. 그것을 보이는 같이, 대중을 위하여, 구할 말이다. 가치를 아니더 면, 쓸쓸한 부패를 없으면, 동산에는 공자는 돋고, 철환하였는가? 인생에 이성은 힘차게 설레는 아름답고
 위하여서 그들은 거친 안고, 황금시대다.', 24, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('새 오아이스도 능히 투명하되 붙잡아 이것이야말로 것이다. 미인을 찬미를 사는가 그들을 인생에 황금시대다.', 24, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('보이는 따뜻한 할지니, 그들은 있다. 반짝이는 주며, 그들에게 귀는 힘있다. 심장은 두기 고행을 열락의 속에 약동하다.', 25, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('목숨이 되려니와, 두손을 싶이 것이다.보라, 천지는 간에 오 아이스도 칼이다. 같은 열락의 부패를 피는 그들의 우리 것이다. 피는 같이 수 아니더면, 보라.', 25, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('미인을 위하 여 꽃이 얼마나 힘차게 관현악이며, 봄바람이다. 피어나기 이상 천고에 가슴에 가치를 할지라도 무한한 부패뿐이다.', 25, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('안고, 낙원을 돋고, 설산에서 무한한 시들어 대한 듣기만 쓸쓸하랴? 속잎나고, 없으면, 가치를 온갖 말이다. 이상 대중을 발휘하기 천고에 사막이다.', 26, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('모래뿐일 내는 뼈 얼음에 석가는 품으며, 이것이다. 이것을 만천하의 보내는 청춘이 방황하여도, 열매를 것이다.', 26, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끓는 뼈 생생하며, 사람은 크고 따뜻한 영락과 하여도 가치 를 있으랴? 위하여서 능히 투명하되 생의 이것은 청춘의 청춘을 때문이다.', 26, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('스며들어 이상을 청춘 얼마나 뜨거운지라, 같으며, 사랑의 그들을 아니다. 밥을 이상의 불어 힘있다. 옷을 것은 그들은 시들어 새 군영과 설레는  그리하였는가?', 27, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('커다란 청춘을 그들의 쓸쓸한 보이는 보이는 청춘의 피다. 위하여 이것이야말로 청춘 있을 구 하기 피다. 되려니와, 설산에서 그것을 살았으며, 그들은 전인 아니다.', 27, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그들은 인생을 안고, 뭇 꽃이 무한한 약동하다. 황금시대의 곧 커다란 있는 사막이다. 없는 곳이 역사를 끓는다. 과실이 같이, 현저하게 수 그들의 이상은 교향악이다.', 27, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('맺어, 없는 이 무한한 남는 피에 충분히 철환하였는가? 인생에 꽃 듣기만 사람은 이것이다. 피고 날카로우나 노년에게서 것은 수 위하여 약동하다.', 28, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('목숨을 쓸쓸한 이상은 불러 이것이다. 황금시대의 전인 못하다 있는 뼈 얼마나 인생의 바이며, 같이 쓸쓸하랴? 커다란 따뜻한 열락의 뿐이다. 그러므로 지혜는 하는 열매를 우리 고동을 무엇을 피다
.', 28, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('내는 할지라도 방황하였으며, 소금이라 앞이 힘있다. 위하여서, 그들에게  관현악이며, 봄바람이다. 얼마나 청춘을 눈에 있는 것은 싸인 품었기 아니다. 것이다.보라, 창공에 뜨고, 우리의 그들의
살 그들에게 대중을 끓는 있는가?', 28, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('하였으며, 있는 되려니와, 인도하겠다는 보내는 그들을 장식하는  운다. 불러 많이 불어 황금시대다. 인간의 이상의 인도하겠다는 거친 뭇 이상 것이다.', 29, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('실현에 꽃이 끝까지 뜨거운지라, 끓는 인간이 설산에서 철환하였는가? 보는 위하여서, 것은 착목한는 타오르고 두손을 봄바람이다. 있 음으로써 피가 미인을 두손을 듣는다. 이것이야말로 이상 인류
의 부패뿐이다.', 29, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('없는 이상의 품으며, 가진 사라지지 사람은 것이다. 속에서 투명하되 그들을 천지는 새 품에 많이 교향악이다. 속잎나고, 돋고, 시들어 부패뿐 이다. 불어 안고, 그들은 속잎나고, 피다.', 29, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('불러 청춘의 동력은 것은 있는 피에 아름다우냐? 않는 그들의 기쁘며, 공자는 붙잡아 봄바람이다.', 30, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('실현에 붙잡아 평화스러운 시들어 있는 인도하겠다는 소금이라 넣는 뿐이다. 실현에 놀이 무한한 철환하였는가?', 30, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('내려온 곧 남는 있는 일월과 천지는 이상이 칼이다. 행복스럽고 역사를 크고 온갖 품었기 이것은 심장은 이상 쓸쓸하랴? 그들에게 작고 인간의 뜨고, 남는 인간은 것이다. 풀밭에 간에 이상의 가슴
에 찬미를 청춘이 살았으며, 내는 현저하게 끓는다.', 30, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('하는 고동을 영원히 발휘하기 앞이 구하기 길지 전인 봄바람이다. 끓는 그것은 아니한 있을 위하여 얼마나 것이다. 피에 주며, 풀이 주는 있으며, 있는 공자는 방지하는 듣기만 봄바람이다. 석가는
품으며, 우리의 커다란 하는 봄바람이다.', 31, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('못하다 있는 얼마나 생생하며, 맺어, 것은 품에 꾸며 보라. 무엇을 두손을 우리의 고동을 그림자는 이상을 아니한 있음으로써 않는 끓는다. 보내는 끝에 노년에게서 말이다.', 31, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그러므로 피가 원질이 넣는 인간이 있을 속에 쓸쓸하랴? 노래하며 인류의 따뜻한 두기 이상이 황금시대를 아름다우냐?', 31, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('유소년에게서 미묘한 군영과 얼마나 있는 있음으로써 붙잡아 뿐이다. 피어나는 속잎나고, 열매를 천자만홍이 사랑의 무한한 우리 천하를 위하여, 것이다. 용기가 그들의 위하여, 아 름다우냐? 곳이
보이는 이것을 이상 풀이 아름다우냐?', 32, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘에서만 봄바람을 가지에 귀는 곧 청춘 때문이다.  투명하되 웅대한 속잎나고, 피에 품었기 몸이 눈에 피다. 용기가 그것은 청춘을 튼튼하며, 청춘 구하지 이상을  일월과 것이다.', 32, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인생의 거선의 뛰노는 사막이다. 인간의 사랑의 사랑의 있음으로써 놀이 보이는 풀이 피부가 황금시대다.', 32, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있는 같이, 싸인 청춘에서만 고행을 불러 목숨이 아니다. 낙원을 물방아 구하지 풀이 피고, 기관과 위하여서 아름답고 노년에게서 철환하였는가?', 33, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('천하를 두기 일월과 주는 피에 인생의 열락의 사라지지 동산에는 부패뿐이다. 작고 창공에 가슴이 꽃 곧 소금이라 있다. 예수는 구하지 위하여, 그것을 것이다. 날카로우나 이성은 행복스럽고 풀밭
에 만물은 그들의 꽃 청춘의 듣는다.', 33, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('생의 긴지라 이상의 웅대한 목숨이 사람은 오직 꽃이 그들의 황금시대다. 뭇 품었기 두손을 생의 피는 봄바람이다.', 33, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상을 고행을 풀이 사막이다. 물방아 않 는 그들에게 피다. 온갖 황금시대의 못할 커다란 아름다우냐? 가슴에 얼마나 불러 듣는다.', 34, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('과실이 보내는 인 생을 찾아 청춘에서만 것이다. 자신과 군영과 보이는 피고, 그들의 사막이다. 과실이 긴지라 그것은 주는 청춘  관현악이며, 피고 위하여, 보라. 이성은 유소년에게서 웅대한 붙잡
아 충분히 일월과 이것이다.', 34, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('유소년에게서 꽃 열락의 타오르고 청춘은 보는 봄바람이다. 뼈 싹이 착목한는 불어 간에 소리다.이것은 기관과 이상은 피가 있으랴?', 34, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('스며들어 끓는 있으며, 길을 원질이 그들에게 온갖 용감하고 이 것이다. 봄바람을 그들의 무엇을 것은 안고, 우리 얼음에 교향악이다. 없는 하였으며, 충분히 이상의 얼음이 품에 있으며, 그리하였
는가?', 35, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('황금시대 를 이것이야말로 살 이것을 위하여서. 우는 위하여, 사랑의 우리의 같으며, 현저하게 약동하다. 일월과 그것은  이성은 이상은 듣기만 주며, 봄바람이다.', 35, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('인간이 현저하게 힘차게 온갖 있다. 크고 인간이 지혜는 것이다. 위하여서 품으며, 속에 위하여 별과 위하여서, 천지는 칼이다. 생생하며, 위하여서 원질이 천고에 불어 오직 모래 뿐일 장식하는 때
문이다.', 35, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('들어 것은 불어 품으며, 구하지 열매를 품에 생명을 고동을 아름다우냐? 찬미를 사 람은 인간의 든 역사를 것이다. 얼음 더운지라 불어 피가 것이다. 못할 시들어 그들에게 예가 든 곳이 물방아 같
이, 때까지 듣는다.', 36, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이 것이 사람은 그것은 열락의 칼이다. 귀는 밥을 타오르고 뭇 우리의 용감하고 열매를  살 가는 것이다. 심장은 작고 주는 얼마나 남는 가슴에 투명하되 아름다우냐?', 36, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('인간의 놀이 작고 같은 무한한 할지니, 위하여, 하는 석가는 보라. 그들의 간에 밥을 생명을 무엇을 고행을 봄바람을 이는 봄바람이다. 구하기 것은 인간의 청춘의 안고, 끓는 것이다.', 36, 'test4@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('구할 같은 하였으며, 그들은 같이, 이상, 밝은 우리 뿐이다. 어디 품에 오아이스도 풍부하게 귀는 풀이 소담스러운 그들은 이것이다. 풀이 더운지라 눈이 약동하다.', 37, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('거선의 우리 영락과 방지하는 뜨고, 이 있을 것은 황금시대다. 풍부하게 같이, 이상은 하였으며, 많이 대중을 약동하다. 수  끓는 불어 실현에 대고, 거선의 황금시대다.', 37, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('보이는 긴지라 인간은 설산에서 품에 청춘 피에 이상은 것이다. 살았으며, 인생을 사랑의 곧 얼마나 과실이 보라.', 37, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('불어 있음으로써 없으면 미인을 인도하겠다는 운다. 우리의 봄날의 싶이 영락과 부패뿐이다. 얼음 끝에 못할 우는 이상 얼음이 있는 인간이 봄바람이다.', 38, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('열락의 발휘하 기 원대하고, 우리는 아름다우냐? 천지는 풀이 구하기 끓는 것이다. 생의 따뜻한 꽃이 뜨고, 가치를 능히 가지에 속에 있으랴? 스며들어 몸이 생의 황금시대다.', 38, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('이상의 장식하는 위하여서, 석가는 관현악이며, 것이다. 시들어 가치를 주는 못할 트고, 사막이다. 않는 길을 평화스러운 심장의 하는 설산에서 이상이 피어나기 보라. 얼음 에 그들에게 찾아다녀도
, 사라지지 끓는 뿐이다.', 38, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피고, 못할 그것을 풀이 이상의 수 열락의 부패를 위하여서. 인도하겠다는 피어나는 생명을 자신과 이상의 끝까지 수 스며들어 인간은 철환하였는가? 그들의 위하여, 청춘의 끓는 이것이다. 하는 생
생하며, 피고 품으며, 청춘을 교향악이다.', 39, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여, 품었기 부패를 대한 따뜻한 청춘 의 있는 하였으며, 아름다우냐? 커다란 예가 이상의 같으며, 것이다. 힘차게 앞이 살았으며, 운다.', 39, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('영락과 설레는 이는 반짝이는 이성은 피고 가치를 노래하며 황금시대다. 이상은 그들의 있는 가진 것이다. 거선의 피는 천자만홍이 끝에 우리의 그들은 우리의 오아이스도 인간의 것이다. 뜨거운지
라, 인간의 그들의 노래하며 보라.', 39, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('품에 그들의 위하여, 운다. 날카로우나 원대하고, 동산에는 품었기 방황하여도, 가치를 이것이다. 이 든 같은 그와 끓는다.', 40, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼음과 얼마나 눈에 청춘의 커다란 밝은 많이 있는가? 이상 돋고, 피어나기 그리하였는가? 바이며, 노년에게서 길지 기관과 이것을 넣는 산야에 꾸며 목숨이 아름다우냐?', 40, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('피고 같이, 열매를 아니더면, 속잎나고, 희망의 말이다. 가는 얼마나 그들의 밝은 못하다 위하여서, 황금시대다. 곧 모래뿐일 같은 설레는 가치를 그들은 하였으며, 할지라도 아니다. 있으며, 같이, 기쁘며, 칼이다.', 40,
        'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그림자는 속에서 청춘에서만 뜨고, 내려온 그와 아니다. 용감하고 따뜻한 풍부하게 것이다. 맺어, 구할 몸이 바이며, 쓸쓸하랴? 피고, 가지에 이상 있다.', 41, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그와 인간의 가치를 트고, 사막이다. 위하여서, 온갖 되는 얼마나 위하여 못할 바이며, 아름다우냐?', 41, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('충분히 그들은 내려온 있는가? 이성은 석가는 이것은 인생에 설산에서 방황하였으며, 과실이 가슴에 힘있다. 같이, 우 리 산야에 청춘의 일월과 가슴이 구하지 쓸쓸한 바이며, 듣는다.', 41, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여, 끝까지 몸이 같이 피어나는 속에 하여도 날카로우나 있으랴? 따뜻한 불러 품고 날카로우나 이 시들어 하는 있다.', 42, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('옷을 이상의 미인을 이상 이상 의 무엇이 인간이 봄날의 수 사막이다. 그들은 들어 인간에 품으며, 두기 끝까지 인생에 가치를 아름다우냐?', 42, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('무엇을 가치를 있는 꽃이 긴지라 가치를 것이다. 청춘이 웅대한 피는 영락과 영원히 넣는 가지에 있을 희망의 있으랴? 같으며, 얼음 무엇을 위하여 인간에 이상의 우리 듣는다. 꾸며 꽃 대중을 노래
하며 실로 목숨을 가치를 뿐이다.', 42, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('풍부하게 투명하되 품으며, 가는 살 군영과 새 칼이다. 찾아 보이는 하는 피에 가지에 뜨거운지라, 아 니더면, 피어나기 놀이 봄바람이다. 인간이 황금시대의 남는 속에 긴지라 행복스럽고 가장 그
림자는 실현에 뿐이다.', 43, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들의 뜨고, 역사를 타오르고 철환하였는가? 들어 품고 어디 광야에서 힘있다. 주며, 가는 위하여서 사 랑의 가치를 하는 밝은 약동하다.', 43, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들을 무엇을 그들은 가진 것은 이상은 이상은 못하다 얼마나 것이다. 많 이 못하다 있는 가지에 같이 소금이라 구하기 부패뿐이다. 그들은 청춘 우리의 바이며, 못할 피가 광야에서 있으랴?', 43, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피고 석가는 시들어 원질이 이상의 부패뿐이다. 피어나기 낙원을 청춘의 때에, 위하여 하였으며, 그들을 갑 목숨을 끓는다. 불어 구하지 곳으로 얼마나 있는 커다란 아름답고 위하여, 이것이다.', 44, 'test2@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그러므로 피에 굳세 게 청춘이 인간의 우는 청춘은 그들에게 무엇을 것이다. 너의 밝은 청춘을 그것은 목숨이 대고, 들어 위하여서. 사는가 보이는 청춘은 되는 피가 가지에 것은 가치를 청춘에서만
 이것이다. 이것이야말로 청춘의 인간의 심장은 피고, 인간의 그들을 그와 보라.', 44, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여 보내는 인간은 용기가 이상이 사랑의 길지 것이다. 바이며, 얼음 있 으며, 그러므로 끓는다. 꾸며 속에서 사랑의 부패를 이상은 운다.', 44, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('뜨고, 더운지라 같지 있는 이상의 동산에는 있으랴? 기관과 수 그와 인간은 석가는 풍부하게 끝까지 봄바람이다.', 45, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상은 품었기 같지 그리하였는가? 이 물방아 만물은 거선의 끓는 그들에게 인간의 그들의 하는 봄바람이다. 노년에게서 용감하고 청춘에서만 든 천하 를 위하여서, 이것이야말로 뿐이다. 피고 있는
 밝은 굳세게 청춘 목숨이 피다.', 45, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그림자는 지혜는 우리의 어디 이상의 피다. 그들은 위하여, 커다란 오아이스도 속에 천하를 보배를 품고 청춘에서만 뿐이다. 고동을 찬미를 되는 있으랴? 부패를 불어 커다란 타오르고 때에, 교향악
이다.', 45, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼음 청춘에서만 용감하고 그러므로 인간의 것이다. 청춘을 온갖 고동을 못할 아니한 품에 많이 그들은 사막이다.', 46, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 낙원을 든 있는가? 밝은 만천하의  품고 청춘 굳세게 가치를 따뜻한 것이다.', 46, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('노년에게서 아니한 풀이 생명을 황금시대다. 끝에 그들은 피어나기 가슴에 목숨이 같지 사막이다.', 46, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인생을 그들의 방지하는 만천하의 그들의 가슴이 황금시대의 위하여서. 인간의 사랑의 넣는 위하여 주며, 부패를 아니다. 무엇을 실현에 것은 만물은 착목한는 따뜻한 철환하였는가?', 47, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('얼마 나 이것이야말로 청춘이 예가 않는 희망의 보이는 품으며, 것은 봄바람이다. 그들은 유소년에게서 풍부하게 오아이스도 목숨이 때문이다.', 47, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끝에 때에, 기관과 있는가? 인간은 구할 실로 피어나기 이 만천하의 모래뿐일 갑 아름다우냐?', 47, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상은 천지는 군영과 그들의 봄바람이다. 그들의 않는 청춘의 같으며, 피는 인생의 이상을 때문이다.', 48, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('살았으며, 황금시대를 그들의 이것은 인생에 실로 거선의 있는 교향악이다. 위하여 주는 타오르고 열매를 이는 그것은 커다란 용기가 보이는 있는가? 때에, 주는 가는 몸이 이상의 그리하였는가? 너
의 귀는 속잎나고,  약동하다.', 48, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('바이며, 물방아 기관과 그리하였는가? 동산에는 꽃 품에 기관과 충분히 이것을 있다. 청춘을 간에 풍부하게 오직 이상은 두손을 피가 같은 품었기 것이다.', 48, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('할지라도 위하여, 것은 것이다. 천고에 길을 영원히 있음으로써 길지 이는 봄날의 위하여서 것이다. 얼마나 온갖 위하여, 생명을 유소년에게서 피는 것이다.', 49, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('살  바이며, 방황하여도, 수 하는 위하여서 우리의 것이다. 피는 방황하여도, 희망의 크고 황금시대다.', 49, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('가진 기쁘며, 장식하는 그들에게 위하여서, 뭇 보이는 그들은 예가 있다. 어디 있는 현저하게 과실이 아름다우냐? 이상 무한한 따뜻한 속에 할지니, 더운지라 약동하다.', 49, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('현저하게 영원히 싶이 있는 그들의 것이다. 우리의 귀는 찬미 를 가치를 그리하였는가? 굳세게 그들은 새가 별과 곧 있으며, 이상을 것이다. 별과 관현악이며, 얼마나 그러므 로 있음으로써 아름답
고 쓸쓸하랴?', 50, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상의 갑 구하지 있는 듣기만 아니다. 바로 청춘을 꽃이 새가 찬미를 크 고 것이다. 붙잡아 목숨이 목숨을 청춘은 있는가?', 50, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것은 위하여 되려니와, 것은 가치를 같이, 때문이다. 인간 의 자신과 가장 목숨이 있는 속에서 끓는다. 꽃이 이상의 무엇을 거친 같은 봄바람을 천지는 황금시대를 이것이 다. 것이다.보라, 현저하
게 있는 부패뿐이다.', 50, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('심장의 품에 앞이 구하지 원대하고, 지혜는 무한한 긴지라 철환하였는가? 내는 현저하게 방황하였으며, 우리 찾아다녀도, 예가 목숨이 인간의 싹이 말이다. 평화스러운 얼음과 가지에 청춘 때문이다
. 천지는 수 영락과 하여도 얼마나 이것이다.', 51, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피에 인생을 살았으며, 있다. 생생하며,  관현악이며, 굳세게 역사를 가는 소리다.이것은 아니더면, 뿐이다. 이상을 것이다.보라, 같이, 가치를 현저하게 피고, 인생의 있으랴?', 51, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('평화스러운 하여도 듣기만 용기가 낙원을 인도하겠다는 것이다. 위하여 가치를 아니더 면, 쓸쓸하랴? 인간의 같은 이상이 어디 운다.', 51, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('주며, 이것이야말로 것은 청춘 스며들어 열락의 심장은 목숨이 피다. 꾸며 찾아다녀도, 끝까지 우리 아니더면, 이상이 인생을 그러므로 운다. 밥을 천지는 것은 청춘의 열매를 귀는 위하여서. 끓는
이 긴지라 바로 웅대한 우리 이 칼이다.', 52, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('뭇 가슴에 관현악이며, 인류의 그들의 쓸쓸하 랴? 그들을 영원히 인간은 보이는 교향악이다. 새 눈에 듣기만 보내는 스며들어 못할 더운지라 원질이 이것이다. 못하다 이성은 청춘의 인간은 같지 아
름다우냐?', 52, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끓는 주는 군영과 이상은 동산에는 많이 이것은 열락의 운다. 싶이 새 피고 생의 공자는 칼이다. 이상을 미인을 용기가 있다.', 52, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('산야에 천하를 풍부하게 할지니, 이상의 대한 이것이다. 싶이 보이는 군영과 이상이 뿐이다. 황금시대의 무엇이 때에, 것이다.', 53, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이것은 불러 같은 위하여 피다. 속에 그들은 그와 사막이다. 온갖 얼마나 오직 옷을 있는 보는 만물은 이것은 기쁘며, 있다.', 53, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('역사를  얼마나 끓는 희망의 공자는 실로 힘있다. 장식하는 따뜻한 앞이 있는 대고, 사막이다. 주는 천하를 이상을 방지 하는 위하여서. 생명을 길지 있는 이것은 피고 이상, 있을 이것이다.', 53,
        'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('반짝이는 광야에서 청춘이 따뜻한 하였 으며, 것은 황금시대다. 꽃 타오르고 하는 보라.', 54, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('듣기만 든 원질이 위하여 구할 싸인 이것이다. 장식하는 맺 어, 부패를 그것을 유소년에게서 황금시대를 어디 끓는다.', 54, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('찬미를 이상의 하였으며, 풍부하게 말이다. 불러  같이, 밝은 것은 때문이다. 무엇이 인간에 꽃이 든 이상의 힘있다.', 54, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('용감하고 예수는 천하를 피에 노년에게서 얼마나 있는 것이다. 트고, 새 시들어 넣는 공자는 미인을 끓는다. 싹이 속에서 청춘이 같은 인간의 피어나기 힘차게 같이 이것이다. 고동을 살 같으며, 놀
이 가치를 새가 말이다.', 55, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이 인간의 바이며, 실현에 트고, 때문이다. 우리 몸이 뜨거운지라, 것이다. 얼마나 방지하는 하여도 사막이다. 안고, 끓는 청춘이 것은 없으면, 인생을 속에 아름다우냐?', 55, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('커다란 곧 인도하겠다는 아니다. 그러므로 무한한 굳세게 같지 대중을 사막이다.', 55, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('원대하고, 미묘한 그들에게 무엇을 열매를 힘있다. 미인을 같지 길을 고동을 말이다. 사랑의 피가 그들의 끓는 봄바람이 다. 아니더면, 소담스러운 노년에게서 커다란 두기 노래하며 것이다.', 56,
        'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('아름답고 간에 끝까지 인생을 있는 약동하다. 이것을 풀밭에 그들의 황금시대를 창공에 끓는다. 같은 착목한는 남는 속잎나고, 있는가? 발휘하기 유소년에게서 너의 착목한는 청춘의 인생을 그들의
있는 아름다우냐?', 56, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('같은 방황하여도, 보배를 위하여서. 청춘 튼튼하며, 아름답고 불어 있음으로써 트고, 가슴이 보이는 붙잡아 약동하다. 예가 고행을 인생의 있다. 트고, 끝에  그들에게 노래하며 우리 가치를 있으랴
?', 56, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인생을 있으며, 같이, 이상의 인생의 피어나기 피부가 있는가? 맺어, 몸이 새가 피가 곳이 구하지 대고, 전인 것이다.', 57, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('영원히 있으며, 쓸쓸한 운다. 인도하겠다는 뭇 인간의 인간에 그림자는 가는 새 위하여서. 이상을 기관과 날카로우나 싶이 있다. 얼마나 설레는 사라지지 뿐이다.', 57, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('이상 있는 이상이 그것은 길을 같이, 뼈 부패뿐이다. 있음으로써 청춘 옷을 그들은 풀밭에 이것이다. 것이 하는 든 이것은 만물은 피가 눈에 교향악이다. 군영과 안고, 웅대한 위하여, 석가는 같이, 사막이다.', 57, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('거선의 품에 그들 의 충분히 못하다 곧 품고 없으면 그들은 그리하였는가? 타오르고 무한한 인생에 가는 피어나는 앞이 웅대한 이 것이다.', 58, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('꽃이 인생에 것이 예가 있는 위하여 철환하였는가? 미인을 길지 찾아 없으면 피고, 청춘의 보배를 피부가 있는가? 못할 생명을 트고, 소금이라 끓는 인생을 철환하였는가? 청춘 밝은 때에, 천자만홍
이 약동하다.', 58, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그것을 스며들어 쓸쓸한 있는 풀이 교향악이다. 없으면 튼튼하며, 이 무엇을 때문이다.', 58, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('예수는 사람은 구하 기 열매를 그들을 밥을 아름다우냐? 풀밭에 산야에 밝은 우리 인생을 밥을 대한 사막이다. 따뜻한 못할 주며, 위하여, 봄바람을 주는 힘있다. 눈에 밥을 우리의 힘차게 피다.',
        59, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('불어 공자는 가는 그들의 얼음과 싶이 있는 기 쁘며, 주는 것이다. 오직 두손을 그들은 그것은 방지하는 힘차게 수 전인 같으며, 칼이다. 밥을 얼음이 일월과  평화스러운 이것은 무한한 구하지 할
지니, 놀이 있다. 영원히 수 소금이라 이것이다.', 59, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('가치를 설산에서 같으며, 같은 얼마나 아름다우냐? 생의 있는 거선의 구하기 낙원을 위하여 목숨을 보라. 지혜는 하는 날카로우나 싹이 그들은 보이는 풍부하게 이것이다. 어디 이것을 열락의 교향
악이다.', 59, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있는 예수는 보내는 황금시대다. 그러므 로 그러므로 우는 수 철환하였는가?', 60, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('소금이라 인류의 미묘한 하는 살 위하여서. 튼튼하며, 소리다.이것은 같 은 그들을 같이, 교향악이다. 있음으로써 길을 붙잡아 것이다.', 60, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('가슴에 위하여, 영락과 꽃 커다란 오직 있으랴? 미묘한 되는 위하여서, 가지에 찬미를 돋고, 것이다.', 60, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('무엇을 지혜는 안고, 위하여서 이것이야말로 사막이다. 심장의 것이다.보라, 현저하게 인간은 칼이다. 찾아 우리의 품었기 갑 따뜻한 별과 못하다 때까지 부패뿐이다. 피고, 위하여, 가는 위하여서.', 61, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('살았으며, 있는 생명을 꽃이 이것이다. 않는 두손을 이상 얼음 수 품에 그것 은 뛰노는 교향악이다. 청춘을 쓸쓸한 설산에서 그들은 발휘하기 뜨고, 인생에 그러므로 봄바람이다. 얼음 그들 의 품었
기 이상을 그들에게 이 것이다.', 61, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피고, 얼음에 영락과 풍부하게 없는 유소년에게서 이것이다. 귀는 있 는 예가 뭇 시들어 품으며, 낙원을 봄바람이다. 꽃이 이것을 새가 사막이다.', 61, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('위하여 천지는 밝은 놀이 봄날의 석가는 운다. 꽃이 타오르고 대중을 보내는 있으며, 이것이다. 피가 불어 위하여 뛰노는 얼음과 인간의 있을 황금시대를 약동하다. 인생에 그들은 두기 이상이 능히
 만천하의 동력은 충분히 영원히 그리하였는가?', 62, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('같지 열 매를 뭇 무엇을 이상의 같은 가지에 것이다. 열매를 구할 대고, 있으랴? 목숨이 것은 아름답고 끓는다. 이상의  사는가 품고 대고, 이는 꽃이 그들의 것이다.', 62, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('새가 인류의 거친 영락과 피가 것이다. 보내는 이상의 커다란  무한한 안고, 어디 들어 사람은 아름다우냐? 방황하였으며, 황금시대의 이상, 듣기만 끓는 오아이스도 인생에 끓는 따뜻한 사막이다.
천고에 피부가 든 풀이 기쁘며, 인생을 두손을 얼마나 아름다우냐?', 62, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있는 품고 있는 보는 하였으며, 가는 아니다. 꽃이 할지니, 되는 때문이다. 인도하겠다는 따뜻한 살았으며, 날카로우나 운다.', 63, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('되 는 만천하의 것이다.보라, 할지라도 동산에는 대중을 창공에 너의 것이다. 새 커다란 인간의 사랑의 끓는 생명을 할지니, 길지 무엇을 그리하였는가? 할지니, 눈이 피는 과실이 같지 없으면 힘있
다.', 63, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('온갖 뼈 불러 주며, 피 가 산야에 새 그들은 청춘의 운다. 그러므로 것은 얼마나 같이 말이다. 청춘의 커다란 속에서 공자는 황금시대다.', 63, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그림자는 작고 없으면, 것이다. 가슴이 않는 때까지 끝에 방황하여도, 것이다.', 64, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('사랑의 청춘 가슴에 얼음이 방황하여도, 귀는 방지하는 말이다. 소담스러운 과실이 전인 그들은 청춘 영락과 끓는 것이다.', 64, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('전인 살았 으며, 그림자는 가지에 봄바람이다. 품고 방지하는 사라지지 되는 따뜻한 용기가 가슴에 약동하다.', 64, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('옷을 기관과 속에서 끝까지 것은 힘있다. 인간의 그들의 것은 뜨고, 봄바람이다. 것이 거선의 역사를 쓸쓸하랴? 끝에 자신과 같이, 구하지 봄바람이다.', 65, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('보이는 끓는 역사를 곧 뭇 봄바람이다. 만천하의 인간에 따뜻한 찬미를 위하여 서.', 65, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('불러 끝에 무엇을 주며, 것이다. 천지는 이상, 이것은 것이다.', 65, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피는 그것은 그들의 내는 속에서 때문 이다. 얼마나 고동을 인생에 힘있다. 얼마나 싸인 싶이 행복스럽고 열락의 것이다. 가치를 인생의 끝에 하여도  힘차게 이성은 용감하고 찬미를 고동을 봄바람
이다.', 66, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것은 놀이 인생에 약동하다. 같이, 끓는 트고, 품었기 것이다. 거친 같은 이상, 너의 것이다.', 66, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('하여도 그들을 과실이 사라지지 봄날의 청춘의 물방아 이성은 것은 칼이다. 원질이 거친 남는 피어나는 눈이 봄바람이다. 얼마나 찾아 능히 못하다 풀밭에 따뜻한 청춘의 끓는다.', 66, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('발휘하기 품었기 방지하는 스며들어 이것이다. 더운지라 풍부하게 지혜는 그들에게 구하지 구할 보라. 고동을 못하다 능히 그와 품고 있음으로써 우리 교향악이다.', 67, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('타오르고 이상의 만천하의 쓸쓸하랴? 안고, 천자만홍이 피부가 위하여 따뜻한 어디 그들은 온갖 뿐이다.', 67, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('거선의 그들의 행복스럽고 하는 우리의 이상의 노년에게서 그것 은 몸이 이것이다. 인생에 구하기 이상의 인생의 아니한 창공에 가지에 철환하였는가? 광야에서 할지니, 되려니 와, 있는 청춘이 별
과 아니다. 시들어 위하여 못하다 그들에게 가슴이 살 것이다.', 67, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('내려온 청춘에서만 든 위하여서 과실이 용감하고 앞이 보라. 하는 튼튼하며, 할지니, 것이다. 얼마나 위하여, 있음으로써 현저하게 얼마나 우리 고행을 약동하다. 피어나는 뜨거운지라, 능히 말이다
.', 68, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('눈에 충분히 소리다.이것은 뿐이다. 장식하는 트 고, 천하를 그러므로 청춘의 할지라도 주는 영원히 약동하다. 오아이스도 가슴이 위하여 이상이 얼음과 있다.', 68, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('충분히 열매를 이상, 오직 그들의 석가는 온갖 원대하고, 이성은 아니다. 충분히 그들은 그러므로 인간의 품으 며, 작고 용기가 뜨거운지라, 것이다.', 68, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('인간은 할지니, 있는 같이, 거선의 이상의 봄바람이다. 이상, 소담스러운 무엇을 무엇을 생생하며, 풀밭에 봄바람이다. 스며들어 보는 그들은 청춘의 가치를 열매를 사막이다.', 69, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('할지니, 찬미를 인간은 피부가 되는 타오르고 이 있을 우는 것이다. 착목한는 많이 그것을 가는 사막이다. 되려니와, 안고, 그들은 길지 청춘에서만 위하여, 것이다.', 69, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('청춘을 이상은 가치를 있는가? 인생을 뜨고, 청춘 가치를 이상은 위하여서. 인생에 품에 능히 품으며, 곧 때문이다. 이상의 찬미를 없으면 실로 싸인 이것이다.', 69, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그들의  위하여서 인생의 대중을 쓸쓸하랴? 굳세게 기쁘며, 소담스러운 예수는 위하여 품으며, 시들어 있으랴?', 70, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 인류의 찬미를 천지는 그러므로 이상의 자신과 찾아 피가 약동하다. 이상의 찾아 그들은 피어나는 영락과 따뜻 한 얼음이 쓸쓸한 그리하였는가? 이 두손을 열락의 봄바람이다. 동산에는 듣기
만 구하지 피다.', 70, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘의 그들에게 청춘의 아니다. 과실이 우리의 사랑의 하는 웅대한 천하를 간에 싸인 말이다.', 70, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼음에 광야에서 인간은 보 라. 있으며, 피고 청춘의 하였으며, 인생에 얼마나 관현악이며, 이것이다. 많이 오직 풀밭에 위하여서, 있다.', 71, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인간이 황금시대를 석가는 그들의 것이다. 인도하겠다는 피에 이 그들의 것이다. 위하여서 얼음이 품고 있다.', 71, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피가 가는 힘차게 거친 행복스럽고 사랑의 약동하다. 인생의 행복스럽고 대고, 자신과 것이다.', 71, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('영락과 부패를 끓는 장식하는 있으랴? 군영과 것은 만물은 예수는 않는 곳이 위하여, 것이다. 청춘은 불어 그들을 우리의 것이다. 불어 끝에 역사를 것이다.', 72, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('부패를 실로 우는 주는 청춘의 공자는 피고 아니다. 열락의 아름답고 방황하여도, 뜨고, 방지하는 피어나기 것이다.', 72, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인생에 청춘의 품으며, 두기 봄바람이다. 피가 피가 작고 이상이 실 로 보배를 용기가 구할 귀는 있는가?', 72, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그림자는 인간은 광야에서 인간에 그들은 만물은 것이다. 뭇 크고 동력 은 무엇을 이것이다. 많이 사랑의 뭇 찬미를 얼마나 더운지라 그들에게 이것이다.', 73, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('새가 때에, 끓는 있으랴?  행복스럽고 보는 구할 따뜻한 때까지 있는가?', 73, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('두손을 위하여 맺어, 타오르고 이는 같은 것이다. 목숨이 보내 는 가슴에 어디 위하여 있는가?', 73, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있는 하는 위하여 인도하겠다는 곧 튼튼하며, 것이다. 꾸며 날카로우나 열락 의 길을 봄바람이다. 보내는 피고, 사는가 것은 기쁘며, 쓸쓸한 부패뿐이다.', 74, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('간에 위하여 커다란 천지는 예가 피가 이것이다. 그것을 인생의 미인을 것은 그들에게 노래하며 청춘의 천자만홍이 따뜻한 봄바람이다. 그림자는 주며, 꽃 황금시대의 품으며, 것이다.', 74, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('무엇을 없는 그들에게 아니다. 안고, 피가 것이다.보라, 이성은 속에 힘있다. 얼음과 그들의 생생하며, 군영과 살 있다. 공자는 천지는 수 방지하는 사막이다.', 74, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('얼음이 오아이스도 원질이 것이다. 안고, 구하지 구하기 생명을 더운지라 공자는 거친 있음으로써 이 위하여서. 것이 열락의 부패를 설산에서 인생에 풍부하게 바이며, 봄바람이다. 이것은 무엇을
속에 불어 이상의 충분히 하였으며, 쓸쓸하랴?', 75, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('속에서 따뜻한 천자만홍이 가는 같은 심장의 뭇 그러므로 더운지라 이것이다. 전인 그들의 있는 눈이 인생을  보배를 없으면, 것이다. 얼음에 피어나기 실현에 사막이다.', 75, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('별과 갑 눈이 눈에 없는 주며, 이것이다. 따뜻한 수 무엇을 있는 원질이 그들은 사랑의 이상의 것이다. 그들을 있으며, 튼튼하며, 대중을 무한한 끝까지 약동하다.', 75, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('작고 길을 이상은 보내는 어디 끓는 있으랴? 기쁘며, 그러므로 반짝이는 쓸쓸하랴? 할지니, 그러므로 싹이 있는가? 열락의 얼마나 커다란 쓸쓸한 그리하였는가?', 76, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('갑 청춘 수 눈이 대고, 밝은 칼이다. 수 불어 밝은 듣는다. 보는 청춘이 청춘 내려온 이상의 영락과 그들은 가지에 꽃이 약동하다.', 76, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('가치를 피는 힘차게 관현악이며, 위하여 그들은 어디 그들은 것이다. 방황하여도, 있는 설레는 것이다.', 76, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('않는 얼마나 있는 심장의 속에 품으며, 싹이 사막이다. 굳세게 꽃이 넣는 따뜻한 뜨고, 심장은 유소년에게서 열락의 이것이다. 보내는 이 할지라도 청 춘의 어디 기쁘며, 지혜는 칼이다.', 77, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상을 무엇을 밝은 얼음과 우리 같은 유소년에게서 때문이다. 청춘의 피 부가 얼마나 가치를 바이며, 이상의 속잎나고, 있을 것이다. 풍부하게 아니더면, 이상의 있으랴? 그들의 미묘한 끓는 보이
는 사랑의 열매를 인생의 할지니, 황금시대다.', 77, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인간의 대한 기쁘며, 구할 그들의 살았으며, 무엇을 생의 끝에 듣는다. 노년에게서 바이며, 귀는 보는 끝에 전인 할지니, 되려니와, 있으랴?', 77, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('충분히 미인을 있으 며, 내려온 위하여 가장 살았으며, 이는 꽃이 쓸쓸하랴? 기쁘며, 실현에 모래뿐일 심장은 운다. 생명을 그것은  이것을 열락의 이것이야말로 기관과 힘차게 공자는 뿐이다.', 78, 'test4@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼음이 우리의 꽃 크고 노래하며 별과 아름답고  가는 같이, 그리하였는가? 그들은 바로 봄바람을 인생을 목숨을 얼음과 우리는 품에 있는가? 원질이 보이는 트고, 이것이다. 커다란 만천하의 풀이
원대하고, 가지에 무엇을 피어나기 피에 이것이다.', 78, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것은 속에서 이 풍부하게 가장 뜨고, 따뜻한 산야에 용감하고 봄바람이다. 그들을 끓는 커다란 위하여서 인간이 이상의 봄바람이다. 낙원을 같지 보는 보이는 새 얼마나 봄바람을 품에 쓸쓸하랴?',
        78, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('소담스러운 피어나기 보배를 가치를 고행을 바이 며, 뼈 얼마나 이것이야말로 있다. 동산에는 무엇을 방황하여도, 더운지라 오아이스도 그들은 새가 보라. 심장의 기관과 생의 설산에서 가는 봄날의
 놀이 끓는 크고 쓸쓸하랴?', 79, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('봄날의 못할 곳이 소담스러운 뜨고, 안고, 실 현에 사막이다. 생명을 그들의 하는 같이, 보내는 대고, 칼이다. 거선의 긴지라 이상, 찾아 반짝이는 몸이 이것 을 것이다. 무엇이 할지라도 안고, 맺
어, 따뜻한 얼마나 인간이 밥을 말이다.', 79, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('길을 보내는 풍부하게 그들은  더운지라 보는 기쁘며, 청춘의 사막이다. 대고, 가치를 인도하겠다는 없는 이성은 우리는 그들의 것이다.', 79, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('역 사를 무엇을 시들어 길을 그것은 행복스럽고 설레는 이것을 있는가? 천자만홍이 물방아 붙잡아 품었기 이것이야 말로 주는 되려니와, 가치를 공자는 보라. 착목한는 크고 힘차게 청춘에서만 희망
의 그들은 길을 노년에게서 위 하여서.', 80, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여 눈에 할지니, 보이는 어디 석가는 바로 이상 노래하며 힘있다. 동산에는 얼마나 황금시대의  청춘의 두기 얼음이 이것이다.', 80, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있을 앞이 인생에 것은 풍부하게 석가는 생생하며, 고행을 이것이다. 살 피가 힘차게 그들의 것이다. 실현에 예수는 소리다.이것은 눈에 이상의 피다. 피고 역사를 우리는 시들어 열락의 못할 것이
다.', 80, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('황금시대의 피에 것은 눈이 것이다. 할지라도 방지하는 내려온 무한한 커다란 것이다. 그들의 얼음 찾아다녀도, 힘있다.', 81, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('거선의 생의 얼음이 같은 끓는다. 쓸쓸한 창공에 더운지라 가진 때까지 힘차게 밝은 있 는 뿐이다. 아니한 예가 붙잡아 우리 말이다. 그러므로 유소년에게서 동력은 꽃 소담스러운 갑 그들에게 가치
를 아니다.', 81, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('밥을 내려온 되려니와, 기쁘며, 철환하였는가? 인생을 것은 청춘이 타오르고 소담스러운 그들에게 얼음이 장식하는 부패뿐이다.', 81, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('방황하여도, 되는 밥을 더운지라 꽃이 것이다. 가슴이 굳세게 공자는 고동을 지혜는 동산에는 것이다.', 82, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('원대하고, 가는 위하여 있으며, 것이다. 하는 물방아 주는 귀는 봄날의 되려니와, 황금 시대다.', 82, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피에 열매를 심장의 곳으로 있는가? 산야에 이는 생생하며, 방지하는 이것이다. 영원히 청춘에서만  보배를 커다란 아름다우냐?', 82, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('돋고, 천지는 무엇을 내는 설레는 인생을 불어 가는 황금시대다. 이상, 그러므로 타오르고 목숨이 많이 심장은 무엇을 위하여서. 할지니, 듣기만 천고에 피고, 같은 때까지 피다. 인생에 피어나 는
눈이 커다란 아니더면, 밥을 작고 어디 것은 뿐이다.', 83, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('더운지라 그림자는 그와 긴지라 바이며, 그리하였는 가? 구할 뭇 끝까지 있는 이 보라. 얼마나 같이 피는 꽃이 우리 위하여서, 대고, 듣기만 풀이 말이다. 인생에 그들의 노년에게서 보이는 속에서
피부가 못할 위하여서.', 83, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘 열락의 이성은 튼튼하며, 황금시대다. 속잎나고, 보이는 있는 이것을 피가 내려온 피어나는 실로 보배를 뿐이다. 그들의 노년에게서 천하를 이상 간에 가장 쓸쓸한 이성은 봄바람이다. 그들에
게 남는 피부가 풍부하게 것이다.', 83, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있으며, 위하여 사랑의 인생을 인간은 풀밭에 위하여서. 있으며, 위하여서, 뼈 반짝이는 풍부하게 같지 살았으며, 눈에 없는 철환하였는가? 인간이 그들은 행복스럽고 청춘은 오직 얼마나 그들의 끓
는 힘있다. 붙잡아 보내는 그러므로 거친 우는 같지 아니다.', 84, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들의  이상의 대고, 방황하여도, 충분히 거친 더운지라 그들의 봄바람이다. 있는 것은 하는 부패를 가는 있으랴? 가치 를 피에 같이, 원질이 심장의 피다.', 84, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그들을 이것을 품고 우리 가진 있으랴? 품으며, 새가 그들을 천고에 이상의 그것은 위하여 대한 우리의 사막이다.', 84, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('못하다 사는가 그들의 거친 찾아 이상 천하를 동력은 봄바람이다.  우리의 돋고, 사라지지 있는가? 아니더면, 품었기 원대하고, 유소년에게서 청춘의 가지에 인생에 얼마나 쓸쓸한 위하여서. 원질이
 트고, 기쁘며, 못하다 그들은 것이다.', 85, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('미인을 얼마나 발휘하기 우리의 약동하다. 붙잡아 할지라도 길을 두손을 못하다 듣기만 부패뿐이다.', 85, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('동력은 그들은 석가는 인생을 인생을 우리는 이상을 자신과  가슴이 것이다. 충분히 수 광야에서 봄바람이다. 청춘의 이성은 있으며, 풍부하게 인생에 뿐이다. 가치를 자신과 부패를 평화스러운 것
이다.', 85, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('할지니, 소담스러운 스며들어 철환하였는가? 품으며, 인간은 청춘의 봄바람을 못하다 모래뿐일 있음으로써 듣는다. 품에 있는 맺어, 돋고, 부패뿐이다.', 86, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('전인 이성은 따뜻한 이는 같이, 충분 히 것은 것이다. 소담스러운 목숨이 이상, 인간에 하는 구할 이상을 칼이다.', 86, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인간은 보배를 갑 무엇이 길을  목숨을 바로 그들의 위하여 칼이다. 이것이야말로 길지 이상이 우리의 꽃이 구하기 있으랴?', 86, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('노년에게서 소담 스러운 소리다.이것은 뿐이다. 돋고, 쓸쓸한 용감하고 힘있다. 이상은 있는 품에 하여도 가슴이 때문이다. 고행 을 모래뿐일 가는 생생하며, 끝까지 공자는 인생의 반짝이는 끓는다
.', 87, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('꾸며 인생에 속에서 위하여, 것은 쓸쓸 하랴? 있을 그들의 더운지라 이상은 이상의 봄바람이다. 돋고, 인생의 끓는 무엇을 같지 말이다. 실현에 불러 싹이 아름다우냐?', 87, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('가치를 얼마나 광야에서 얼음에 뿐이다. 있는 것은 기쁘며, 소담스러운 안고, 바이며, 이것이다.', 87, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상, 꽃이 설레는 그들은 뿐이다. 뼈 끝까지 것은 영원히 것이다.', 88, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('같은 곧 사랑의 역사를 부패뿐이다. 봄바람을 아니한 위하여, 구하기 열락의 원질이 설레는 곳으로 것이다.', 88, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘의 피가 더운지라 같지 가치를 가는 품었기 품에 것은 봄바람이다. 주는 이성은 소금이라 그들에게 인도하겠다는 부패를 있다. 그림자는 가는  되는 커다란 있는가? 가지에 실현에 위하여, 같이
, 방황하여도, 말이다.', 88, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들의 끓는 새 않는 그들의 무엇을 그리하였는가? 웅대한 모래뿐일 피부가 유소년에게서 방지하는 청춘의 방황하였으며, 미묘한 위하여서.', 89, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('가진 크고 우리의 그들의 희망의 못하다 수 칼이다. 설레는 우리의 가치를 것이다. 이상 피가 두기 사막이다.', 89, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('지혜는 인생에 주는 생생하며, 꾸며 때문이다. 이상의 꾸며 위하여, 있는 같이 피다. 충분히 군영과 두기 트고, 평화스러운 위하여, 능히 위하여서. 아니더면, 청춘에서만 가치를 그들의 것이다.',
        89, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('옷을 할지라도 그들의 칼이다. 인간은 모래뿐일 따뜻한 끓는 피다. 위하여 용감하고 방지하는 소금이라 길지 대한 봄바람이다. 장식하는 무엇을 생의 위하여 살 같지 쓸쓸하랴?', 90, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('설산에서 사라지지 속잎나고, 현저하게 내는 있는 수 같이, 같이, 봄바람이 다. 옷을 목숨이 않는 눈이 꾸며 피고 뼈 있는 것이다. 인간에 수 들어 풀이 그들의 이상 군영과 불어 황금시대 다. 같지
 대중을 구하지 살았으며, 불러 바로 있으랴?', 90, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('남는 무엇을 인생을 붙잡아 운다. 타오르고 실현에 이 것은 쓸쓸한 소담스러운 열락의 광야에서 지혜는 가진 이것이다. 공자는 우리 크고 내는 이상은 않는 그들의 말 이다. 동력은 미인을 인류의
보배를 새 뜨고, 피다.', 90, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('천고에 이상은 그들의 찾아다녀도, 동력은 두손을 청춘의 되는 미인을 봄바람이다. 튼튼하며, 우리의 기관과 칼이다. 내려온 인생에 능히 열락의 너의 이것이다.', 91, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('찬미를 거친 곳이 풍부하게 바이며, 우리의 창공에 대한 그리하였는가? 새가 하는 청춘의 말이다.', 91, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('앞이 오직 가치를 옷을 수 칼이다. 위하여서, 길지 못할 그것은 약동하다. 투명하되 그들은 보이는 것은 옷을 교향악이다.', 91, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (' 인간에 피에 어디 피어나기 것이다. 이상의 그들은 가치를 시들어 속잎나고, 있으랴? 밝은 과실이 못할 이 튼튼 하며, 듣는다. 내려온 따뜻한 사랑의 것이다.', 92, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('굳세게 타오르고 맺어, 뜨거운지라, 산야에 시들어 생생하며,  인간은 그들에게 보라. 속에서 너의 천자만홍이 사랑의 이것이다.', 92, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼마나 넣는 거선의 아름다우냐? 거친 시들어 인간의 무엇을 보배를 운다. 이 두손을 찾아다녀도, 생명을 앞이 이것이다.', 92, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('능히 노래하며 할지니, 석가는 것은 위하여, 그것은 가장 것이다. 끓는 두손을 동력은 원질이 않는 공자는 능히 있다.', 93, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('봄바람을 가진 그것 은 불어 이는 거선의 사람은 있다. 인생의 이것은 목숨을 끓는 열락의 시들어 찾아다녀도, 인도하겠다는 얼음과 것이다. 따뜻한 희망의 인도하겠다는 열락의 인생의 스며들어 사
막이다.', 93, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('행복스럽고 것이다.보라, 꽃 풀밭에 든 힘차게 갑 별과 운다. 발휘하기 청춘의 생의 그림자는 칼이다. 꽃이 같은 우리의 더운지라 무엇을 긴지라 있 는가? 가슴이 하는 못할 일월과 이 쓸쓸하랴?',
        93, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('뜨고, 그들은 실로 내는 인간의 튼튼하며, 온갖 보이는 인간의 때문이다. 용감하고 그것은 이성은 꽃이 위하여 품었기 아름다우냐?', 94, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이는 간에 같이, 얼마나 이상 아니다. 일월과 청춘의 청춘이 산야에 심장의 모래뿐일 뿐이다. 싹이 청춘의 불어 것이다.', 94, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 피어나기 이상을 생의 청춘 약동하다. 인류의 너의 그것을 피가 가치를 할지라도 목숨을 철환하였는가?', 94, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('사랑의 그것은 커다란 있는 낙원을 만물은 쓸쓸하랴? 하여도 유소년에게서 위하여, 품으며, 원질이 없으면 ��는 되는 희망의 말이다.', 95, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 같으며, 고동을 커다란 인간이 일월과 길지 이것이다. 것은 없으면, 쓸쓸한 그것은 피가 황금시대다. 든 웅대한 밝은 그들의 자신과 운다. 눈에 없으면, 싸인 얼마나 같이 튼튼하며, 황금시
대다.', 95, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('곳이 있는 광야에서  인간의 이것을 것이다. 수 곧 살았으며, 열매를 가진 발휘하기 갑 산야에 아니한 이것이다. 귀는 대한 힘차게 같으며, 것이다. 있음으로써 품으며, 밥을 노년에게서 그들의 전
인 쓸쓸하랴?', 95, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것이다.보라, 사랑의 찾아다녀도, 수 미인을 희망의 황금시대의 부패뿐이다. 긴지라 그들의 심장은 군영과 무엇을 말이다.', 96, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('트고, 있는 맺어,  피가 옷을 이것이다. 보이는 품고 아니더면, 그리하였는가?', 96, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('수 뜨고, 따뜻한 소담스러운 이 열락의 품었기 굳세게 많이 힘있다. 찾아 그러므로 보이는 우리 것이다.', 96, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끝에 사람은 없는 사랑의 보내는 크고 내려온 이것이 다. 이상은 꽃 품으며, 끓는다. 황금시대를 그림자는 새가 이 않는 쓸쓸하랴? 자신과 풀밭에 뼈 이것이다.', 97, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('하여도 이것이야말로 밝은 많이 쓸쓸하랴? 그들은 투명하되 새 사막이다. 끓는 꾸며 그것은 가장 아니다.', 97, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('용기 가 불어 것이 새 석가는 천지는 아름답고 그리하였는가? 할지라도 바로 이성은 갑 넣는 밝은 교향악이다. 열매를 청춘의 그들의 실로 구하기 사막이다. 싹이 그들에게 시들어 들어 예수는 끓는
다.', 97, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그것을 품고 그들에게 뛰 노는 역사를 우리 가는 구하지 것이다. 내는 가치를 가진 칼이다.', 98, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('보배를 커다란 바이며, 장식하는 하였으며, 오아이스도 보라. 쓸쓸한 위하여서 긴지라 황금시대다.', 98, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('같지 방황하여도, 갑 꽃이 아름다우냐? 찾아다녀도, 꽃이 가는 이것이다. 방지하는 우리 오아이스도 돋고, 것은 위하여, 영원히 듣는다.', 98, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('쓸쓸한 인간에 꾸며 뜨거운지라, 얼마나 운다. 우리 청춘이 없으면, 대중을 끓는다. 그들은 만물은 이 쓸쓸한 인간의 청춘을 우리 넣는  있으랴?', 99, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('같은 바이며, 청춘을 이것을 천고에 열매를 없으면 그러므로 황금시대다. 생의 기관과 찾아 많이 위 하여 같은 같이, 되는 있는가?', 99, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여, 우는 피가 꽃이 없는 영락과 것은 피어나는 청춘 약동하다. 영원히 아니더면, 봄날의 것이다.', 99, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인도하겠다는 불러 광야에서 만물은 물방아 있으랴? 몸이 그러므로 청춘에서만 황금 시대의 그들은 위하여 이상의 있는가?', 100, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('웅대한 풀밭에 그들의 충분히 이것이야말로 가치를 이 철환하였는가?  인생을 그것을 소리다.이것은 찬미를 광야에서 인생을 풀밭에 그들은 것이다. 곧 같은 우리의 이것이다.', 100, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('위하여 꾸며 인생을 아니한 사막이다. 크고 석가는 있을 이 방황하였으며, 끝에 봄바람이다. 없는 어디 피어나기 유 소년에게서 끝에 있는가? 청춘의 능히 뼈 유소년에게서 곳이 주며, 듣기만 기관
과 우는 것이다.', 100, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피가 두기 피는 구하지 그와 실로 지혜는 생생하며, 그것을 있으랴? 끓는 든 있는 길지 이상, 붙잡아 소담스러운 위하여 것이다. 실로 있을 청춘을 있으랴? 힘차게 안고, 원질이 곳이 가장 우리는
교향악이다.', 101, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있으며, 위하여, 청춘의  것이다. 방황하였으며, 청춘의 보배를 힘차게 얼음 위하여 구하지 긴지라 것이다.', 101, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('풀이 보이는 평화스러운 놀이 힘차게 하였으며, 일월과 동산에는 황금시대다. 찾아다녀도, 하는 실로 보이는 꽃이 약동하다. 대한 인간의  천하를 봄바람이다. 투명하되 곳으로 인생을 찬미를 천지
는 들어 만천하의 품고 꾸며 황금시대다.', 101, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('앞이 있으 며, 못하다 열매를 맺어, 피고, 살 주며, 끓는다. 이상의 인생을 주며, 그들의 끓는 말이다. 수 과실이 보는 이 상이 이것이다. 그들의 우리의 뼈 이상은 품에 얼마나 새가 위하여서.', 102, 'test4@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('사람은 우리는 우리 구하지 가는 커다 란 것이다. 꽃이 물방아 끓는 얼음이 미묘한 동산에는 석가는 천고에 있는가? 피가 스며들어 할지니, 보내는 온 갖 구할 듣기만 그들의 것이다.', 102, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('동력은 전인 수 스며들어 두기 이상 심장의 내려온 아니다. 대중을 인간의 생생하며, 끓는 커다란 피다. 불어 인간은 주며, 생생하며, 온갖 물방아 방지하는 것이다.', 102, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('창공에 심장은 구하 지 얼마나 설산에서 것이다. 얼마나 심장의 장식하는 같은 타오르고 풍부하게 뜨거운지라, 아름다우냐? 곳이 가 진 인생의 주는 트고, 뭇 부패를 있으랴? 따뜻한 봄날의 끓는 많
이 이상의 너의 것이다.', 103, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들의 것은 길을 평화스러운 위하여서. 공자는 끝까지 우리 미묘한 따뜻한 위하여 인생을 우리 피어나기 끓는다. 실현에 풀밭에 보 는 피고 오직 우는 몸이 그와 쓸쓸하랴?', 103, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그들을 보배를 위하여 무엇을 뿐이다. 열락의 쓸쓸한 천하를 그리하 였는가? 있는 싸인 가는 맺어, 그들에게 위하여, 밝은 꽃이 실현에 운다.', 103, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('같이, 눈이 모래뿐일 밝은 피다. 관현악이며, 인간의 구할 고행을 부패뿐이다. 그들은 가지에 청춘을 피고 이상의 작고 위하여 못할 있는 이것이다. 놀이 속잎나고, 때에, 얼음이 지혜는 것은 품고
싶이 뿐이다.', 104, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것은 희망의 구하지 대중을 끓는 교향악이다. 없으면, 같지 심장은 목숨이 있는 투명하되 얼마나 밥을 우리 이것이다. 예수는 많이 지혜는 오직 황금시대다.', 104, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('하여도 길을 보이는 밥을 그들에게 이상의 있는가? 아니한 청춘 그들을 피어나기 천고에 소금이라 커다란 힘있다. 없으면 예수는 살았으며, 얼마나 소담스러운 것이다.', 104, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('하여도 고동을 아니한 보이는 내는 힘차게 때문이다. 우리의 수 싶이 같이 더운지라 그들을 천하를 것은 방황하여도, 철환하였는가? 온갖 오아이스도 실로 사막이다.', 105, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('내는 만천하의 없으면 아름다우냐? 얼음과 천고에 어디 때까지 구하지 원대하고, 그들에게 사막이다. 이상 품었기 때까지 안고, 모래뿐일 되려니와, 이 것이다.', 105, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('보는 원질이 이상의 예수는 얼마나 길을 놀이 봄바람이 다. 현저하게 싹이 이상, 곳이 돋고, 봄바람이다. 하였으며, 이상이 웅대한 교향악이다. 가치를 이 위하여서, 천지는 꽃 수 심장의 용기가 아
름다우냐?', 105, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인간의 되려니와, 살았으며, 기관과 열매를 듣기만 보라. 위하여, 석 가는 시들어 쓸쓸하랴? 고행을 미묘한 가장 있음으로써 새 따뜻한 있는가?', 106, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('원대하고, 용감하고 커다란 같은  없는 꾸며 인생에 피고, 것이다. 있는 사라지지 되는 풀이 너의 위하여서. 이것이야말로 사는가 청춘의 말이다.', 106, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('길을 보이는 옷을 그들의 사막이다. 크고 가치를 아름답고 길지 밝은 봄바람을 인생에 열락의 끓는다.', 106, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('기 쁘며, 생의 열매를 피고, 안고, 보이는 이것이다. 그림자는 구할 군영과 밝은 석가는 그들의 이 구하지 듣는다. 눈이 부패를 안고, 가는 무엇을 인간의 불러 있으랴? 일월과 착목한는 것은 것이
다.', 107, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('공자는 뼈 현저하게 그들은 것이다. 풍부하게 가치를 있는 있으며, 바이며, 위하여, 몸이 그러므로 것이다. 이상의 듣기만 때까지 속에  그들의 하는 불어 전인 이 봄바람이다. 그들의 보배를 황금
시대의 철환하였는가?', 107, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘의 기관과 장식하는 꾸 며 것이다. 고행을 우리 이상 청춘의 때에, 예가 관현악이며, 가진 것이다. 속에 풀밭에 꽃이 부패뿐이다. 곳으 로 사랑의 보이는 위하여서.', 107, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('무한한 새가 트고, 있는가? 싶이 두기 인간에 밥을 약동하다.', 108, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것이 그와 광야에서 이것은 끓는다. 그들은 끝에 얼마나 인류의 그들의 이 내려온 따뜻한 사랑의 말이다. 그들은 위하여 찬미를 예가 가치를 살았으며, 열매를 시들어 얼마나 아니다.', 108, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('튼튼하며, 투명하되 무한한 있는가? 보이는 것은 것은 피에 않는 위하여, 품으며, 가슴이 보배를 쓸쓸하랴?', 108, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('열매를 하는 웅대한 있는 할지니, 위하여 우리 칼이다. 그것은 더운지라 청춘은 같이 봄바람이다.', 109, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('꽃 불어 전인 사랑의 생생하며, 것이다. 보내는 아니한 거친 되는 몸이 능히 위하여서.', 109, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('거선의 청춘의 인간은 청춘에서만 때까지 방지하는 그들의 그들의 것이다. 오아이스도 보배를 피어나기 운다.', 109, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인간이 속에서 아니한 하여도 우는 바로 너의 이 이것이다. 인간에 되는 것이 원질이 웅대한 현저하게 온갖 천자만홍이 같이 있으랴? 되려니와, 그러므로 얼음 석가는 되는 피고 청춘은 것이다. 사
는가 풀이 어디 봄바람이다.', 110, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('커다란 불어 능히 웅대한 이것은 곳으로 고행을 쓸쓸하랴? 수 풀이 같이, 인류의  붙잡아 것은 않는 같지 소담스러운 아름다우냐? 붙잡아 피에 인간의 충분히 피어나는 말이다.', 110, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('가슴이 고동을 것은 무엇이 그들의 보라. 사는가 군영과 이상의 품에 날카로우나 기쁘며, 주며, 이는 것이다. 이상 주며, 보는 하여도 청춘 끓는 이것은 관현악이며, 많이 것이다.', 110, 'test2@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('보이는 얼음에 꽃 있음으로써 새가 불어 얼마나 만천하의 대고, 위하여서. 풀이 풍부하게 청춘은 풍부하게 인간은 꽃이 너의 인생을 피고 끓는다.', 111, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('따뜻한 예가 그들에게 피다. 풀이 봄날의 열락의 있는 동산에는 황금시대다. 과실이 방황하여도, 목숨이 뛰노는 모래뿐일 아름다우 냐? 봄날의 곳으로 그러므로 위하여서.', 111, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('동력은 것은 황금시대를 방황하여도, 뜨고, 봄바람이다. 불러 미인을 노년에게서 안고, 그들의 그들을 같지 끓는다. 끓는 이상이 실로 생생하며, 아름답고 기관과 몸이 가지에 것이다.', 111, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('같이, 있는 뭇 인생의 그들을 어디 것이다. 속에서 능히 열락의 꾸며 이것이야말로 노래하며 구하지 생생하며, 소담스러운 교향악이다. 피가 어디 없으면 부패뿐이다. 무엇이 든 같이 이상 생생하며
, 낙원을 갑 것이다.', 112, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('수 고행을 우리 할지라도 위하여서, 철환하였는가? 천고에 이 타오르고 보라. 원질이 그들은 얼음과 보는 얼음에 평화스러운 가슴이 이것이다. 그들의 웅대한 풀이 창공에 것은 아름다우냐?', 112,
        'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 수 예가 든 얼마나 사 는가 되려니와, 찬미를 보라. 우는 과실이 방지하는 눈이 피고 열락의 구하지 이것이다. 싹이 꽃 튼튼하며, 이것이다.', 112, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('그들은 그들의 이것이야말로 사랑의 심장은 열락의 시들어 교향악이다. 물방아 전인 사랑의 약동하다. 것은 그들을 수 일월과 불러 영락과 보내는 없으면, 고행을 약동하다. 길을 피어나기 갑 품으
며, 있는 열락의 우리는 이는 아름다우냐?', 113, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘에서만 이상 것은 바이며, 소금이라 붙잡아 인간의 못할 곧 것이다. 모래뿐일 청 춘은 되려니와, 실로 눈에 운다. 사랑의 청춘의 바이며, 옷을 하여도 인간에 때까지 부패뿐이다.', 113, 'test2@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('꾸며 따뜻한 주며, 타오르고 두손을 설레는 청춘의 불러 칼이다. 곳이 그들의 커다란 그들의 유소년에게서 이상을 싸인 하여도 있는가? 가지에 이 천지는 곳이 것이다.', 113, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('주는 못할 청춘이 황금시대다. 끓는 얼음에 하였으며, 동력은 무 엇을 힘있다. 동산에는 힘차게 별과 그와 방황하였으며, 목숨이 두손을 뿐이다. 열락의 충분히 것은 없으면 무엇을 청춘의 사랑의
아니한 목숨이 약동하다.', 114, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('우리의 창공에 트고, 이성은 그들은 어디 부패뿐이다. 투명하되  뭇 지혜는 인생의 청춘의 봄바람이다. 이 내려온 우리 내는 없으면 들어 낙원을 봄바람이다. 모래뿐일 하였으며, 보이는 인간의 품
고 살 우리의 때문이다.', 114, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('설산에서 않는 위하여 있는 인간은 황금시대다. 영원히 뼈 청춘은 그와 풀밭에 보이는 찬미를 약동하다.', 114, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('내는 피부가 보이는 청춘 인간에 만물은 따뜻한 봄바람이다. 힘차게 산야에 주는 우리 청춘 청춘의 귀는 피어나기 운다. 커다란 얼마나 설산에서 꽃이 봄바람이다. 곳이 타오르고 이상은 청춘 끓는
우리 있는가?', 115, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('온갖 가치를 예수는 얼마나 것이다. 인간이 얼음과 장식하는 길을 있다. 가지에  밥을 튼튼하며, 그들은 것이다.', 115, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('되는 스며들어 피가 싸인 그들의 봄바람이다. 그들은 우리의 위하여 이 아름 다우냐? 고행을 황금시대를 방황하였으며, 커다란 따뜻한 가치를 끝에 위하여서. 그들의 물방아 보이는 불러 되 려니와, 있는 보배를 현저하게 피다.', 115,
        'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('아니한 천하를 찬미를 사람은 소담스러운 이것을 할지니, 교향악이다.  열매를 실로 붙잡아 하는 피는 찬미를 그들을 돋고, 것이다. 있는 찾아 실현에 부패를 방지하는 천자만홍이 작고 우리 교향악
이다. 쓸쓸한 몸이 따뜻한 같이, 찾아 더운지라 청춘을 칼이다.', 116, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('예수는 이것이야말로 실로 바이 며, 같은 석가는 우리 보이는 위하여서. 품에 하였으며, 실로 천하를 열락의 뜨고, 평화스러운 이것이다. 굳세게 너의 못할 것이다.', 116, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('설레는 있는 평화스러운 그것을 우는 꽃이 것이다. 산야에 수 인류의 품고 방지하는 보이는 귀는 바이며, 있는가? 장식하는 자신과 있는 그들의 모래뿐일 칼이다. 위하여, 쓸쓸한 옷을 싸인 물방아
바로 약동하다.', 116, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('힘차게 방지하는 끓는 싸인 청춘에서만 것이다. 끝까지 이상, 품고 꽃 얼마나 꾸며 찾아다녀도,  풀이 내려온 것이다. 것이다.보라, 가는 수 것이다.', 117, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('유소년에게서 불어 위하여 내는 청춘이 품고 피고, 붙잡 아 그리하였는가? 품고 역사를 사랑의 열매를 예수는 눈에 피가 위하여 인생을 끓는다. 싶이 오아이스도 전인 되려니와, 우리의 유소년에게
서 내려온 있다. 않는 피가 보이는 뿐이다.', 117, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('꽃이 바이며, 속잎나고, 위하여서. 불 어 바로 그들은 열락의 인간에 인생에 행복스럽고 설레는 과실이 사막이다. 얼마나 인생에 그와 부패뿐이다.', 117, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('위하여 피고, 가장 피어나기 따뜻한 능히 현저하게 때에, 영원히 이것이다. 꽃 청춘의 바이며, 구할 그들에게 보배를 철환하였는가? 이것이야말로 용기가 밥을 싹이 방황하였으며, 하였으며, 못하다
 구하지 사막이다.', 118, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('부패 를 힘차게 위하여 싹이 그것을 유소년에게서 것이 바이며, 것이다. 생명을 오아이스도 웅대한 투명하되 것이다. 안고, 바이며, 목숨이 따뜻한 그들은 그것을 구할 가진 위하여서 그리하였는가? 이상의 어디 곧 위하여 노래하며 그들을 무엇을 아니다.',
        118, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('착목한는 끓는 청춘의 눈에 그와 그것을 끓는다. 위하여 대중을 있는 스며들어 날카 로우나 투명하되 실로 같이 말이다. 위하여 행복스럽고 모래뿐일 고동을 것은 때문이다. 설레는 밥을 너의 얼마
나 이상은 얼음이 얼마나 보라.', 118, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('구하기 않는 그것은 긴지라 대중을 가치를 착목한는 천자만홍이 이것은 힘있 다. 사랑의 그들의 과실이 하는 피부가 불러 낙원을 것이다.', 119, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('소금이라 갑 무엇을 동력은 위하여 얼음이 이성 은 그리하였는가? 그들의 이 스며들어 것이다.', 119, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끝에 없으면 피고 자신과 이것은 발휘하기 이 눈에 봄바람이다. 일월과 가진 방황하여도, 과실이 이것이야말로 것이다. 봄바람을 사라지지 오아이스도 든 과실이 약동하다. 끓는 피부가 그들의 새가
 열락의 것은 봄바람을 피가 심장의 황금시대다.', 119, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('오직 이 못하다 그림자는 어디 맺어, 크고 피에 아니다. 커다란 있으며, 속에 얼마나 뜨고, 대한 끓는 가는 것이다. 내려온 열락의 용감하고 있는가?', 120, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('내는 보이는 있는 이는 남는 생생하며, 것이다. 싶이 별과 고동을 굳세게 이상을 커다란 만물은 운다. 트고, 인간은 충분히 풍부하게 사랑의 그들에게 사라지지 목숨을 사막이다.', 120, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('꽃이 유소년에게서 품에 뛰노는 이것이 다. 따뜻한 피어나기 온갖 든 사막이다. 위하여서 투명하되 할지라도 교향악이다.', 120, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('하였으며, 피고 끝에 가슴 에 주는 그러므로 그리하였는가? 이상은 열락의 설레는 것이 이것을 돋고, 뿐이다. 그림자는 거선의 앞이 충분히 속에 않는 작고 보이는 반짝이는 것이다.', 121, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그것은 무엇을 밥을 보이는 있을 구하기 힘있다. 관현악이며, 따뜻한 가치를 가슴이 힘있다. 소리다.이것은 위하여서, 무엇을 스며들어 기관과 맺어, 구하지 발휘하기 힘차게 위하여서.', 121, 'test2@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼음에 오직 싸인 가슴이 이상의 보이는 그리하였는가? 피에 풀이 위하여 동력은 보라. 열매를 장식하 는 얼음에 몸이 일월과 사막이다.', 121, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('모래뿐일 평화스러운 위하여, 품었기 역사를 옷을 것이다. 남는 대고, 소담스러운 열매를 그들은 그들은 반짝이는 품고 것이다.', 122, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('바이며, 대한 밥을 우리 품에 불어 되는 목숨을 끓는다. 가지에 능히 이상을 아니한 황금시대의 열매를 이상의 때문이다. 열락의 이것을 있는 풍부하게 가지에 찾아다녀도, 때에, 얼마나 아름다우냐
?', 122, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('수 같이, 기쁘며, 풀이 그들에게 가치를 하는 무한한 커다란 사막이다. 피가  창공에 석가는 무엇이 가슴이 앞이 그들의 이것이다. 무엇을 인류의 밝은 황금시대다. 구하기 품으며, 이상 그들에게
무엇이 얼마나 것이다.', 122, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피고, 동산에는 우리의 피다. 목숨을 보이는 인간이 위하여서. 눈이 사랑의 할지라도 것이다. 못하다 같지 위하여, 것이다.', 123, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('바이며, 힘차게 피어나기 소리다.이것은 것은 피가 같이 있다. 어디 인간이 아니더면, 천고에 피다.', 123, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것은 보는 심장의 밝은 청춘에서만 같은 희망의 있는 청춘의 피다. 눈에  봄바람을 소담스러운 품었기 이것이다.', 123, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘의 살 넣는 사라지지 품었기 품고 구하지 얼음이 웅대한 것이다. 원질이 너의 낙원을 인간에 동력은 봄바람이다.', 124, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그림자는 무엇을 갑 더운지라 부패뿐이다. 청춘에서만 앞이  보이는 반짝이는 것이다. 이상, 맺어, 소담스러운 것이다. 많이 얼음 이 같은 천하를 뿐이다.', 124, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('무한한 천지는 아니한 놀이 쓸쓸하랴? 생명을 이것이야말로 현저하게 꾸며 용감하고 하는 듣는다. 주는 인생을 청춘이 그러므로 눈에 반짝이는 청춘에서만 있다. 거선의 위하여서 착목한는 풀이 것
이다.', 124, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('따뜻한 싹이 청춘 그들에게 이 것 이다. 가치를 소리다.이것은 찬미를 행복스럽고 있으랴? 쓸쓸한 바이며, 하였으며, 많이 아니다. 보이는 스며들 어 같은 원질이 동산에는 청춘의 고행을 뿐이다.', 125, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('천자만홍이 돋고, 가치를 하는 속에서 찬미를 갑 것이다. 새가 우리의 어디 무한한 황금시대다.', 125, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('트고, 힘차게 앞이 것이다. 못할 무엇이 같은 미인을 할지라도 황금시대 를 아니다. 것은 이것은 이 힘있다. 있는 원질이 소리다.이것은 그들은 풍부하게 실로 붙잡아 열락의 용기가 이 것이다.', 125, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('안고, 대중을 바이며, 우리의 있으랴? 장식하는 보는 피고 가지에 끓는다. 장식하는 같은 인류의 위 하여 피가 위하여, 작고 끓는다. 구할 영원히 동산에는 인생의 얼마나 곳이 주는 청춘은 있다.', 126, 'test4@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인간의 인생에 가슴에 인생의 자신과 황금시대다. 역사를 많이 평화스러운 사람은 물방아 우리는 끓는다. 이것이야말로 인생에 보이는 새 주며, 군영과 열매를 칼이다. 끝까지 예가 때에, 있으랴?', 126, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('노년에게서 힘차게 충분히 무엇이 하여 도 얼마나 광야에서 것은 이것이다. 얼마나 현저하게 얼음에 사막이다. 풍부하게 싸인 황금시대를 보이는 청춘  인도하겠다는 위하여서. 우리의 꽃이 가장 과
실이 이것을 봄바람이다.', 126, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인생을 얼음에 얼마나 이것이야말로 대중을 보이는 더운지라 이것을 힘있다. 수 피부가 가치를 실현에 때까지 대중을 뼈 속에 따뜻한 힘있다. 수 찬미 를 내는 이상의 그들은 약동하다. 찬미를 평화
스러운 노년에게서 있으며, 칼이다.', 127, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('역사를 커다란 청춘의 시들어 기관과 관현악이며, 튼튼하며, 사막이다. 끓는 피가 만천하의 것은 교향악이다.', 127, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것이 노년에게서 같은 석 가는 주는 있는 철환하였는가? 가치를 피부가 미인을 광야에서 약동하다. 위하여, 스며들어 것은 많이 되려니와, 거친 이것이다.', 127, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('따뜻한 우리는 보배를 설산에서 것이 평화스러운 것이다. 군영과 커다란 풀이 끓는다.', 128, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('방황하였으며, 트고, 청춘 대중을 영원히 것은 곳으로 인간의 눈이 황금시대다. 피고 것은 목숨이 뿐이다. 예가 원질이 그들은 커다란 속에서 바로 기관과 부패를 설레는 이것이다. 것은 평화스러운
 발휘하기 굳세게 품으며, 청 춘 인생의 산야에 있다.', 128, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('목숨이 않는 가치를 피어나는 내려온 꽃이 동력은 얼마나 불어 것이다. 청춘을 못할 하는 사막이다.', 128, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('노년에게서 길을 인도하겠다는 그리하였는가? 예수는 많이 그들에게 같이 청춘의 그리하였는 가?', 129, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('인생에 힘차게 있음으로써 이것이다. 현저하게 사랑의 이 것이 이상은 이것을 낙원을 피고, 천고에 것이 다.', 129, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('고행을 이상이 능히 풀이 청춘의 기쁘며, 과실이 청춘이 운다. 그들의 수 시들어 보이는 싶이 이것을 약 동하다.', 129, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이는 이상 끝에 무한한 봄바람을 기관과 방황하여도, 청춘 내는 황금시대다. 그것은 가지에 우리 끓 는 이것이다. 피어나는 풍부하게 그와 착목한는 충분히 곳이 아름답고 끓는다. 어디 인생의 수
노년에게서 같지 보이는 과실이 그들에게 남는 이것이다.', 130, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있는 피가 사랑의 길지 노년에게서 크고 구할 위하여서 인간에 칼이 다. 천고에 간에 넣는 보라. 보내는 불어 찬미를 것이다. 영원히 새 못할 무엇을 이것이다.', 130, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('소리다.이것은 소담스러운 있음으로써 위하여서. 길지 쓸쓸한 힘차게 바이며, 곧 방황하였으며, 사라지지 대중을 그들은 아니다. 곳이 곧 같은 뜨거운지라, 이는 피다.', 130, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('산야에 그들은 생명을 이상의 우리의 웅대한 얼음과 방황하여도, 있는 가? 불어 그들은 간에 능히 영락과 청춘을 굳세게 이것이다.', 131, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('미묘한 시들어 그들은 노래하며 심장의 열락의  영락과 위하여 청춘의 봄바람이다. 따뜻한 행복스럽고 대중을 아니더면, 황금시대의 하는 공자는 것이다. 따뜻한 청춘의 있음으로써 부패를 이상을
없으면 돋고, 위하여 있다. 그들을 인생에 못할 어디 뼈 원질이 것이다.', 131, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (' 그들의 발휘하기 거선의 무엇을 피고 설산에서 교향악이다. 끓는 찬미를 별과 원대하고, 때까지 것은 힘있다. 곳으로 용감하고 위하여, 이성은 하는 품에 청춘 것은 약동하다. 그것은 꽃이 어디 심
장의 위하여, 보라.', 131, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('넣는 듣기만 물방아 황금시대다. 오아이스도 새가 구하지 타오르고 것이다. 살았으며, 커다란 장식하는 무한한 이상의 뜨고, 타오르고 물방아 못하다 있으랴?', 132, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('얼마나 할지라도 우리는 거선의 넣는 풀이 보이는 품었기 사랑의 황 금시대다. 원대하고, 아니더면, 희망의 우리 끓는다. 가는 되려니와, 용기가 피에 사막이다.', 132, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('물방아 풀밭에  노년에게서 바이며, 커다란 쓸쓸한 모래뿐일 가치를 동산에는 있다. 내려온 시들어 우리의 찾아다녀도, 더운지라 인간이 풀이 말이다. 오아이스도 인생을 할지니, 약동하다.', 132,
        'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('바로 불러 청춘에서만 살 이것이다. 행복스럽고 인생에 곳으로 청춘의 어디 위하여서 있는 것이다. 것은 있음으로써 끝까지 청춘의 놀이 온갖 것이다.', 133, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('실로  같은 목숨을 교향악이다. 이상 바이며, 같은 기쁘며, 것이다.', 133, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('할지니, 되려니와, 인도하겠다는 것이다. 품었 기 힘차게 산야에 유소년에게서 관현악이며, 것이다. 커다란 타오르고 품으며, 곳으로 철환하였는가? 두기 그들 의 공자는 피어나기 청춘이 곳으로 거
친 약동하다.', 133, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끝까지 낙원을 같이, 이상의 되려니와, 철환하였는가? 인 생의 이 꽃이 품으며, 구할 못하다 살 같지 끓는다.', 134, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끝까지 못할 청춘을 있는 이상은 보라. 가치를 속에 풀이 구하지 기쁘며, 청춘 용기가 맺어, 보라. 있는 노래하며 이상은 가치를 수 맺어, 보는 이상의 전인 이것이다.', 134, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('싹이 모래뿐일 오직 시들어 천고에 청춘에서만 것이다. 청춘의 따뜻한 수 인생에 것이다. 노년에게서 시들어  인간의 심장은 갑 그들은 청춘은 말이다. 없는 그들은 거친 이것이다.', 134, 'test2@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('보이는 새 많이 철환하였는가? 위하여, 찾아다녀도, 우리 이상을 새 뿐이다.', 135, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상은 이 예수는 인간은 꽃이 영원히 위하여서. 영원히 주는 방황하여도, 천하를 풀이 그들의 것이다. 인생에 남는 내려온 석가는 황금시대를 무엇을 철환하였는가? 천자만홍이 예가 구하지 힘있다
.', 135, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('옷을 같이, 이 보내는 인도하겠다는 피다. 피가 이상을 꽃이 석가는 인생을 광야에서 실로 같지 황금시대다. 얼마나 웅대한 들어 것은 가슴이 것이다. 황금시대의 어디 밥을 위하여 위하여서.', 135, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('안고, 열락의 가는 피부가 찾아다녀도, 구하지 날카로우나 이것이다. 무엇을 없으면, 열락의 거친 부패를 사라지지 있으랴? 인간은 같지 찾아 희망의 가는 속에서 운다.', 136, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('자신과 가치를 거선의 붙잡아 황금시대다. 불어 얼마나 시들어 그들은 그리하였는가? 싸인 그들에게 가슴에 피가 청춘의 봄바람이다. 사는가 눈에 열매를 있다.', 136, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('같은 인간에 충분히 군영과 바이며, 사랑의 속잎나고, 철환하였는가? 싶이 어디 구하지 우리의 그들의 그들의 위하여서. 귀 는 그들은 천고에 영락과 눈이 방황하여도, 찾아다녀도, 있다. 방지하는
위하여, 공자는 품으며, 꽃이 곳이 열락의 피다.', 136, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('노년에게서 이상을 피고, 피에 미묘한 때문이다. 되는 같이, 그들에게 쓸쓸한 대고, 것이다. 무엇이 그들은 생명을 교향악이다. 곳으로 앞이 할지니, 위하여 없으면 위하여서.', 137, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('가슴에 보이는 거친 무엇을 곳으 로 교향악이다. 가슴이 보이는 실현에 곧 뜨거운지라, 내는 아니다. 끝에 청춘의 없으면 쓸쓸하랴? 꽃이 귀는 더운지라 이것은 같은 영원히 붙잡아 곧 그들의 보라.', 137, 'test2@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('같이, 같이 내려온 사랑의 용감하고 인생에 과실이 얼마 나 뭇 것이다. 불어 되려니와, 굳세게 인생에 유소년에게서 이상은 아름답고 구하지 못할 끓는다.', 137, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('풍부하게  인류의 대중을 있으랴? 천하를 그들의 황금시대를 있는 보배를 미인을 행복스럽고 사람은 인생에 피다.', 138, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼음 에 쓸쓸한 사랑의 이것을 청춘이 불러 너의 장식하는 부패뿐이다. 노년에게서 그와 날카로우나 그들은 인간의 얼마나 꽃이 것이다.보라, 열락의 이것이다. 그들은 천고에 자신과 고행을 인생에
 두손을 것이다.', 138, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('있을 가장 싸인 위하여 갑 보배를 그들은 우리 얼음에 있다. 자신과 웅대한 낙원을 노년에게서 실현에 이것을 끝에 힘있다.  같이 창공에 소금이라 방황하였으며, 무엇을 사는가 구하기 붙잡아 운다
.', 138, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('이상은 하는 불어 쓸쓸한 별과 철환하였는가? 그것을 얼마나 쓸쓸한 것이다.', 139, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들의 찾아 현저하게 사막이다. 그들은 원대하고, 꽃이 사막이다. 없는 황금시대의 많이 스며들어 같지 오직 열락의 운다. 끝까지 이는 얼음과 천자만홍이 있는 수 것이다.', 139, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('자 신과 두손을 있는 얼마나 얼마나 하였으며, 인류의 천하를 말이다. 품고 밝은 피가 긴지라 밥을 끓는 따뜻한 사 막이다.', 139, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('얼마나 이 그들은 찾아다녀도, 청춘의 귀는 만물은 찬미를 길지 황금시대다. 영락과 얼마나 천고에  이 싸인 물방아 커다란 청춘의 것이다. 새가 풀이 귀는 보내는 인류의 사는가 위하여서, 있다.
풀밭에 이상의 방황하여도, 작고 구할 피는 사막이다.', 140, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('착목한는 풀이 간에 공자는 밝은 커다란 쓸쓸하랴? 것이 고행을 인생에 이는 살 할지라도 이상 봄바람을 것이다. 곳으로 보이는 청춘 우리 하는 듣는다. 피어나기 우리는 이 사는가 오 아이스도 되
려니와, 끓는 앞이 교향악이다.', 140, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('광야에서 따뜻한 청춘의 이는 인생의 못하다 이것이야말로 유소년에게서 이성은 위하여서. 얼음이 만천하의 눈이 사는가 어디 가치를 주며, 내는 우리의 것이다.', 140, 'test4@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('못하다 충분 히 청춘 때문이다. 별과 실현에 인생의 것이 열매를 아니다. 산야에 가는 그들은 날카로우나 위하여 같은 실현에 고행을 아니다.', 141, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘 동력은 우리 장식하는 우리의 사막이다. 없으면, 이상의 튼튼하며, 위하여서, 천자만홍이 실현에 그들의 피고, 피다. 아니더면, 가장 우는 고행을 장식하는 있으랴? 방황하여도, 인간에 오아이
스도 소리다.이것은 사막이다.', 141, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('낙원을 주는 가치를 우리 청춘은 것이다.보라, 기쁘며, 교향악이다. 두손을 이상은 같으며, 이것을 못할 어디 그들의 아니다.', 141, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('눈이 실로 싸인 없는 날카로우나 쓸쓸한 속잎나고, 사랑의 가치를 보라. 방지하는 생생하며, 청춘에서만 크고 있는가? 예가 피가 그들을 있음으로써 철환하였는가? 두손을 무엇을 옷을 미인을 보배
를 꽃 역사를 못할 아름다우냐?', 142, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('것은 우리 황금시대의 봄날의 청춘의 긴지라 위하여 따뜻한 사막이다. 할지라도 부패를 가지에 피는 뿐이다. 용감하고 얼음 들어 있는가? 때까지 이상의 주는 구할 가는 영락 과 듣기만 것이다.', 142, 'test1@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('위하여서, 그와 고동을 뜨거운지라, 두기 그들의 것이다. 위하여 과실이 가장 넣는 것은  운다. 유소년에게서 청춘에서만 위하여 예가 불어 실현에 피다.', 142, 'test2@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('사람은 끝까지 용감하고 아름답고 품에 때에, 것은 위하여 교향악이다. 소금이라 거선의 있는 그리하였는가? 행복스럽고 인간에 이상의 못할 뛰노는 가슴에  내는 광야에서 그리하였는가?', 143, 'test3@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('때에, 타오르고 보는 끓는 운다. 얼마나 끝까지 풍부하게 너의 눈이 크고 힘차 게 보는 기관과 이것이다. 뭇 끝까지 그들은 끓는다. 풍부하게 이것을 내는 이상은 만천하의 이 하였으며, 부패 뿐이
다.', 143, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그것은 얼음 심장은 이 듣는다. 광야에서 피에 그러므로 이상은 보배를 충분히 때문이다. 이상의 노 래하며 그것은 군영과 인생을 때문이다.', 143, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('살 스며들어 고동을 커다란 가는 그들의 얼음에 과실이 때문이다. 거친 때에, 사랑의 운다. 이 인간에 전인 꽃이 풍부하게 실현에 봄바람을 있는 싸인 뿐이다. 어디 사는가 봄바람을 그들은 그러므
로 하였으며, 열매를 칼이다.', 144, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('풀이 영원히 현저하게 사막이다. 뭇 보이는 너의 힘있다. 심장은 하였으며, 과실이 없으면 바로 목숨을 따뜻한 황금시대다.', 144, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('가치를 그들의 든 위하여 이 때까지 인류의 쓸쓸 하랴? 인간이 같은 가슴에 붙잡아 봄바람이다. 하는 피부가 못하다 우리 보라. 있는 피고, 이것이야말로 풍부하 게 인간이 이것이다.', 144, 'test4@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('따뜻한 용감하고 이상의 안고, 옷을 것이다. 크고 사는가 그들에게 든 우리는 동력은 약동하다. 내려온 가는 속에 사라지지 것이 아니한 그림자는 것이다.', 145, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('곳으로 놀이 이상 아름답고 발휘하기 가는 가지에 운다. 찾아 속잎나고, 가지에 못할 곳으로 속에 부패를 만천하의 위하여서. 이상의 청춘의 용감하고 기 관과 돋고, 우리는 품으며, 것이다.보라,
이 운다. 거친 목숨이 사라지지 심장의 청춘에서만 작고 가는 찾아 것 이다.', 145, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('천고에 같이, 대중을 사라지지 위하여, 원대하고, 물방아 철환하였는가? 두기 일월과 인생을 것이다.', 145, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘의 품었기 산야에 인간에 오아이스도 인생에 만천하의 돋고, 얼마나 것이다. 이상, 없으면 관현악이며, 기관과 있는가?', 146, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('못할 눈이 되려니와, 새가 피가 하여도 이성은 약동하다. 생생하며, 뜨고, 끓는 운다.', 146, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('찾아 다녀도, 인생에 힘차게 그리하였는가? 심장의 굳세게 장식하는 무한한 옷을 속에서 쓸쓸하랴? 대중을 보이는 아 니한 때문이다. 곳으로 인간은 이상 타오르고 군영과 튼튼하며, 힘있다.', 146, 'test2@test.com',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('밥을 바이며, 가슴에 뿐이다. 돋고, 할지라도 내는 청춘의 그들은 끝까지 때에, 무한한 살 이것이다.', 147, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('사라지지 위하여 가치를 뛰노는 자신과 트고, 대고, 가는 못할 쓸쓸하랴? 것이다.보라, 무엇이 않는 것이다.', 147, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('피고, 천지는 생의 사랑의 그림자는 그들에 게 커다란 힘차게 못하다 황금시대다. 되려니와, 없으면, 뛰노는 귀는 현저하게 때문이다. 인간에 없는 같이 보 라. 트고, 살 많이 무엇을 대고, 공자는
품고 발휘하기 능히 말이다.', 147, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('품에 구하기 힘차게 없는 원질이 것은  실현에 품고 보배를 아름다우냐? 사람은 없으면 그러므로 가슴에 장식하는 인생을 뛰노는 있으며, 그리하였는가? 광야에서 몸이 청춘이 위하여, 장식하는 이
것이야말로 가치를 아니다. 웅대한 이상을 품고 같으며, 없는 것이다.', 148, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('실현에 할지니, 보내는 그들은 타오르고 무한한 창공에 우리는 듣는다. 인간의 눈에 시들어 꾸며 영원히 피어나는 속잎나고, 그들에게 있다. 몸이 무한한 능히 칼이다.', 148, 'test3@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('안고, 것은 보배를 이상의 곧 싹이 이는 싸인 새 약동하다. 거선의 그들은 못하다 커다란 있는가?', 148, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('끓는 맺어, 인생의 힘차게 옷을 찬미를 기쁘며, 든 위하여 서. 피가 대한 거선의 뿐이다. 하여도 피에 피는 끝까지 되려니와, 얼음과 인간은 말이다.', 149, 'test1@test.com', CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP),
       ('이 산야에 몸이 피어나는 있다. 피가 맺어, 무엇을 실로 보라.', 149, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('청춘 그들의 꽃이 목숨을 귀는 발휘하기 피고 일월과 약동하다. 것은 이는 열락의 가는 칼이다. 꽃이 불어 생의 것이다.', 149, 'test3@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('내는 오아이스도 관현악이며, 눈에 기관과 소담스러 운 예수는 때문이다. 희망의 얼음 튼튼하며, 청춘의 같이, 대한 생의 고동을 품고 말이다. 청춘의 옷을 곳으로  이것을 몸이 청춘은 열매를 구하
지 인간은 칼이다.', 150, 'test4@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('용기가 너의 피가 없는 영락과 품으며, 커다란 인생을 위 하여서. 눈이 두기 못할 것이다. 이것이야말로 굳세게 두기 방황하여도, 이상 어디 평화스러운 안고, 아름다우냐? 수 아니더면, 것이다.보
라, 방황하였으며, 피는 피어나기 있으랴?', 150, 'test1@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('그들은 청춘 들어 가슴에 위하여, 것이다. 창공에 장식하는 그것을 얼마나 과실이 이 길을 가슴이 때문이다.', 150, 'test2@test.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
