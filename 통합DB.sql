drop table DICTIONARY;
drop table GUIDE;
drop table board;
drop table user_db;

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_no` INT NOT NULL AUTO_INCREMENT,
  `bd_no` INT NOT NULL,
  `mem_no` INT NOT NULL,
  `content` VARCHAR(300) NULL,
  `comment_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_no`, `bd_no`, `mem_no`)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `user_db`(
    `mem_no` int unsigned not null primary key AUTO_INCREMENT,
    `nickname` varchar(45),
    `email` varchar(45),
    `pass` varchar(200),
    `memPoint` int,
    `dogamList` varchar(1000) DEFAULT 'null',
    `profile_image` VARCHAR(100) NULL DEFAULT 'https://i.pravatar.cc/200'
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `board` (
  `bd_no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `bd_title` VARCHAR(45) NOT NULL,
  `bd_writer` VARCHAR(45) NOT NULL,
  `bd_category` VARCHAR(45) NULL, 
  `bd_content` mediumtext NULL,
  `bd_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bd_views` INT NULL, 
  `bd_favorite` INT NULL,
  PRIMARY KEY (`bd_no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DICTIONARY` (
  `dic_no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `eng_name` VARCHAR(45) NULL,
  `category_big` VARCHAR(45) NULL,
  `category_mid` VARCHAR(45) NULL,
  `popularity` FLOAT NULL,
  `hit` SMALLINT NULL,
  `thumbnail` VARCHAR(200) NULL,
  `guide` VARCHAR(200) NULL,
  PRIMARY KEY (`dic_no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `GUIDE` (
  `guide_name` VARCHAR(20) NOT NULL,
  `image_path` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`guide_name`))
ENGINE = InnoDB;



select * from board;

INSERT INTO board VALUES(null, "글제목1","글 작성자1" , "글 카테고리","글 내용" ,default ,1,0);
   

insert into guide values ("고철","https://res.cloudinary.com/datgsovwo/image/upload/v1635747373/guide/rhcjffb.png");
insert into guide values ("금속캔","https://res.cloudinary.com/datgsovwo/image/upload/v1635747372/guide/rmathrzos.png");
insert into guide values ("대형","https://res.cloudinary.com/datgsovwo/image/upload/v1635747372/guide/eogudvPrlanf.png");
insert into guide values ("발포합성","https://res.cloudinary.com/datgsovwo/image/upload/v1635747373/guide/qkfvhgkqtjdtnwl.png");
insert into guide values ("불연성-종량제","https://res.cloudinary.com/datgsovwo/image/upload/v1635747372/guide/qnfdustjd-whdfidwp.png");
insert into guide values ("비닐","https://res.cloudinary.com/datgsovwo/image/upload/v1635747373/guide/qlslffb.png");
insert into guide values ("유리병","https://res.cloudinary.com/datgsovwo/image/upload/v1635747373/guide/dbflqud.png");
insert into guide values ("유해","https://res.cloudinary.com/datgsovwo/image/upload/v1635747374/guide/dbgo.png");
insert into guide values ("음식물","https://res.cloudinary.com/datgsovwo/image/upload/v1635747374/guide/dmatlranf.png");
insert into guide values ("의류","https://res.cloudinary.com/datgsovwo/image/upload/v1635747373/guide/dmlfb.png");
insert into guide values ("전용함","https://res.cloudinary.com/datgsovwo/image/upload/v1635747374/guide/wjsdydgka.png");
insert into guide values ("종이","https://res.cloudinary.com/datgsovwo/image/upload/v1635747374/guide/whddl.png");
insert into guide values ("종이팩","https://res.cloudinary.com/datgsovwo/image/upload/v1635747372/guide/whddlvor-whddlzjq.png");
insert into guide values ("가전제품","https://res.cloudinary.com/datgsovwo/image/upload/v1635747372/guide/vPrkwjswpvna.png");
insert into guide values ("플라스틱","https://res.cloudinary.com/datgsovwo/image/upload/v1635747372/guide/vmffktmxlr.png");


insert into dictionary values (1001,"가격표","price tag","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2403129/24031298246.20200904012815.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1002,"가구류","upholstery","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2736171/27361719824.20210530005504.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1003,"가발","wig","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_1978790/19787901818.20190615141226.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1004,"가습기","humidifier","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2134366/21343662805.20191120110909.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1005,"가위","Scissors","생활폐기물","종량제봉투/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2406299/24062993168.20200906230215.jpg?type=f640","<p><strong>재질에 맞게</strong> 배출하되, 여려재질이 섞인 경우, <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1006,"개수대","sink","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_1967861/19678617636.20190608134359.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1007,"거울","mirror","생활폐기물/대형폐기물","불연성-종량제/대형",0,0,"https://shopping-phinf.pstatic.net/main_1473543/14735436847.20180707203225.jpg?type=f640","<p><strong>크기에 따라</strong> 해당 폐기물로 배출</p>");
insert into dictionary values (1008,"걸레","Mop","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2546763/25467636751.20210102224928.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1009,"계란껍질","eggshell","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2797142/27971424306.20210713020126.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1010,"고무장갑","Rubber glove","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2415935/24159353522.20200915100338.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1011,"골판지","cardboard","생활폐기물","종이/플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2673220/26732206788.20210412162054.jpg?type=f640","<p><strong>종이</strong> &lt; 일반 골판지<br /><strong>플라스틱</strong> &lt; PP 골판지</p>");
insert into dictionary values (1012,"골프 클럽 백","golf club bag","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2570045/25700458522.20210122114949.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1013,"골프공","golf ball","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2750236/27502361522.20210609095247.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1014,"공구류(철)","Tools (iron)","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2733421/27334212206.20210527212151.jpg?type=f640","<p>다른 재질이 많이 섞인 제품은 분리해서 배출하며, 분리가 어렵다면 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1015,"공기청정기","air cleaner","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2359125/23591251491.20200727125603.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1016,"광고전단지","advertisement flyer","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2406396/24063966091.20200907021550.jpg?type=f640","<p>비닐코팅된 종이는 <strong>종량제봉투</strong> 배출</p>");
insert into dictionary values (1017,"구두, 샌들, 슬리퍼","shoes, sandals, slippers","생활폐기물","의류/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2245549/22455494853.20210322114658.jpg?type=f640","<p><strong>의류 및 원단류</strong> 배출 방법을 참고하여 배출하거나 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1018,"국자","ladle","생활폐기물","고철/플라스틱/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2411404/24114045689.20200910202136.jpg?type=f640","<p><strong>고철</strong> &lt; 금속, 비금속 국자<br /><strong>플라스틱</strong> &lt; 플라스틱 국자<br /><strong>종량제봉투</strong> &lt; 나무 국자</p>");
insert into dictionary values (1019,"그릇","Bowl","생활폐기물","불연성-종량제/고철/플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2483836/24838366019.20201114183914.jpg?type=f640","<p><strong>불연성-종량제</strong> &lt; 도자기&middot;유리그릇<br /><strong>고철</strong> &lt; 금속, 비금속그릇<br /><strong>플라스틱</strong> &lt; 플라스틱 그릇</p>");
insert into dictionary values (1020,"기름(기계)","oil (machine)","","전문시설",0,0,"https://shopping-phinf.pstatic.net/main_2800470/28004702051.20210715012028.jpg?type=f640","<p><strong>전문처리시설</strong>로 배출</p>");
insert into dictionary values (1021,"기름(식용)","oil (edible)","생활폐기물","전용함",0,0,"https://shopping-phinf.pstatic.net/main_2373722/23737224498.20200810112343.jpg?type=f640","<p><strong>전용수거함</strong>으로 배출</p>");
insert into dictionary values (1022,"기타(악기)","Guitar (instrument)","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_7901098/7901098176.20200826175358.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1023,"깨진유리","broken glass","생활폐기물","불연성-종량제",0,0,"https://shop-phinf.pstatic.net/20210328_57/1616936111810G4V09_JPEG/18071939602378472_1903520974.jpg?type=m510","<p><strong>불연성폐기물</strong> 배출방법을 참조하여 배출</p>");
insert into dictionary values (1024,"나무젓가락","wooden chopsticks","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2404779/24047792035.20200905032328.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1025,"나무조각, 나뭇가지, 나무줄기","wood chips, twigs, tree trunks","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_1461653/14616534957.20180623175323.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없다면 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1026,"나사(못)","screw","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2633952/26339529020.20210312212427.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1027,"나침반","Compass","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2723261/27232617829.20210521230359.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1028,"낙엽","fallen leaves","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2490819/24908196641.20201119181550.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1029,"낚싯대","fishing rod","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2531256/25312563522.20201221170225.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1030,"난로(전기난로)","hearth (electric stove)","폐가전제품/대형폐기물","가전제품/대형",0,0,"https://shopping-phinf.pstatic.net/main_1308923/13089239667.20200921135417.jpg?type=f640","<p><strong>대형폐기물</strong> 또는 <strong>가전제품</strong>으로 배출</p>");
insert into dictionary values (1031,"낫","sickle","생활폐기물","고철/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2551570/25515709024.20210107004049.jpg?type=f640","<p><strong>고철</strong>로 배출하되, 가능하다면 손잡이 부분(나무재질 등)을 분리하여 배출</p>");
insert into dictionary values (1032,"내열식기류","heat-resistant food","생활폐기물","불연성-종량제",0,0,"https://shopping-phinf.pstatic.net/main_2703836/27038360647.20210505183025.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출</p>");
insert into dictionary values (1033,"냄비뚜껑(강화유리)","Pot lid (tempered glass)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2742909/27429098399.20210604004021.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1034,"냉장고(냉동고)","Refrigerator (freezer)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2677309/26773091522.20210415145807.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1035,"노트북","laptop","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2717549/27175491522.20210625092635.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1036,"농약용기","pesticide container","기타폐기물","주의",0,0,"https://shopping-phinf.pstatic.net/main_2713816/27138165487.20210513184316.jpg?type=f640","<p>내용물을 다 사용한 후 따로 봉투에 담아 배출</p>");
insert into dictionary values (1037,"다리미","iron","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2122614/21226144328.20201130085608.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1038,"도끼","ax","생활폐기물","고철/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2404592/24045924397.20200904204115.jpg?type=f640","<p><strong>고철</strong>로 배출하되, 가능하다면 손잡이 부분(나무재질 등)을 분리하여 배출</p>");
insert into dictionary values (1039,"도마","cutting board","생활폐기물","종량제봉투/플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2758670/27586705522.20210616123321.jpg?type=f640","<p><strong>종량제봉투</strong> &lt; 나무도마<br /><strong>플라스틱</strong> &lt; 플라스틱 도마</p>");
insert into dictionary values (1040,"도자기류","pottery","생활폐기물","불연성-종량제",0,0,"https://shopping-phinf.pstatic.net/main_2377050/23770507523.20200813123304.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출</p>");
insert into dictionary values (1041,"돋보기","reading glasses","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2401332/24013320482.20200902204505.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1042,"디지털카메라","digital camera","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2314930/23149301493.20201202191924.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1043,"뚝배기","ttukbaegi","생활폐기물","불연성-종량제",0,0,"https://shopping-phinf.pstatic.net/main_2035155/20351551665.20190723170648.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출</p>");
insert into dictionary values (1044,"라디오","radio","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2159617/21596171125.20191224171108.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1045,"라이터(일회용)","Lighter (disposable)","생활폐기물","종량제봉투/주의",0,0,"https://shopping-phinf.pstatic.net/main_2716195/27161951649.20210515213835.jpg?type=f640","<p>모두 사용한 후 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1046,"라켓(배드민턴, 테니스 등)","Racket (badminton, tennis, etc.)","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_1789976/17899767155.20190307150445.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없다면 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1047,"랩(사용 후)","Wrap (after use)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_1341993/13419930921.20180129105445.jpg?type=f640","<p>사용한 랩은 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1048,"랩의 심","heart of rap","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2694260/26942600630.20210427204319.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1049,"런닝머신","Running Machine","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2034702/20347023958.20210517144254.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1050,"리코더(플라스틱)","recorder (plastic)","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2696814/26968146418.20210429205706.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1051,"마스크","mask","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2349078/23490783490.20201207161536.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1052,"마우스패드","mouse pad","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2367000/23670005495.20200803163634.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1053,"마커펜, 만년필","marker pens, fountain pens","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2409056/24090562299.20200909050442.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1054,"매트, 매트리스","mat, mattress","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2312274/23122745490.1.20210315182503.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1055,"맥주병뚜껑(철, 알루미늄)","Beer bottle caps (iron, aluminum)","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2809883/28098834240.20210722013501.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1056,"머그컵(도자기류)","Mug (porcelain)","생활폐기물","불연성-종량제",0,0,"https://shopping-phinf.pstatic.net/main_2355311/23553110495.20210107175343.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출</p>");
insert into dictionary values (1057,"머플러(목도리)","scarf (shawl)","생활폐기물","의류",0,0,"https://shopping-phinf.pstatic.net/main_2761750/27617508117.20210617221342.jpg?type=f640","<p><strong>의류 및 원단류</strong> 배출 방법을 참고하여 배출</p>");
insert into dictionary values (1058,"메가폰(플라스틱)","Megaphone (Plastic)","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_1924865/19248650935.20200101142317.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1059,"면도기(일회용)","Razor (disposable)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2247053/22470538662.20200413141454.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1060,"면도칼","razor","생활폐기물","종량제봉투/주의",0,0,"https://shopping-phinf.pstatic.net/main_2520129/25201298488.20201212225921.jpg?type=f640","<p>수거원이 다치지 않도록 종이 등으로 감싸서 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1061,"면봉","cotton swab","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2793248/27932485850.20210710034935.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1062,"명함","Business card","생활폐기물","종이/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2720599/27205999037.20210519220321.jpg?type=f640","<p><strong>종이류</strong>로 배출하며, 플라스틱 합성지 등 다른 재질 포함시 <strong>종량제봉투</strong>에 배출</p>");
insert into dictionary values (1063,"명함지갑","business card holder","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2126243/21262435387.20210422121417.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1064,"모니터(컴퓨터 TV)","Monitor (Computer TV)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2018988/20189888243.20200915115734.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1065,"모자(의류)","hat (clothing)","생활폐기물","의류/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2532970/25329702252.20201222210317.jpg?type=f640","<p><strong>의류 및 원단류</strong> 배출 방법을 참고하여 배출하거나 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1066,"목발","crutches","생활폐기물/대형폐기물","고철/재질별분리/대형",0,0,"https://shopping-phinf.pstatic.net/main_2422684/24226844308.20200921173323.jpg?type=f640","<p><strong>대형폐기물</strong> 또는 <strong>고철</strong> 등 재질에 맞게 배출</p>");
insert into dictionary values (1067,"목재","wood","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_1136466/11364667819.20171219051526.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없다면 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1068,"문갑, 문짝","doorknob, doorknob","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2661846/26618469770.20210402194007.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1069,"물티슈","wet tissue","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2506714/25067143523.20201202150416.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1070,"밀짚모자","straw hat","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2732053/27320536314.20210526234032.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1071,"바나나껍질","banana peel","생활폐기물","음식물",0,0,"https://shopping-phinf.pstatic.net/main_1430807/14308073993.20180515220751.jpg?type=f640","<p><strong>음식물류 폐기물</strong>로 배출</p>");
insert into dictionary values (1072,"바둑판","checkerboard","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2618534/26185343849.20210228172138.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1073,"바베큐그릴","BBQ Grill","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_1825200/18252009808.20190322194056.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1074,"밥상","dining table","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2404239/24042396200.20200904171947.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1075,"방석","A cushion","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_1055894/10558943092.20170914062916.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1076,"백과사전, 사전","Encyclopedia","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2800410/28004107405.20210714224605.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1077,"백열전구","incandescent light bulb","생활폐기물","불연성-종량제",0,0,"https://shopping-phinf.pstatic.net/main_1182686/11826864276.20180909115618.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출</p>");
insert into dictionary values (1078,"벼루","ink stone","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2404911/24049118282.20200905045252.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1079,"벽돌","brick","생활폐기물","불연성-종량제",0,0,"https://shopping-phinf.pstatic.net/main_2409013/24090131176.20200909043612.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출</p>");
insert into dictionary values (1080,"벽시계","Wall clock","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2112460/21124603868.20191021123234.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1081,"보온병","Thermos","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2406398/24063989669.20201016145301.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1082,"복사기","copy machine","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2569930/25699304522.20210316103708.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1083,"볼펜","pen","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2059441/20594415713.20190812125428.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1084,"볼풀공","ball pool","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_1772518/17725189210.20190226150216.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1085,"분무기(플라스틱)","atomizer (plastic)","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2809845/28098453777.20210722001625.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1086,"분유 깡통","milk powder can","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2411915/24119151527.20200911114353.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1087,"붓","brush","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2511025/25110255442.20201205200553.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1088,"블라인드","blind","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2118347/21183478745.20191029143930.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1089,"비닐봉지(일회용)","plastic bag (disposable)","생활폐기물","비닐",0,0,"https://shopping-phinf.pstatic.net/main_2795493/27954939898.20210711203408.jpg?type=f640","<p><strong>비닐</strong>로 배출</p>");
insert into dictionary values (1090,"비닐장판","vinyl sheet","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2809851/28098515289.20210722003746.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1091,"비닐코팅종이","vinyl coated paper","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2549002/25490029458.20210105005617.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1092,"비디오카메라(캠코더)","video camera","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1462816/14628169694.20180816160330.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1093,"비디오테이프","video tape","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_4025123/4025123049.20120211195318.jpg?type=f640","<p>내부 필름은 분리하여 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1094,"빗, 헤어브러시","comb, hair brush","생활폐기물","재질별분리/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2204714/22047145381.20200225115738.jpg?type=f640","<p><strong>재질에 맞게</strong> 배출하되 나무 빗 등은 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1095,"빨대","straw","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2795411/27954117206.20210711185027.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1096,"사다리","ladder","생활폐기물/대형폐기물","고철/대형",0,0,"https://shopping-phinf.pstatic.net/main_2674746/26747465378.20210413191915.jpg?type=f640","<p><strong>대형폐기물</strong> 또는 <strong>고철</strong>로 배출</p>");
insert into dictionary values (1097,"사인펜","sign pen","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2407421/24074213099.20200908004311.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1098,"사진","picture","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2716079/27160793431.20210515185836.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1099,"사진인화지","photo paper","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2513306/25133066638.20201207201543.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1100,"삽","shovel","생활폐기물/대형폐기물","재질별분리/대형",0,0,"https://shopping-phinf.pstatic.net/main_2607877/26078773592.20210221174335.jpg?type=f640","<p><strong>대형폐기물</strong> 또는 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1101,"상한 음식","Rotten food","생활폐기물","음식물",0,0,"http://daesungsc.kr/data/goods/P0000YXM/thumb-ba2844047c3bf6ace100ae9849815f09_500x500.gif","<p><strong>음식물류폐기물</strong>로 배출</p>");
insert into dictionary values (1102,"생선(먹고 남은)","fish (leftovers)","생활폐기물","음식물/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2829202/28292023554.20210804163450.jpg?type=f640","<p>생선뼈는 <strong>종량제봉투</strong>에 버리고, 나머지는 <strong>음식물</strong>로 배출</p>");
insert into dictionary values (1103,"샤프펜슬","mechanical pencil","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2638210/26382109019.20210316175654.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1104,"샴푸용기","shampoo container","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2698428/26984286720.20210430203004.jpg?type=f640","<p>내부를 헹구고 <strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1105,"서랍장","chiffonier","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_1609909/16099095058.20181113144557.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1106,"서류봉투(갈색 종이)","Briefcase (brown paper)","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2499992/24999922044.20201126201715.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1107,"선풍기","fan","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1982642/19826425951.20200625161849.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1108,"성냥","matches","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2794420/27944208728.20210710224045.jpg?type=f640","<p>물에 적신 후 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1109,"세면대","washstand","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2715991/27159912791.20210515171349.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1110,"세탁기","washing machine","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2503852/25038525522.20201130085638.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1111,"셔틀콕(배드민턴공, 깃털공)","Shuttlecock (Badminton Ball, Feather Ball)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2062452/20624522886.20190819010812.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1112,"소스용기","mayonnaise jar","생활폐기물","플라스틱/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2407550/24075501190.20200908040443.jpg?type=f640","<p>내부를 헹구고 <strong>플라스틱</strong> 또는 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1113,"손목 시계","watch","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2597096/25970968804.20210423162110.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 처리, 건전지는 분리하여 <strong>전용수거함</strong>으로 배출</p>");
insert into dictionary values (1114,"솜","cotton","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2407611/24076110951.20200908042605.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1115,"솜이불","cotton quilt","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2399204/23992041534.20200901113751.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1116,"송곳","awl","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2446797/24467977299.20201015182806.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1117,"수세미","Scrubbers","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2406318/24063185509.20200907000942.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1118,"수조, 수족관","fish tank, aquarium","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2795536/27955365317.20210711222444.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1119,"수첩","note","생활폐기물","종이/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2642232/26422320204.20210319183811.jpg?type=f640","<p><strong>종이류</strong> 또는 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1120,"숯","charcoal","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2703799/27037999040.20210505173823.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1121,"스노우보드","snowboard","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2509408/25094085522.20201204141925.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1122,"스캐너","scanner","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_5747322/5747322364.20210401155212.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1123,"스케이트보드","skateboard","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2540485/25404856571.20201228204216.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1124,"스키용구류","ski equipment","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2376162/23761623446.20200812161917.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1125,"스탠드","stand","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2704680/27046802527.20210506152443.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1126,"스폰지","sponge","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2287218/22872188879.20200516003749.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1127,"스프레이, 부탄가스","spray, butane gas","생활폐기물","금속캔/주의",0,0,"https://shopping-phinf.pstatic.net/main_2126182/21261821369.20191108175507.jpg?type=f640","<p>금속캔(부탄가스통) 배출방법 참고</p>");
insert into dictionary values (1128,"스피커","speaker","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_7872712/7872712963.20140925112335.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1129,"식기세척기(식기건조기)","Dishwasher (dish dryer)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2490086/24900868523.20201119091420.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1130,"식물, 나무","plant, tree","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2406392/24063926947.20200907020340.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1131,"식용유용기(플라스틱)","Cooking oil container (plastic)","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2632534/26325341858.20210311201842.jpg?type=f640","<p>모두 사용 후 <strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1132,"신문지","newspaper","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2484072/24840725453.20201114225845.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1133,"신발","shoes","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2536049/25360490521.20210301154204.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1134,"신발장","shoe closet","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2793246/27932460403.20210710034636.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1135,"싱크대","sink","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2479498/24794981525.20201111105004.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1136,"쌀통","rice barrel","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2310842/23108425494.20200615112700.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1137,"쌀포대","rice sack","생활폐기물","종이/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2439612/24396123167.20201008181222.jpg?type=f640","<p><strong>종이류</strong> 또는 재질에 맞게 배출</p>");
insert into dictionary values (1138,"쓰레받기","dustpan","생활폐기물","플라스틱/고철",0,0,"https://shopping-phinf.pstatic.net/main_2691312/26913120634.20210425184632.jpg?type=f640","<p><strong>플라스틱</strong> &lt; 가정용 플라스틱 쓰레받기<br /><strong>고철</strong> &lt; 고철 쓰레받기</p>");
insert into dictionary values (1139,"아기욕조, 아기침대","Baby bath, baby cot","생활폐기물/대형폐기물","재질별분리/대형",0,0,"https://shopping-phinf.pstatic.net/main_2391221/23912214996.20200826190320.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1140,"아령","dumbbell","생활폐기물","고철/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2317795/23177957490.20210603151700.jpg?type=f640","<p><strong>고철</strong> 또는 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1141,"아이스팩","ice pack","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2599902/25999022635.20210215185705.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1142,"악기","instrument","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2429026/24290267030.20210624124026.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없는 경우 <strong>대형페기물</strong>로 배출<br />※악기는 폐가전 제품 무상방문 수거 대상품목이 아님</p>");
insert into dictionary values (1143,"압력솓","pressure","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_5734778/5734778215.20200908110443.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1144,"애완동물 용변 시트","pet toilet seat","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2601510/26015104512.20210216201638.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1145,"애완동물 음식캔","pet food cans","생활폐기물","금속캔/주의",0,0,"https://shopping-phinf.pstatic.net/main_1423949/14239496377.20180507155023.jpg?type=f640","<p><strong>금속캔</strong>으로 배출</p>");
insert into dictionary values (1146,"애완동물집, 운반케이스","Pet House, Carrying Case","생활폐기물","재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2716003/27160035639.20210515172847.jpg?type=f640","<p><strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1147,"액자","Photo Frame","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_1516434/15164349963.20181010233952.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1148,"앨범","album","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2406300/24063005051.20200906230813.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1149,"야구공","baseball","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_5640259/5640259350.20180716145024.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1150,"야구글러브","baseball glove","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_8864114/8864114424.20201110115030.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1151,"야구배트","baseball bat","생활폐기물","재질별분리/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_5725357/5725357246.20201112091040.jpg?type=f640","<p><strong>재질에 맞게</strong> 배출 또는 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1152,"약 종류","drug type","생활폐기물","전용함",0,0,"https://shopping-phinf.pstatic.net/main_2403216/24032161645.20200904023258.jpg?type=f640","<p>약국, 보건소 등의 <strong>전용수거함</strong>으로 배출</p>");
insert into dictionary values (1153,"양초","candle","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2507169/25071695274.20201202191036.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1154,"에어매트","air mat","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2066416/20664164754.20190819105124.jpg?type=f640","<p><strong>종량제봉투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1155,"에어컨","air conditioner","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1955270/19552709162.20191025120804.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1156,"엔진오일","engine oil","기타폐기물","전문시설",0,0,"https://shopping-phinf.pstatic.net/main_1495807/14958074626.20180803100930.jpg?type=f640","<p><strong>전문처리시설</strong>(카센터 등)로 배출</p>");
insert into dictionary values (1157,"여행가방(트렁크)","suitcase (trunk)","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2386404/23864042314.20200822174748.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1158,"역기","weightlifting","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2481780/24817804723.20201113022908.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1159,"연필, 색연필","pencil, colored pencil","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2626301/26263016307.20210306180447.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1160,"연필깎이","pencil sharpener","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2742815/27428152487.20210603205354.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1161,"오디오세트","audio set","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_4104767/4104767774.20120211202829.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1162,"오렌지껍질","orange peel","생활폐기물","음식물",0,0,"https://shop-phinf.pstatic.net/20210617_157/1623902528241a6l97_JPEG/25038423962882323_285491378.jpg?type=o640","<p><strong>음식물류폐기물</strong>로 배출</p>");
insert into dictionary values (1163,"온풍기","hot air blower","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1760751/17607512804.20191231203348.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1164,"옷걸이(세탁소 흰색 철사)","Hanger (Laundry White Wire)","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_1264706/12647065652.20171106225851.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1165,"와이퍼","wiper","생활폐기물","재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_9139206/9139206784.20170310100808.jpg?type=f640","<p><strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1166,"와인셀러","wine cellar","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1138551/11385518725.20170419150752.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1167,"완충재(뽁뽁이)","cushioning material (bubble)","생활폐기물","비닐",0,0,"https://shopping-phinf.pstatic.net/main_2512629/25126296526.20201207122937.jpg?type=f640","<p><strong>비닐류</strong>로 배출</p>");
insert into dictionary values (1168,"요가매트","yoga mat","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2771374/27713742522.20210625111150.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1169,"우산","umbrella","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2751175/27511757524.20210610043508.jpg?type=f640","<p>뼈대와 비닐을 분리하여, 각각의 분리수거함으로 배출, 분리가 어렵다면 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1170,"유리병","glass bottle","생활폐기물","유리병/주의",0,0,"https://shopping-phinf.pstatic.net/main_2401409/24014097191.20200903004430.jpg?type=f640","<p><strong>유리병류</strong>로 배출</p>");
insert into dictionary values (1171,"유리병뚜껑(철, 알루미늄)","Glass bottle caps (iron, aluminum)","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2401360/24013605996.20200902215930.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1172,"유리판, 유리제품","glass plate, glassware","생활폐기물/대형폐기물","불연성-종량제/대형",0,0,"https://shopping-phinf.pstatic.net/main_1055721/10557215925.20161028212250.jpg?type=f640","<p><strong>불연성폐기물</strong> 또는 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1173,"유모차","stroller","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_1848513/18485133260.20200914120755.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1174,"윤활유","lubricant","기타폐기물","전문시설",0,0,"https://shopping-phinf.pstatic.net/main_2409019/24090196665.20200909044951.jpg?type=f640","<p>구입처와 상담 후 배출</p>");
insert into dictionary values (1175,"응접세트","reception set","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2733487/27334879014.20210528001016.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1176,"의류","clothing","생활폐기물","의류",0,0,"https://shopping-phinf.pstatic.net/main_2665073/26650739290.20210405190927.jpg?type=f640","<p><strong>의류 및 원단류</strong>로 배출</p>");
insert into dictionary values (1177,"의류건조대","clothes drying rack","생활폐기물","고철/플라스틱/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2403089/24030895798.20200903235310.jpg?type=f640","<p><strong>고철</strong>, <strong>플라스틱</strong> 등 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1178,"의자","chair","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_1562566/15625661497.20181009164343.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1179,"이불","bedding","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2399204/23992041534.20200901113751.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1180,"인형류","puppets","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_1091883/10918830271.20170113170904.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1181,"자동차 부품","Automotive Parts","기타폐기물","전문시설",0,0,"https://shopping-phinf.pstatic.net/main_2800729/28007290921.20210715050554.jpg?type=f640","<p>중고센터, 판매처 등과 상담하여 처리</p>");
insert into dictionary values (1182,"자루걸레","mop","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2578955/25789555556.20210129191610.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1183,"자석","magnet","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2403185/24031852142.20200904020523.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1184,"자전거","bicycle","기타폐기물/대형폐기물","전문시설/대형",0,0,"https://shopping-phinf.pstatic.net/main_2731619/27316198522.20210526141252.jpg?type=f640","<p><strong>대형폐기물</strong>로 처리하거나, 중고센터 등과 상담하여 처리</p>");
insert into dictionary values (1185,"잡지","magazine","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2797142/27971422050.20210713015927.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1186,"장난감류","toys","생활폐기물/대형폐기물","재질별분리/종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2392345/23923451081.20200827173111.jpg?type=f640","<p>크기에 따라 <strong>대형폐기물</strong> 또는 <strong>재질에 맞게</strong> 배출 (여러재질이 섞인 경우 <strong>종량제봉투</strong>로 배출)</p>");
insert into dictionary values (1187,"장롱","wardrobe","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2096812/20968129845.20190927162420.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1188,"장식장","cabinet","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2655823/26558237523.20210329143821.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1189,"장판","veneer","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2768961/27689616386.20210623034329.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1190,"재떨이","ashtray","생활폐기물","불연성-종량제/고철",0,0,"https://shopping-phinf.pstatic.net/main_2406253/24062533308.20200906204435.jpg?type=f640","<p><strong>불연성-종량제</strong> &lt; 도자기&middot;유리재떨이<br /><strong>고철</strong> &lt; 금속류 재떨이</p>");
insert into dictionary values (1191,"전기밥솔","electric rice brush","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2446543/24465434523.20201016140333.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1192,"전기비데","electric bidet","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1219608/12196081670.20180914112405.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1193,"전기오븐레인지","electric oven","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2460826/24608262522.20201117162907.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1194,"전기코드류","electrical cords","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2527747/25277479523.20210805121516.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1195,"전기포트","electric pot","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_7595892/7595892729.20210409095808.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1196,"전단지","leaflet","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2405661/24056616401.20200906042834.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1197,"전동칫솔","electric toothbrush","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2383937/23839379523.20210621150352.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1198,"전자레인지","Microwave","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2452287/24522874522.20201020095111.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1199,"전자사전(전자수첩)","Electronic Dictionary (Electronic Notebook)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1295865/12958658022.20190607154313.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1200,"전자피아노","electronic piano","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_1951927/19519276702.20190528173937.jpg?type=f640","<p>종량제봉투에 담을 수 없는 경우 대형폐기물로 처리<br />※악기는 폐가전 제품 무상방문 수거 대상품목이 아님</p>");
insert into dictionary values (1201,"전지","battery","생활폐기물","전용함",0,0,"https://shopping-phinf.pstatic.net/main_8583382/8583382533.20200709094708.jpg?type=f640","<p><strong>전용수거함</strong>으로 배출</p>");
insert into dictionary values (1202,"전축","fully immersed","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2733327/27333278957.20210527194258.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1203,"전화기(팩스포함)","Telephone (including fax)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1574733/15747335643.20200708174437.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1204,"전화번호부","phone book","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2748086/27480861111.20210607213501.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1205,"접착제(본드 등)","Adhesives (bonds, etc.)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2541679/25416791496.20201229193722.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1206,"정기장판","regular edition","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2096850/20968502640.20210218114248.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출 (전기이불담요 포함)</p>");
insert into dictionary values (1207,"정수기","water fountain","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2308499/23084992490.20200609114121.jpg?type=f640","<p><strong>대형가전</strong>으로 배출</p>");
insert into dictionary values (1208,"젖꼭지(아기용품)","Nipples (baby products)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_6194170/6194170410.20171208141227.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1209,"젖병(아기용품)","Baby bottles (baby products)","생활폐기물","플라스틱/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2453672/24536728526.20201021142335.jpg?type=f640","<p>젖병의 몸체와 윗부분의 젖꼭지는 분리하여 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1210,"조각칼","carving knife","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2679084/26790840324.20210416215248.jpg?type=f640","<p>수거원이 다치지 않도록 종이 등으로 감싸서 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1211,"종이기저귀","paper diapers","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2681282/26812820827.20210418174318.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1212,"종이상자","paper box","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2459035/24590352099.20201025191635.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1213,"종이심","paper lead","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2403113/24031137931.20200904011438.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1214,"종이조각","piece of paper","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2545630/25456306635.20210101231628.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1215,"종이팩(우유팩 등)","Paper cartons (milk cartons, etc.)","생활폐기물","종이팩",0,0,"https://shopping-phinf.pstatic.net/main_9924874/9924874045.20160617104336.jpg?type=f640","<p>내부에 알루미늄박이 붙어 있다면 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1216,"주전자(철, 알루미늄)","Kettle (iron, aluminum)","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_1708422/17084224097.20190118114311.jpg?type=f640","<p>플라스틱 뚜껑 등은 돌려서 제거한 후 <strong>고철</strong>로 배출</p>");
insert into dictionary values (1217,"줄자","tape measure","생활폐기물","재질별분리/종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2410310/24103100741.20200910011958.jpg?type=f640","<p><strong>재질에 맞게</strong> 배출 또는 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1218,"지우개","Eraser","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2572658/25726581416.20210124183935.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1219,"진열대","display stand","생활폐기물/대형폐기물","재질별분리/대형",0,0,"https://shopping-phinf.pstatic.net/main_2579926/25799266307.20210130165913.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1220,"차 찌꺼기","tea grounds","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_1524435/15244356324.20180905161406.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1221,"찬장","cupboard","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2610875/26108758033.20210223192956.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1222,"찻잔(도자기류)","Teacup (porcelain)","생활폐기물","불연성-종량제",0,0,"https://shopping-phinf.pstatic.net/main_2618650/26186506524.20210228200101.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출</p>");
insert into dictionary values (1223,"책","book","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2742800/27428005884.20210603203843.jpg?type=f640","<p><strong>종이류</strong>로 배출</p>");
insert into dictionary values (1224,"책상, 책장","desk, bookshelf","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2550688/25506881528.20210106111042.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1225,"천체망원경","astronomical telescope","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_5632645/5632645663.20120211200147.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1226,"철사","wire","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2406429/24064290792.20200907034637.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1227,"철판(가정요리용)","Teppanyaki (for home cooking)","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2809835/28098355533.20210721234817.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1228,"청소기","vacuum cleaner","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2658598/26585988527.20210331115731.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1229,"체온계(건전지, 디지털)","Thermometer (battery, digital)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_5635027/5635027368.20210318093227.jpg?type=f640","<p>건전지는 분리하여 <strong>전용수거함</strong>으로 배출</p>");
insert into dictionary values (1230,"체중계","the scale","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2541792/25417928250.20201229220904.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1231,"축구공","soccer ball","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2743621/27436215523.20210604095013.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1232,"충전식전지","rechargeable battery","생활폐기물","전용함",0,0,"https://shopping-phinf.pstatic.net/main_8529381/8529381487.20150518170743.jpg?type=f640","<p><strong>전용수거함</strong>으로 배출</p>");
insert into dictionary values (1233,"치약용기","toothpaste container","생활폐기물","플라스틱/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_1226839/12268397055.20170915173215.jpg?type=f640","<p>플라스틱 또는 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1234,"치킨박스","chicken box","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2716010/27160100805.20210515173651.jpg?type=f640","<p>기름에 오염된 내부 종이는 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1235,"침구류(이불, 베개 등)","Bedding (duvets, pillows, etc.)","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2657312/26573127527.20210330150214.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1236,"침대","bed","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_1971792/19717928090.20210125110409.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1237,"칫솔","toothbrush","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2751719/27517194522.20210610094929.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1238,"카펫, 융단","carpet, carpet","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_1424602/14246021189.20180508112508.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1239,"캐비넷","cabinet","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2191852/21918523400.20200208013208.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1240,"캔 따개","can opener","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2433819/24338193969.20201002181728.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1241,"캡(플라스틱 뚜껑)","Cap (plastic lid)","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2401525/24015253950.20200903032129.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1242,"커튼, 커튼 레일","curtains, curtain rails","대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_5739987/5739987215.20120211210556.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1243,"커피메이커","coffee maker","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1477263/14772635364.20190226111705.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1244,"커피원두, 찌꺼기","coffee beans, ground","생활폐기물","종량제봉투",0,0,"https://shop-phinf.pstatic.net/20210220_282/1613820580723bxwGm_JPEG/14956414490923329_272600402.jpg?type=o640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1245,"컴퓨터","computer","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2257015/22570152560.20210415143405.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1246,"컵","cup","생활폐기물","불연성-종량제/고철/플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_1258893/12588936716.20171031180054.jpg?type=f640","<p><strong>불연성-종량제</strong> &lt; 도자기&middot;유리 컵<br /><strong>고철</strong> &lt; 금속&middot;비금속 컵<br /><strong>플라스틱</strong> &lt; 플라스틱컵</p>");
insert into dictionary values (1247,"코르크따개(와인따개)","Cork opener (wine opener)","생활폐기물","종량제봉투/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2503507/25035071367.20201129204356.jpg?type=f640","<p>수거원이&nbsp;다치지&nbsp;않도록&nbsp;종이&nbsp;등으로&nbsp;감싸서&nbsp;<strong>종량제봉투</strong>로 배출<br /><strong>재질에&nbsp;맞게</strong>&nbsp;해당&nbsp;분리수거함으로&nbsp;배출</p>");
insert into dictionary values (1248,"코르크마개","cork","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2542995/25429950663.20201230211611.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1249,"코팅된 종이","coated paper","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2648402/26484021656.20210323233707.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1250,"콘센트","Power socket","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2674173/26741732522.20210413095825.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1251,"콘텍트렌즈","contact lenses","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2537221/25372219749.20201225214656.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1252,"쿠션","cushion","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2081891/20818917595.20190905123505.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1253,"크레용","crayon","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_1270621/12706210251.20171113010949.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1254,"키보드(컴퓨터용)","Keyboard (for computer)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2332149/23321490490.20200701181358.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1255,"타이어","tire","기타폐기물","전문시설",0,0,"https://shopping-phinf.pstatic.net/main_1458929/14589291686.20210512171531.jpg?type=f640","<p>구입처와 상담 후 배출</p>");
insert into dictionary values (1256,"탁상달력","desk calendar","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2418726/24187262617.20200917190245.jpg?type=f640","<p><strong>종이류</strong> 배출방법을 참고하여 배출</p>");
insert into dictionary values (1257,"탈수기","moon season","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2380922/23809229523.20201005152149.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1258,"텐트","tent","생활폐기물/대형폐기물","종량제봉투/대형",0,0,"https://shopping-phinf.pstatic.net/main_2747312/27473124531.20210607162428.jpg?type=f640","<p><strong>종량제종투</strong>에 담을 수 없는 경우 <strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1259,"텔레비전(TV)","Television (TV)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1516145/15161453268.20200408152407.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1260,"토스터기","toaster","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_9239175/9239175064.20201008143909.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1261,"톱","top","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2730536/27305361956.20210525231616.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1262,"튀김기름","frying oil","생활폐기물","전용함",0,0,"https://shopping-phinf.pstatic.net/main_5672137/5672137014.20180629115443.jpg?type=f640","<p>폐식용유 <strong>전용수거함</strong> 배출</p>");
insert into dictionary values (1263,"틀니","denture","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2672198/26721988216.20210411181425.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1264,"티백(녹차)","Tea Bag (Green Tea)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_5716141/5716141356.20120211195003.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1265,"파인애플껍질","pineapple peel","생활폐기물","종량제봉투",0,0,"https://shop-phinf.pstatic.net/20161027_165/zoomrj_1477540834495iSBM2_JPEG/1884516155196417_-1685396165.jpg?type=m510","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1266,"팩스(복합기)","Facsimile (fax machine)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_8675053/8675053838.20160510151220.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1267,"페트병","plastic bottle","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2401510/24015106862.20200903024008.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1268,"포스터, 포장지","poster, wrapping paper","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2617625/26176252880.20210227225013.jpg?type=f640","<p><strong>종이류</strong> 배출방법을 참고하여 배출</p>");
insert into dictionary values (1269,"프린터","printer","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2137997/21379979502.20200221181138.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1270,"피아노","piano","기타폐기물/대형폐기물","대형/전문시설",0,0,"https://shopping-phinf.pstatic.net/main_2670287/26702871351.20210409185312.jpg?type=f640","<p><strong>대형폐기물</strong>로 처리하거나, 중고센터등과 상담하여 처리</p>");
insert into dictionary values (1271,"피자 세이버(피자 삼발이)","pizza saver","생활폐기물","플라스틱",0,0,"https://shopping-phinf.pstatic.net/main_2455537/24555378775.20201022190505.jpg?type=f640","<p><strong>플라스틱</strong>으로 배출</p>");
insert into dictionary values (1272,"피자박스","pizza box","생활폐기물","종이",0,0,"https://shopping-phinf.pstatic.net/main_2751055/27510553100.20210610031035.jpg?type=f640","<p>기름에 오염된 내부 종이는 <strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1273,"필름(사진용)","Film (for photography)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_6274154/6274154555.20120426125430.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1274,"핫팩","hot pack","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_1637085/16370851802.20181220182901.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1275,"항아리","jar","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2684292/26842920091.20210420193225.jpg?type=f640","<p><strong>대형폐기물</strong>로 처리</p>");
insert into dictionary values (1276,"헝겁류","Hungarian","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2655005/26550051976.20210328194122.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1277,"헤드폰(헤드셋)","headphone","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1888275/18882755748.20200908165021.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1278,"헬멧","helmet","생활폐기물","종량제봉투/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2324808/23248083407.20200623235150.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출하되, 분리하여 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1279,"형광등","Fluorescent lamp","생활폐기물","전용함",0,0,"https://shopping-phinf.pstatic.net/main_1479845/14798451787.20180716105559.jpg?type=f640","<p><strong>전용수거함</strong>으로 배출</p>");
insert into dictionary values (1280,"호일(사용 후)","Foil (after use)","생활폐기물","종량제봉투",0,0,"https://shopping-phinf.pstatic.net/main_2406269/24062692515.20200906212835.jpg?type=f640","<p><strong>종량제봉투</strong>로 배출</p>");
insert into dictionary values (1281,"화로","brazier","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_2505872/25058726942.20210118153419.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1282,"화분, 화병","flower pots, vases","생활폐기물","불연성-종량제/재질별분리",0,0,"https://shopping-phinf.pstatic.net/main_2602913/26029135652.20210223152608.jpg?type=f640","<p><strong>불연성폐기물</strong>로 배출 등 <strong>재질에 맞게</strong> 배출</p>");
insert into dictionary values (1283,"화장대","Dressing table","대형폐기물","대형",0,0,"https://shopping-phinf.pstatic.net/main_1787538/17875380828.20200825105532.jpg?type=f640","<p><strong>대형폐기물</strong>로 배출</p>");
insert into dictionary values (1284,"화장품냉장고","cosmetic refrigerator","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2669866/26698665523.20210409121228.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1285,"후라이팬","frying pan","생활폐기물","고철",0,0,"https://shopping-phinf.pstatic.net/main_2309787/23097875491.20200610155807.jpg?type=f640","<p><strong>고철</strong>로 배출</p>");
insert into dictionary values (1286,"휴대용 플레이어(MP3등)","Portable player (MP3, etc.)","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_1604142/16041427460.20191209102811.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출</p>");
insert into dictionary values (1287,"휴대전화","Cell Phone","폐가전제품","가전제품",0,0,"https://shopping-phinf.pstatic.net/main_2560480/25604807522.3.20210322111910.jpg?type=f640","<p><strong>폐가전제품</strong>으로 배출<br />※우체국 보상판매 이용 가능</p>");
