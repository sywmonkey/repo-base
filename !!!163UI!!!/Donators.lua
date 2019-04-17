local _, U1 = ...;
U1Donators = {}
local topNames = "奶瓶小裤衩-血色十字军,御箭乘风-贫瘠之地,闪亮的眼睛丶-死亡之翼,空灵道-回音山,瓜瓜哒-白银之手,叶心安-远古海滩,乱劈妖裁-菲拉斯,孤雨梧桐-风暴之怒,释言丶-伊森利恩,乱灬乱-伊森利恩,古麗古麗-死亡之翼,Monarch-霜之哀伤,坚果别闹-燃烧之刃,冰淇淋上帝-血色十字军,奔跑的猎手-熊猫酒仙,发骚的院长-燃烧之刃,海潮之声-白银之手,败家少爷-死亡之翼,不含防腐剂-诺森德,洛天丨凌風-烈焰峰,大江江米库-雷霆之王,幽幽花舞-贫瘠之地,蒋公子-死亡之翼,Majere-冰风岗,短腿肥牛-无尽之海,邪恶肥嘟嘟-卡德罗斯,落霞菲-罗宁";
local recentDonators = {["回音山"] = "Hh,亦语轻歌;Hg,半月丶;HR,云语,云晨;HP,邻家小妹;HI,毛茸茸不是胖",["翡翠梦境"] = "Hh,心上;Hb,圣域银色黎明",["白银之手"] = "Hh,打呼噜打熊猫;Hg,吃饭没有,潮牌潮牌二哥,团团熊屁;Hf,蓝脸猫,灬为谁执剑灬;He,奶妈很靓丽,兔子丷大王;Hc,星坠空,团团熊一号;Ha,天使可可;HY,老巴顿;HW,利艾撒卡,缘灬方方,妲琅,蘇黎世七月雨,炎凉癸丑;HV,夏侯婉;HU,科瑟卡卡恩,加拿大电嫚;HT,温茶予月,南辞寒笙,闲拾雨落,吾已老矣,念予北诗,髙橋啟介,髙橋涼介,爱慕容,净无痕;HR,白桃桃灬;HS,宅豆豆;HQ,禊萩;HP,剑与天秤,Heria;HO,安弈;HN,低调滴灵魂,茶板,娜小样儿,煙火丶;HM,風萧萧兮;HL,天肝勿燥,迪达弹弹;HK,梦魇术术;HJ,小孙策,阿不思的克星;HI,郭达曰斯坦森,福柯奥斯,荒原战歌;HG,放电小绵羊,云冷",["安苏"] = "Hh,驷马难追一牛;He,提里奥广坤;Hd,恶鬼丶;HY,铁諍丶;HX,卜居;HW,Camroth,乀影乀;HV,哊ヽ嗨儿;HU,木文孑止一,疾丿雾;HR,大天使之毅,战亖放;HS,无妄丨羲,回手掏裆;HM,彼得诺夫;HL,丨灬流沙灬丨;HK,奶油土豆泥;HH,青鸟衔红巾;HG,醉青竹",["影之哀伤"] = "Hh,Jiojio,万科吴彦祖;Hf,丨仅等于狼丶;Ha,青木如夏;HX,最特别的存在;HW,你好棒;HS,神奇的阿小木;HQ,Qiangli;HP,充血的抱齿兽,圣光的惩戒;HO,红蓝丶兔子;HG,风吹奶甩两边",["熔火之心"] = "Hh,尧小樂;Ha,玩物喪志丶;HX,詹大炮,诗情画忆丶",["红龙军团"] = "Hh,摸骨大师",["凤凰之神"] = "Hh,体验號;Hg,丶明月来相照;Hf,欧皇仪琳师妹,欧力給丶;Hc,忆的天堂;Hb,山石大叔;Ha,佩佩治治丶,阵浊隽,橙子静;HZ,消失踩到粪;HY,姗哥,Sharr;HX,十三香儿;HW,绝对射孨;HV,柳长街丶;HU,丨夜雨丨;HT,咕树熊鹿,绾人之上;HR,阿尒忒弥斯,爆打小耗子;HQ,黄瓜乀,苦茶羋,九|尪|王;HP,梨园甜哥;HO,星空叙事曲丶,丨火锅车手丨,毛毛虫闖红灯,戰神丶阿瑞凘,姒水姩澕;HN,艾星少女梦;HM,痞萌萌,咆哮的熊猫丶;HL,Ryujyamazaki;HK,敏敏新垣结衣;HJ,似水无恨,奶茶配辣条丶;HI,陈冠曦,关爱老实人,汉寿亭侯丶;HH,飞鸟与鱼丶,灬筱柒仔灬,教官我想上课,忘了这事了,凍骨頭丶;HG,火炎丷焱燚,胖胖的牛德头",["霍格"] = "Hh,汤圆儿",["罗宁"] = "Hh,超予;Hg,布兰缇什;Hf,夜月梅痕;HZ,马丹;HY,英勇的小面包;HU,云朵云;HR,佩剑高歌,無賊,山海婆娑,Syr;HQ,时琦丶狂三;HN,Magicsecutor;HM,黑翼信仰;HJ,光之灵;HI,偷走妳的心",["???"] = "Hh,Garenmienvi;Ha,这首情歌丶;HZ,饮水叁年",["死亡之翼"] = "Hh,碳酸盐,阿克㐅萌德;Hf,风暴眼,洛丹伦二公主;He,乄胖丨星星,七劫斩龙,浅风细雨;Hd,清风逐尘,碳烤地瓜;Hc,香瓜有毒,社会麦扣,风吹丶半夏,傲娇的小祖宗;Hb,云开开,小偷猫,镜花水月慕;Ha,夜舞丶月,沐沐宝宝,麻辣小蛮腰;HZ,姬不如人;HY,一只软咩咩;HX,折纸咕角;HW,丷枫月;HV,香瓜有毐;HU,纳格兰的静谧;HT,刹那之逝,维纳斯灬,咱是小白菜,風暴突击兵,傲人啤酒肚;HR,丶老张丶;HS,云山老牛,赞达拉小霸王;HQ,我系白羊座;HP,胸大镇民心,奎爷丶奎托斯;HO,丨阿乄伽丨,冰火毒龙跳糖;HN,小张老师,欧皇佳宝宝,问灬奈何,关月瞳;HM,丨心悦了尘丨,浅上灬藤乃;HL,超甜豆浆,猫天棒,争当豹子头,环保小卫士;HK,爱新觉罗凯牛;HJ,蚂丿蚁,丨丶斩;HI,洛秋凉丶,过来肝我全尸;HH,Ripperzz,三刀而已;HG,残落丶",["烈焰峰"] = "Hh,洛天丨凌風;Hf,百里潇湘;HR,雍也;HM,撸痔深",["血色十字军"] = "Hh,江风悦人;Hg,雕刻丶月光;Hd,萨尓斯堡树枝;Ha,赞达拉叫兽,无媛无古,亡命小老弟;HW,我喂小菠袋盐;HS,肆贰伍带槽;HJ,佛系牙牙;HI,未语嫣然",["灰谷"] = "Hg,伊莫荅尔",["克尔苏加德"] = "Hg,诛魔邪刃;Hb,四码头彭于晏;HS,氧氟沙星;HM,兰陵醉客;HK,小聆听;HI,舌尖上的咕咕",["银松森林"] = "Hg,随缘烟雨;HS,亲爱的我们上;HM,虎妹",["燃烧之刃"] = "Hg,千夜刃;Hf,超大丁丁丶,劉佬師;Hd,灌醉世界;Hc,星淬;Hb,铁打小阿娇;Ha,哎哟我的肝;HY,囧囧骑灬,白鹭丶,靇丶;HV,呕在这儿停顿;HU,九尾妖姬;HT,丶天,王护法;HS,黎萱曲中人,浪子杰;HQ,赞达拉首富;HP,一七哈皮;HO,丶采薇,采薇丶,欧皇二狗子灬;HL,左边比较大,㑋丶晚安,跳刀拉比克;HH,落幕的月光,小炯丶;HG,玉强活动房屋",["暗影之月"] = "Hg,火儛丶;Ha,一只可达鸭;HR,Sy",["贫瘠之地"] = "Hg,巫咸大人;Hf,贝塔星,守护晨曦;HZ,信仰亅圣光;HW,竜恋,羽丨风行者;HV,大雅无曲;HU,大意舐经粥;HR,相视而笑;HS,Demonci;HO,黑手信条,鲈鱼;HJ,帅得坦然,邦桒迪;HI,辛德瑞拉之耀,迦勒底盾娘",["冰风岗"] = "Hg,美就好了;Ha,林原惠美;HV,姑妄听之;HT,绝对射孨;HJ,小红手阿坤达;HI,树读,大毛贼,Verne,先奶为敬",["熊猫酒仙"] = "Hg,鱼生请多指教;Hf,百里骐;Hd,睿睿爱工作;Hb,刘德华本人;HX,小负屃;HT,饿了大人;HR,暗殺星㐩㒷㐩;HO,弦外有音;HN,暗香未盈袖,砸水果店的猪,张易之,寕静;HM,黄橙橙丶;HK,蝴蝶之夏,雪落苍山;HJ,Guckkasten",["甜水绿洲"] = "Hg,膏锋锷;Ha,曼多基尔;HS,哎哟哟小肥肉,Bappu",["丽丽（四川）"] = "Hg,惡魔之怒;HM,奶大腰细,瑪德智障,鸡肉丸子;HG,戎州杨超越",["轻风之语"] = "Hg,Cykablyat;HV,Bayoneta;HH,Intotrush",["苏塔恩"] = "Hg,唐細細;HZ,为阿门祈祷",["伊森利恩"] = "Hg,唐小丶寅;Hc,晓风袭月;Hb,那夜乄,自华,盾穿肠;Ha,哥子好嗨哟;HY,黄忆点;HW,索瑞森;HV,不羁狂飙;HU,浅蓝深蓝丶,新大陸的白風;HR,丶决情,璀璨如夏花;HP,异度冰寒;HN,湯圆,青桥丶;HM,唐英雄;HK,暴走的肉圆子",["龙骨平原"] = "Hg,罪域的骨丶;Ha,大塰;HZ,灵盗",["雷斧堡垒"] = "Hf,黑石山扛把子;HQ,汐小竹",["主宰之剑"] = "Hf,Maxlucas;He,游佐,一百只咕咕;Hd,溙鉭簉物;Hc,楹月,灬大梦灬,团队副本混子;Hb,凯雯宝貝;Ha,浅玉;HZ,爱你如何表达;HY,Nollie;HV,挚爱影帝,㚴獵㚴;HU,浅殇梦逝;HQ,核弹剑仙,你可真棒;HP,Rabbearr,混沌之殇,卖火柴小女孩;HN,李不懂丶,松脆库仔,丁当貓;HL,欧一冷总一皇,愛德華丿蒂奇;HK,未来皆可期;HJ,深秋;HH,绯红咖啡,风华是指流砂,丨寒影丨;HG,邪恶光环丶",["迦拉克隆"] = "Hf,浅笑和他的猫;Hc,黎丶佐轩;HU,你好高冷癌;HR,森林暮色;HQ,沃罹贝尔;HN,Avemger;HL,骗你是小咕;HK,刃之無雙,諸神之怒;HJ,突然好想伱,米饼丶猎",["狂热之刃"] = "Hf,庆丶山;HO,虚空思故渊;HM,柔柔小芊芊;HI,兰蔻丶;HG,江上数峰青",["伊瑟拉"] = "Hf,会长灬破晓;HW,臭豆腐归来;HK,滑雪爱好者",["摩摩尔"] = "Hf,瑟拉娜",["阿纳克洛斯"] = "Hf,夜幕笙歌;HZ,珈百璃丶;HV,信仰保持,自爆的阿昆达",["无尽之海"] = "Hf,小手丨贼红;He,烟雨亦成歌,烟雨亦成画;HY,反正都不是你;HT,Semillon;HK,秀气娇娘,綉気毒舞;HJ,有丶帅的怪怪;HI,洛丝维亚瑟,森岛囚鹿;HH,发电的阿昆达",["斯克提斯"] = "Hf,维她柠檬茶;HX,情绪不由己;HN,爷丨丨玩莘",["霜之哀伤"] = "He,白玉楼;HR,黑山小腰;HS,随风騎士",["布鲁塔卢斯"] = "He,忧郁的小发",["格瑞姆巴托"] = "He,Mocktails;Hb,汪汪同学;Ha,丷兎兎,游穴者周浊;HZ,石生緣,七彩小鸭子;HY,铁幕甄,思乂语;HW,芸雾,丷佛爷丷;HV,湖光辉月;HU,空訫糖果;HS,墨唐弥撒,玛戈妲莱妮,废土游魔;HO,永恒极光;HN,Ghostpoem;HM,兜兜里有糖纸;HK,脆脆丶奥斯卡,突然空闲;HI,一根儿木头丶;HH,你好丶阿瑞斯;HG,然然的苏菲",["安东尼达斯"] = "He,烟汐忆梦",["血吼"] = "He,暗夜长谷川;HP,谁动了我奶酪;HO,暗影绝殇",["鹰巢山"] = "He,苏大强",["埃德萨拉"] = "He,西裝爆徒;Hc,夏依依;HW,天上哦;HT,Tojoy;HR,Tomoto;HQ,快乐的小二碧;HH,大锅喝醉了,烟花大魔王",["烈焰荆棘"] = "He,插图腾烦死你",["血环"] = "He,风逝流年;HN,回忆冰冰凉;HJ,泥巴坨坨",["石爪峰"] = "Hd,猝死的抱齿兽;HT,无糖巧克力",["末日行者"] = "Hd,傾世妖顏,傾心不必;Hc,Andydufresn,买了否冷;HX,粗茶淡飯;HV,飞雪迎春到;HU,沙僧不留发;HS,杨惊羽;HQ,牛愛花;HO,最后的右手;HN,飞翔的浪漫;HJ,大师在流浪,不气饭的阿饭;HG,I残灬叶I",["梦境之树"] = "Hd,圣光守护者;HN,Nujabes",["阿古斯"] = "Hd,萌尼玛,丿烟灰缸;Ha,灬萌星彤灬;HU,我勒个续;HQ,花败心亦凉;HM,丶匕加锁丶",["迅捷微风"] = "Hd,暖乄风;Ha,爆个击吧;HK,妖瞳百魅",["黑铁"] = "Hc,脆脆的炸鸡;HH,雷丘的小伙伴,雨鸣丶",["莱索恩"] = "Hc,严谨",["布莱恩"] = "Hc,前任",["闪电之刃"] = "Hc,寬霸;HV,不言",["迦玛兰"] = "Hb,洛克希德",["风暴峭壁"] = "Hb,萌萌的签证官;Ha,玖号丶技师",["雷克萨"] = "Hb,慕寒",["鬼雾峰"] = "Hb,灬陌上花开;HO,言语就像风",["达尔坎"] = "Hb,一僧平庵",["天空之墙"] = "Hb,缱绻噩梦",["布兰卡德"] = "Hb,鱼跃海潮时;HT,丶安楚;HO,樱井优太",["巨龙之吼"] = "Ha,Nagual;HR,林宥嘉;HO,丶艾斯泰尔,事后圣如佛",["克洛玛古斯"] = "Ha,彼岸花;HI,狂戦,指尖的燃烧",["奥特兰克"] = "Ha,殇丶歌;HH,六不六",["太阳之井"] = "Ha,苗娃娃;HS,染指流年;HQ,漂亮鬼牧;HP,Oasi;HI,沧海半缘",["洛萨"] = "Ha,你胸大你说话",["金色平原"] = "HZ,残忍的老阿姨;HU,快乐的老阿姨;HT,安吉拉丶艾莎;HP,烟若柳尘;HN,Moonstruck;HM,阿芙塔莉雅,科罗拉里昂",["国王之谷"] = "HZ,如果你也聽說;HU,羿步秦弓;HS,破岚;HQ,小阿咪丶;HP,听见月光;HL,米娜斯媞莉絲;HJ,时而不着调;HG,隱哥,晚夜烛凉,法拉米尔夏月",["弗塞雷迦"] = "HY,巫毒大师;HU,无敌小有",["红龙女王"] = "HY,貓丶拂曉",["火焰之树"] = "HY,惊羽乄",["地狱咆哮"] = "HY,细雨嫣然",["刺骨利刃"] = "HY,坠落幻想",["布莱克摩"] = "HY,霸王硬上班;HO,冉冉",["暗影议会"] = "HX,身材像匕首",["蜘蛛王国"] = "HX,信仰大武僧;HM,傲气凌风",["暮色森林"] = "HW,清和子",["遗忘海岸"] = "HW,追你身後的风;HK,女武神丶",["耐奥祖"] = "HW,丶小米饭",["塞拉摩"] = "HV,骚叶",["玛瑟里顿"] = "HV,Amoureternel;HQ,冷艳流星锤",["海克泰尔"] = "HV,白雲説;HR,狂徒的易伤机;HI,夕阳残雪",["麦维影歌"] = "HV,凌动",["耳语海岸"] = "HU,我是海带;HG,也曾经心动过",["永恒之井"] = "HU,三四三号智仆,贞德丶达尔克",["艾莫莉丝"] = "HU,古川伊织",["库尔提拉斯"] = "HU,熊坦萌二蛋",["伊利丹"] = "HT,简约人",["希尔瓦娜斯"] = "HT,Olen",["巫妖之王"] = "HT,呐哔德",["万色星辰"] = "HR,天神小法;HH,大荒,银灯",["加尔"] = "HR,快乐的阿昆达",["奥尔加隆"] = "HR,岛田美惠;HS,調皮的小強;HN,Onlymaka",["远古海滩"] = "HR,凤凰韵,凤凰心;HO,暮色如血",["提瑞斯法"] = "HS,小鸡啄米;HO,无聊真无聊",["红云台地"] = "HS,新尼玛",["月神殿"] = "HS,你的小鱼干;HO,闲鱼本鱼",["风暴之怒"] = "HQ,平时子",["泰拉尔"] = "HQ,银子",["自由之风"] = "HQ,白夜",["古加尔"] = "HQ,夕阳一抹红颜",["诺莫瑞根"] = "HQ,泰兰徳丶拉风;HN,Hthunter",["阿曼尼"] = "HQ,致命曼陀罗",["亡语者"] = "HQ,Sarakael",["密林游侠"] = "HP,德雷克;HO,巨大少女",["加兹鲁维"] = "HP,风中酷啦啦",["神圣之歌"] = "HP,纯黑色棒棒糖",["萨菲隆"] = "HP,正版十七笔画",["玛多兰"] = "HP,隔世情缘",["冰霜之刃"] = "HP,终极混沌;HG,Anzi",["通灵学院"] = "HP,三眠丶",["天谴之门"] = "HP,星光永耀之地",["黑暗虚空"] = "HP,米迦勒丶炽焰;HI,血熊猫",["盖斯"] = "HP,梦洁",["加基森"] = "HP,一直向西",["阿克蒙德"] = "HO,麦尔德林;HK,死前两米;HJ,丫疼",["世界之树"] = "HO,让我提升好吗;HH,玉髓",["亚雷戈斯"] = "HO,聋五",["艾森娜"] = "HO,阳光保险集团",["阿薩斯[TW]"] = "HO,Elementary",["普罗德摩"] = "HO,柠檬水",["阿拉希"] = "HO,随性随心",["战歌"] = "HN,检察助理",["索瑞森"] = "HN,闹闹猫",["扎拉赞恩"] = "HN,盛装㐅舞步",["血羽"] = "HM,蹲坟头啃土豆",["萨格拉斯"] = "HM,怪很强我先跑",["爱斯特纳"] = "HM,雪菲",["玛诺洛斯"] = "HM,高邮闹闹",["菲米丝"] = "HL,静静的昕昕",["燃烧军团"] = "HL,菠萝波罗",["恶魔之翼"] = "HL,你亲爱的姐夫",["荆棘谷"] = "HL,贵气王族",["瓦里安"] = "HK,硬邦邦的",["奈法利安"] = "HK,新垣结衣",["阿比迪斯"] = "HK,经开建",["梅尔加尼"] = "HJ,新屋熊",["阿尔萨斯"] = "HJ,Evansyong",["范克里夫"] = "HJ,星辰灬曜月",["千针石林"] = "HJ,艾尔的醒醐,艾尔的灵魂",["凯尔萨斯"] = "HJ,深邃之光",["大地之怒"] = "HJ,永恒的史诗",["哈卡"] = "HJ,Github",["破碎岭"] = "HI,按住了逼逼",["铜龙军团"] = "HI,藤井树",["火烟之谷"] = "HI,罗宾",["伊莫塔尔"] = "HI,舒孑影",["屠魔山谷"] = "HH,想吃小孩",["血牙魔王"] = "HH,夜空之辉",["黑龙军团"] = "HH,北巷故人",["拉文凯斯"] = "HH,民间贼神",["普瑞斯托"] = "HH,沉鱼",["冬泉谷"] = "HG,青鸢",["泰兰德"] = "HG,清靜淡雅"};
local start = { year = 2018, month = 8, day = 3, hour = 7, min = 0, sec = 0 }
local now = time()
local player_shown = {}
U1Donators.players = player_shown

local topNamesOrder = {} for i, name in ipairs({ strsplit(',', topNames) }) do topNamesOrder[name] = i end

local pairs, ipairs, strsplit, format = pairs, ipairs, strsplit, format

local players, player_days = {}, {}
local base64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
local function ConvertDonators(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        for _, oneday in ipairs({strsplit(';', allday)}) do
            local date;
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i == 1 then
                    local dec = (base64:find(player:sub(1,1)) - 1) * 64 + (base64:find(player:sub(2,2)) - 1)
                    local y, m, d = floor(dec/12/31)+2018, floor(dec/31)%12+1, dec%31+1
                    date = format("%04d-%02d-%02d", y, m, d)
                else
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    if player_days[fullname] == nil then
                        table.insert(players, fullname)
                        player_days[fullname] = date
                    end
                end
            end
        end
    end
end
local function GetPlayerNames(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        for _, oneday in ipairs({strsplit(';', allday)}) do
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i > 1 then
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    player_shown[fullname] = topNamesOrder[fullname] or 0
                end
            end
        end
    end
end
GetPlayerNames(recentDonators)
GetPlayerNames(U1.historyDonators)

function U1Donators:CreateFrame()
    ConvertDonators(recentDonators)
    recentDonators = nil
    ConvertDonators(U1.historyDonators)
    U1.historyDonators = nil

    table.sort(players, function(a, b)
        local order1 = topNamesOrder[a] or 9999
        local order2 = topNamesOrder[b] or 9999
        if order1 ~= order2 then return order1 < order2 end
        local _, r1 = strsplit("-", a)
        local _, r2 = strsplit("-", b)
        if r1 ~= r2 then
            if r1 == '???' then return false
            elseif r2 == '???' then return true
            else return r1 < r2; end
        end
        local day1 = player_days[a]
        local day2 = player_days[b]
        if day1 ~= day2 then return day1 > day2 end
        return a < b
    end)
    -- 排完序就不需要了
    topNames = nil
    topNamesOrder = nil

    local f = WW:Frame("U1DonatorsFrame", UIParent, "BasicFrameTemplateWithInset"):Size(320, 500):TR(U1Frame, "TL", -10, 0):SetToplevel(1):SetFrameStrata("DIALOG")

    f.TitleText:SetText("爱不易的捐助者，谢谢你们")
    f.InsetBg:SetPoint("TOPLEFT", 4, -50)
    CoreUIMakeMovable(f)

    local scroll = CoreUICreateHybridStep1(nil, f(), nil, true, true, nil)
    WW(scroll):TL(f.InsetBg, 3, -3):BR(f.InsetBg, -2-21, 2):un() --:TL(3, -20)
    f.scroll = scroll

    local headn = TplColumnButton(f, nil, 22):SetWidth(108):SetText("玩家主角色"):SetScript("OnClick", noop):un()
    WW(headn:GetFontString()):SetFontHeight(14):un()
    local heads = TplColumnButton(f, nil, 22):SetWidth(80):SetText("服务器"):SetScript("OnClick", noop):un()
    WW(heads:GetFontString()):SetFontHeight(14):un()
    local headd = TplColumnButton(f, nil, 22):SetWidth(100):SetText("捐助时间"):SetScript("OnClick", noop):un()
    WW(headd:GetFontString()):SetFontHeight(14):un()
    CoreUIAnchor(f, "TOPLEFT", "TOPLEFT", 8, -30, "LEFT", "RIGHT", 0, 0, headn, heads, headd)

    local function fix_text_width(obj)
      obj:GetFontString():SetAllPoints()
    end

    scroll.creator = function(self, index, name)
      local row = WW(self.scrollChild):Button(name):LEFT():RIGHT():Size(0, 20)
      row:SetHighlightTexture([[Interface\QuestFrame\UI-QuestTitleHighlight]], 'ADD')

      row.name = row:Button():Size(100, 20):EnableMouse(false):SetButtonFont(U1FCenterTextMid):SetText(111):GetButtonText():SetJustifyH("Center"):up()
      row.server = row:Button():Size(75, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(111):GetButtonText():SetJustifyH("Right"):up()
      row.firstdate = row:Button():Size(90, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(333):GetButtonText():SetJustifyH("Right"):up()

      fix_text_width(row.name)
      fix_text_width(row.server)
      fix_text_width(row.firstdate)

      CoreUIAnchor(row, "LEFT", "LEFT", 5, 0, "LEFT", "RIGHT", 5, 0, row.name, row.server, row.firstdate)
      return row:un()
    end

    scroll.getNumFunc = function()
      return #players
    end

    scroll.updateFunc = function(self, row, index)
      row.index = index
      local name, realm = strsplit('-', players[index])
      row.name:SetText(name)
      row.server:SetText(realm)
      row.firstdate:SetText(player_days[players[index]]);
      --row.name:GetFontString():SetTextColor(1,1,1)
      --local date_fmt = '%Y/%m/%d'
      --local txt = date(date_fmt, time())
      --row.firstdate:SetText(txt)
    end

    CoreUICreateHybridStep2(scroll, 0, 0, "TOPLEFT", "TOPLEFT", 0)

    f:Hide()

    collectgarbage()
    return f()
end

CoreOnEvent("PLAYER_ENTERING_WORLD", function()
    local origs = {}
    local addMessageReplace = function(self, msg, ...)
        msg = msg and tostring(msg) or ""
        local h, t, part1, fullname, part2 = msg:find("(\124Hplayer:(.-):.-:.-:.-\124h%[)(\124c.........-\124r%]\124h)")
        if fullname and ((U1Donators and U1Donators.players[fullname]) or (U1STAFF and U1STAFF[fullname])) then
            --local _, height = self:GetFont()
            msg = msg:sub(1,h-1) .. part1 .. '\124TInterface\\AddOns\\!!!163UI!!!\\Textures\\UI2-logo:' .. (13) .. '\124t' .. part2 .. msg:sub(t+1);
        end
        origs[self](self, msg, ...)
    end
    WithAllChatFrame(function(cf)
        if cf:GetID() == 2 then return end
        origs[cf] = cf.AddMessage
        cf.AddMessage = addMessageReplace
    end)
    return "remove"
end)