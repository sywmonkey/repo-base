U1Donators = {}
local topNames = '奶瓶小裤衩-血色十字军,邪恶肥嘟嘟-卡德罗斯,橙阿鬼丶-达尔坎,萌萌的尐熊猫-死亡之翼,安梦少年豆-布兰卡德,大雄-克尔苏加德,神話丶喵尐姐-埃德萨拉,亮爪-死亡之翼,乀丶阿宝-丽丽（四川）,派哒星-死亡之翼,含朕龙根-安苏,轻轻叶落-金色平原,一塊红布-迦拉克隆,麥麥-金色平原,木叶蛀牙-斩魔者,拜因德拉莫-寒冰皇冠[TW],亲亲灬紫堇-瓦里安,刀锋战士-白银之手,布可丝意-月光林地,凉城梦境-贫瘠之地,昔昔的-白银之手,最爱记忆-破碎岭,Gnossienne-奥达曼,神徽羽-贫瘠之地,顺丰速运-死亡之翼,八云丷蓝-血羽,牛排嫩嫩的-蜘蛛王国,听到风潮-白银之手,安联的夏天-亚雷戈斯,糖泡泡糖-贫瘠之地,短腿肥牛-无尽之海,胖可丁的忧伤-罗宁,香菇难受大叔-主宰之剑,踎低喷饭-布莱克摩,想念冬天-法拉希姆,灬阿猫灬-克尔苏加德';
local day_realm_players = {["2018-08-03"] = {["白银之手"] = {["聂浩然"] = 4},["死亡之翼"] = {["Masaxx"] = 4},["加兹鲁维"] = {["Decembers"] = 4},["深渊之喉"] = {["浮生为乐"] = 4},["回音山"] = {["铁板牛柳"] = 4}},["2018-08-02"] = {["凤凰之神"] = {["做饭不洗碗"] = 4,["陌问"] = 4,["森森呀"] = 4},["哈卡"] = {["神话中的传说"] = 4},["死亡之翼"] = {["箭追魂"] = 4,["张语格"] = 4,["影心"] = 4,["会飞的肥牛"] = 4,["九月初秋"] = 4,["唐子萨"] = 4,["坏猴子"] = 4,["胖贼"] = 4,["皇尚灬"] = 4,["七味"] = 1,["半藏小公举"] = 4,["火怒风"] = 4},["格瑞姆巴托"] = {["小盗"] = 4,["Karuna"] = 4,["丨君炎丨"] = 4,["黎明之钟"] = 4,["炮卍神"] = 4,["浪花"] = 4},["加基森"] = {["站在高岗上"] = 4},["甜水绿洲"] = {["Proudlion"] = 4},["羽月"] = {["弯角"] = 4},["阿拉索"] = {["爱死小白兔"] = 4},["伊森利恩"] = {["钢宗喔子"] = 4,["小也兮兮"] = 4,["残酷序章"] = 4,["尐嘢貓"] = 1,["一直向西"] = 4},["回音山"] = {["喻叔叔"] = 4,["堕落洛丹伦"] = 4,["百步射穿杨"] = 4,["兜兜有阿蛮"] = 4,["康娜卡姆依"] = 4,["Hbn"] = 4},["玛洛加尔"] = {["打工的兔子"] = 4},["范达尔鹿盔"] = {["聖光閃現"] = 4},["影之哀伤"] = {["八雲菟菟"] = 4},["红龙军团"] = {["凸静凸"] = 4,["被无视的点君"] = 4},["血色十字军"] = {["Wangwangwang"] = 4},["白银之手"] = {["寒蝉鳴泣"] = 4,["浪漫葬礼"] = 4,["战术大米"] = 4,["丶柚子乄"] = 4,["赫拉斯瓦尔格"] = 4,["xinxinya"] = 4,["晓梦丶蝴蝶"] = 4,["高大的番茄"] = 4,["柯熙"] = 4},["安苏"] = {["猩猩都凉了"] = 4,["三流诗人"] = 4,["Zemben"] = 4,["闪耀的苍山"] = 4,["所有人都停守"] = 4,["醒叻"] = 4,["舔盖王"] = 4,["偷驴他拔"] = 0},["阿古斯"] = {["卖萌天然呆"] = 4,["路过的小绵羊"] = 4,["瞬风"] = 4},["桑德兰"] = {["Dreamermetj"] = 4},["暗影之月"] = {["雷昂熊心"] = 4},["梦境之树"] = {["格力风之眼"] = 4,["克里斯托公爵"] = 4},["银月"] = {["皇阿玛"] = 4,["小凝"] = 4},["诺兹多姆"] = {["一可乐一"] = 4,["公主必须死"] = 4},["埃德萨拉"] = {["Holylord"] = 4,["刀刀刺心"] = 4,["王境泽"] = 4},["丽丽（四川）"] = {["蓦上枯颜"] = 4,["左十丶"] = 4},["布兰卡德"] = {["何鑫橙"] = 4,["神圣大德"] = 4},["燃烧之刃"] = {["不撸帝灬"] = 4,["发呆"] = 4},["伊瑟拉"] = {["独秀壹枝"] = 0,["萨娅"] = 4},["贫瘠之地"] = {["按照基本法"] = 4,["表妹考辛斯"] = 4,["利斯教授"] = 4,["猎神降世"] = 4},["伊利丹"] = {["云画的月光"] = 4},["国王之谷"] = {["喵五郎"] = 4,["灬執筆画情灬"] = 4,["木忆"] = 4},["索瑞森"] = {["霸波儿奔"] = 4},["风行者"] = {["橙小米"] = 4,["希望奔跑"] = 4},["萨尔"] = {["Giforce"] = 4},["苏拉玛"] = {["熊心仁术"] = 4},["海克泰尔"] = {["汪蛋儿"] = 4},["金色平原"] = {["乔拉齐丶罗格"] = 4},["山丘之王"] = {["邂逅小酒窝"] = 4},["图拉扬"] = {["Ollie"] = 4,["面啵"] = 4},["克尔苏加德"] = {["灬阿猫灬"] = 4,["Snowhalation"] = 4},["???"] = {["春风吹有生"] = 4,["Stam龙飞羽"] = 4,["提里奥乄弗丁"] = 4},["法拉希姆"] = {["想念冬天"] = 4},["玛法里奥"] = {["Aimerr"] = 4},["布莱克摩"] = {["踎低喷饭"] = 4},["艾露恩"] = {["逐浪飞花"] = 4},["罗宁"] = {["暗夜精玲哦也"] = 4,["亿夏丶阑姗"] = 4,["仿佛"] = 4,["胖可丁的忧伤"] = 4},["扎拉赞恩"] = {["湘芋颦儿"] = 4,["牛德樺"] = 4},["奥杜尔"] = {["平凡之路"] = 4},["芬里斯"] = {["碳棒"] = 4,["阿良"] = 4},["雏龙之翼"] = {["晴时不见荷"] = 4},["主宰之剑"] = {["璘翾翛然"] = 4,["切尔西老司机"] = 4,["香菇难受大叔"] = 4},["冰霜之刃"] = {["心随流云"] = 4},["龙骨平原"] = {["燃堂力"] = 4,["甜竹竹"] = 4,["一个粘啊粘"] = 4,["阿兰提尔"] = 4},["奥特兰克"] = {["阴乄灵"] = 4},["永恒之井"] = {["泽尔琳灬暮光"] = 4},["奥蕾莉亚"] = {["Lostinblack"] = 4},["布莱恩"] = {["奥姬"] = 4},["巨龙之吼"] = {["废康康"] = 4},["沙怒"] = {["满鸽哥"] = 4},["埃克索图斯"] = {["犀利犀利"] = 4},["迅捷微风"] = {["萨米亚"] = 4},["血牙魔王"] = {["雪百合"] = 4},["阿迦玛甘"] = {["橘猫不胖"] = 4},["奥尔加隆"] = {["一箭九九八"] = 4},["破碎岭"] = {["肉厚血多耐艹"] = 4,["王大车"] = 4},["海加尔"] = {["信仰爱情"] = 4},["莱索恩"] = {["楚兮"] = 4},["雷斧堡垒"] = {["阿唯"] = 4},["黑铁"] = {["导演我死哪"] = 4},["希尔瓦娜斯"] = {["灬飘渺七三灬"] = 4},["塞纳留斯"] = {["八云紫"] = 4},["迦拉克隆"] = {["青沐"] = 4,["未闻风名"] = 4,["邪葬爱"] = 4},["末日行者"] = {["嘀嘀辣子鸡"] = 4,["战略忽悠局"] = 4,["坏脾气喵"] = 4},["逐日者"] = {["快乐的小羊"] = 4},["冰风岗"] = {["羞羞的丶铁拳"] = 4,["经典丨红塔山"] = 4,["斩杀虚空"] = 4},["火焰之树"] = {["尬疗者"] = 4},["通灵学院"] = {["Linrc"] = 4},["狂热之刃"] = {["苍凉的光荣"] = 4},["聖光之願[TW]"] = {["遗忘的回忆"] = 4},["森金"] = {["震天魔神"] = 4},["瓦里玛萨斯"] = {["陈德容"] = 4},["暮色森林"] = {["春天的蜗牛"] = 4},["奈法利安"] = {["喝绿茶的贼"] = 4},["亡语者"] = {["Noize"] = 4},["达纳斯"] = {["Flex"] = 4},["爱斯特纳"] = {["骨灬火"] = 4},["阿克蒙德"] = {["核心棍"] = 4},["血环"] = {["长弓追影"] = 4},["洛肯"] = {["西卡而"] = 4},["暴风祭坛"] = {["暗黑武力"] = 4},["恶魔之翼"] = {["骨头红妞"] = 4},["阿纳克洛斯"] = {["屁屁肉翘翘"] = 4},["月光林地"] = {["清羽扶苏"] = 4},["安东尼达斯"] = {["疯狂老马"] = 4},["伊利丹[US]"] = {["Immortalbe"] = 4},["希雷诺斯"] = {["大眼睛贼水灵"] = 4},["玛多兰"] = {["暴风真神"] = 4},["无尽之海"] = {["有文化有盗德"] = 4},["黑暗虚空"] = {["不能叫我山鸡"] = 4},["圣火神殿"] = {["莫利亞"] = 4}},["2018-08-01"] = {["无尽之海"] = {["灬柳暗花亦明"] = 4,["短腿肥牛"] = 4,["酷猫六号"] = 4,["苍穹灬布林顿"] = 4,["纤弦月"] = 4},["奥拉基尔"] = {["Sevennine"] = 1},["戈古纳斯"] = {["心如紫水"] = 4,["碎玻璃一地"] = 4},["凤凰之神"] = {["逆命"] = 4,["达瓦里希"] = 4,["蜘蛛丶侦探"] = 4,["陈伯"] = 4,["固穷者乂酒仙"] = 4,["逗比小僧"] = 4,["曾经那么美"] = 4,["风中星痕"] = 4,["说你笨还顶嘴"] = 4,["良言"] = 4},["???"] = {["Sevennine"] = 4,["关羽字云长"] = 4,["秋刀鱼的春天"] = 4,["基爱崖首席暴白"] = 4,["Famoni"] = 4,["虞松杰"] = 4,["绽放的微笑"] = 4,["玛露希露"] = 4,["笙希丶"] = 4},["国王之谷"] = {["忧郁智天使"] = 4,["橙十三火锅"] = 4,["造化自然"] = 4,["江阴帝侃"] = 4},["主宰之剑"] = {["丷阿尓萨斯"] = 4,["嘀哩哩咑咑"] = 4,["丝黛芬妮"] = 4,["思维魔方"] = 4,["玲珑月来香"] = 4,["Suidream"] = 4,["不可胜术"] = 4},["末日祷告祭坛"] = {["覃布丁"] = 1},["罗宁"] = {["奥伦希尔莉"] = 4,["飄緲"] = 4,["泠邪"] = 4,["刘先森"] = 4,["篂篂"] = 4,["Atherden"] = 4,["君王之灾"] = 4,["潇潇易水寒"] = 2,["落落萧萧"] = 4,["吉尔娜斯"] = 4,["冬冬小宝宝"] = 4,["搞不死的小强"] = 4},["瑟莱德丝"] = {["泡泡美女"] = 4},["翡翠梦境"] = {["审判的温柔"] = 1,["Schrödinger"] = 4,["花开不在"] = 4},["安苏"] = {["洒灬脱"] = 4,["粥行者"] = 4,["参宿"] = 4,["Zaracon"] = 4,["超光速猪蛛侠"] = 4,["有事你先上"] = 4,["红人沙加"] = 4,["筱猪"] = 4,["鬼雪秋水"] = 4,["吾自醉丶"] = 4,["御宴蛋炒飯"] = 4,["丨聖鬥仕丨"] = 4,["Mocktail"] = 4,["光铸馒头"] = 4},["贫瘠之地"] = {["糖泡泡糖"] = 4,["鬼灯芥子"] = 4,["帅气的羊爸"] = 4,["追梦少年"] = 4,["模犯生"] = 4,["神徽羽"] = 4,["我吸一口"] = 4,["凉城梦境"] = 4,["逍遥小猫"] = 4,["有止境"] = 4},["燃烧之刃"] = {["Redalax"] = 4,["Lewandowska"] = 4,["倚楼观风雨"] = 4},["德拉诺"] = {["粉木耳历险记"] = 4,["Ugmlls"] = 4},["丽丽（四川）"] = {["纳兰香雪"] = 4,["Dreamwalk"] = 4},["迦拉克隆"] = {["兮檬"] = 4,["伊拉瑞安"] = 1,["明镜止水"] = 4,["曲终秂未散"] = 4},["火烟之谷"] = {["云刀断月"] = 4},["血色十字军"] = {["曲无忆"] = 0,["晨谜于你"] = 4,["伶牙"] = 4,["苏大诗人"] = 4,["盘古之刃"] = 4,["遁入虚空"] = 4,["寂寞狩猎"] = 4,["掷酒"] = 4,["郭哥"] = 4,["熵焱"] = 4,["迷路的小姐姐"] = 4},["熔火之心"] = {["田全蛋"] = 4,["蒙特"] = 4},["末日行者"] = {["萝卜萝卜卜"] = 4,["亲爱的不二"] = 4,["莫流求"] = 4,["亡術"] = 4,["Vensy"] = 4,["壹箭倾城"] = 4},["死亡之翼"] = {["毒液炸彈"] = 4,["情舒灬"] = 0,["宁宁他爹"] = 4,["已走很远"] = 4,["萌萌的尐熊猫"] = 4,["顺丰速运"] = 4,["夜忧"] = 4,["冬天的我们"] = 4,["我就是小法"] = 4,["你喜欢花吗"] = 4,["猫的报恩"] = 4,["大猫有点皮"] = 4,["陈浩南"] = 4,["邪风冷羽"] = 4},["格瑞姆巴托"] = {["阿克酥德"] = 4,["一卦定天下"] = 4,["独行三瘋"] = 4},["艾维娜"] = {["枫苍龙"] = 4},["白银之手"] = {["盘溪风月"] = 4,["寒池飘雪"] = 4,["简小洛"] = 4,["野萧遐"] = 4,["听到风潮"] = 4,["月行丶"] = 4,["可布丶"] = 4,["暗夜德传说"] = 4,["幻雨悯筱"] = 4,["很紧"] = 4,["Aztecs"] = 4,["沉默的回忆"] = 4,["墨文"] = 4,["纹身小绵羊"] = 1,["半壶酒"] = 4,["火的冰点"] = 4,["西铁成"] = 4,["蜚语流言"] = 4,["听过的故事"] = 4,["昔昔的"] = 4,["时光"] = 4,["米七七丶"] = 4,["退堂鼓大师"] = 4,["刀锋战士"] = 4,["永恒礼赞"] = 4,["迷人的圆滚滚"] = 4},["回音山"] = {["依末"] = 4,["若丶年華倒带"] = 4,["你贼猴了"] = 4,["逗莎包"] = 4,["炫炫丶天蝎座"] = 4,["灵魂的气息"] = 4},["伊瑟拉"] = {["Akermend"] = 4},["扎拉赞恩"] = {["原纱央莉"] = 4,["泰勒将军"] = 4},["守护之剑"] = {["专射娘子"] = 4},["诺森德"] = {["小图腾"] = 4,["袜子哥哥"] = 4},["巴瑟拉斯"] = {["Sariell"] = 4,["人字拖大魔王"] = 4},["血环"] = {["Mn"] = 4,["罗夏德拉"] = 4},["安东尼达斯"] = {["可能的"] = 4},["影之哀伤"] = {["星怜"] = 4,["打的低"] = 4,["沐晨殇"] = 4,["睡觉的星"] = 4,["鲸海"] = 4,["疯狂魅影丶"] = 4,["雾里看小花"] = 4,["殺画丶"] = 4,["此生唯伊"] = 4},["万色星辰"] = {["无敌大萌王"] = 4,["紫游"] = 4,["Biubiupiapia"] = 4},["死亡熔炉"] = {["Kurisu"] = 4,["夏沐清風"] = 4},["朵丹尼尔"] = {["咖啡苹果茶"] = 4,["贪玩蓝月"] = 4},["菲米丝"] = {["牵手丶"] = 4,["手抓饼十个蛋"] = 4},["诺兹多姆"] = {["无影剑艾雷诺"] = 4,["水沝淼淼"] = 4},["奥特兰克"] = {["蜉蝣"] = 4,["大道无痕"] = 4,["Skyland"] = 4},["麦维影歌"] = {["非尼克斯"] = 4},["山丘之王"] = {["牧神灬晨光"] = 4,["湛卢"] = 4,["小小奶黄包"] = 4,["Demhut"] = 4},["玛里苟斯"] = {["黎风丶维诺"] = 4,["深蓝胖胖"] = 4},["白骨荒野"] = {["一只大老虎"] = 4},["火喉"] = {["溪流柳"] = 4},["远古海滩"] = {["烧烤大咕咕"] = 4},["伊利丹"] = {["路痴慕斯"] = 4},["火羽山"] = {["Wonderfuleeg"] = 4},["安其拉"] = {["好气哦"] = 1},["泰兰德"] = {["Hunshaw"] = 4},["亚雷戈斯"] = {["安联的夏天"] = 4,["泡的饭饭"] = 4,["浅斟低唱"] = 4,["埃辛诺斯壁垒"] = 0,["杨颖"] = 4,["箭弹擒心"] = 4},["奥妮克希亚"] = {["索利达尔之怒"] = 4},["克洛玛古斯"] = {["琥珀色眼眸"] = 4},["玛洛加尔"] = {["雪若花凋"] = 4},["水晶之刺[TW]"] = {["新语面包"] = 4},["伊森利恩"] = {["筱豆豆"] = 4,["丨抖妇乳、"] = 4,["我来秀底线"] = 4},["雷斧堡垒"] = {["捌拐洞捌拐"] = 0,["真的哈呼"] = 4},["阿克蒙德"] = {["Ebonstorm"] = 4},["加兹鲁维"] = {["冰枫月影"] = 4},["艾萨拉"] = {["天亮要睁眼"] = 4},["克苏恩"] = {["凯丹"] = 4},["破碎岭"] = {["迈克尔丶春丽"] = 4,["最爱记忆"] = 4},["狂熱之刃[TW]"] = {["搖曳靈光"] = 0},["拉文凯斯"] = {["为了部落"] = 4,["深紫厄苏拉"] = 4,["慕尼黑啤酒"] = 4},["自由之风"] = {["Alive"] = 4},["轻风之语"] = {["爱无言"] = 4},["梅尔加尼"] = {["云中燕"] = 4},["蜘蛛王国"] = {["牛排嫩嫩的"] = 4},["熊猫酒仙"] = {["満岛光"] = 4,["大姨妈之盾"] = 4,["扎木卡"] = 4,["清风忍"] = 4},["海克泰尔"] = {["曹飞彪"] = 4,["妖花"] = 4,["情长纸短"] = 4},["壁炉谷"] = {["下面一点红"] = 4,["龙纹灬邪刃"] = 4},["达文格尔"] = {["小猪维妮"] = 4},["圣火神殿"] = {["快乐阿杭"] = 4},["加尔"] = {["快到兜里来"] = 4,["孢子蝠"] = 4},["烈焰峰"] = {["暴力军官"] = 4},["耳语海岸"] = {["夏天"] = 4},["霜狼"] = {["哥哥嫌你脏"] = 4,["高坂穗乃果"] = 4,["园田海未"] = 4},["达尔坎"] = {["深红"] = 4},["血吼"] = {["原則"] = 4,["Canon"] = 4,["零落花如许"] = 4},["神圣之歌"] = {["海上生明月灬"] = 4,["那年夜下吻"] = 4},["金色平原"] = {["伊露恩丶星光"] = 4},["阿纳克洛斯"] = {["可选择的"] = 4,["三樓"] = 4,["达尔盖的旗帜"] = 4,["污力涛涛"] = 4},["塞拉摩"] = {["咕咕哒咕哒"] = 4,["疯子大叔"] = 4},["艾露恩"] = {["洁萝露尔"] = 4},["血羽"] = {["八云丷蓝"] = 4},["阿尔萨斯"] = {["須藤元気"] = 4},["埃加洛尔"] = {["超期哥"] = 4},["暗影之月"] = {["丶帕拉丁丶"] = 4,["苏灬姗"] = 4},["埃克索图斯"] = {["亲亲我的宝贝"] = 4},["奈萨里奥"] = {["偷光者"] = 4},["试炼之环"] = {["绅士的肥皂"] = 4},["奥达曼"] = {["Gnossienne"] = 4},["羽月"] = {["葬心"] = 4,["雨灵若雪"] = 4},["巴尔古恩"] = {["各位家长注意"] = 4,["宅男泡面"] = 4},["阿古斯"] = {["飞霜点墨"] = 4,["骷髅政委"] = 4},["千针石林"] = {["茄灬子"] = 4},["燃烧军团"] = {["尖刀片"] = 4},["永恒之井"] = {["圣光小钢炮"] = 4},["冰风岗"] = {["奈紋摩尔"] = 1},["雷霆之王"] = {["风之惩戒"] = 4},["金度"] = {["雨天小猪"] = 4},["艾森娜"] = {["钢然"] = 4},["月光林地"] = {["我爱偷吻贼"] = 4,["尘世"] = 4,["布可丝意"] = 4},["铜龙军团"] = {["Drakeshuffle"] = 4,["秋风之刃"] = 4},["库尔提拉斯"] = {["迦兰之心"] = 4},["银松森林"] = {["胖子的胖次"] = 4,["我看到你们啦"] = 4},["語風[TW]"] = {["初蝶"] = 4},["加里索斯"] = {["毒奶蕾玖"] = 4},["卡德罗斯"] = {["邪恶肥嘟嘟"] = 4},["石爪峰"] = {["采采矿打酱油"] = 4},["屠魔山谷"] = {["海月星"] = 4},["弗塞雷迦"] = {["紫睛娃娃"] = 4},["日落沼澤[TW]"] = {["在下頭很硬"] = 4},["织亡者"] = {["Vampiresover"] = 4},["布兰卡德"] = {["乐正普鲁"] = 4},["太阳之井"] = {["贾纳尔的怒吼"] = 4},["加基森"] = {["猛虎啸牙"] = 4},["影牙要塞"] = {["阿尔奎娅"] = 4},["恐怖图腾"] = {["赵德柱"] = 4},["黑龙军团"] = {["布莱克丶汉德"] = 1},["地狱之石"] = {["留神丨嘉年华"] = 4},["古尔丹"] = {["花萝艳"] = 4},["巨龙之吼"] = {["威风西域"] = 4},["夏维安"] = {["天谴冥王"] = 4},["荆棘谷"] = {["狂野老司机"] = 4},["风暴峭壁"] = {["云雾缭绕"] = 4},["燃烧平原"] = {["Geminids"] = 4},["暴风祭坛"] = {["小荳贼"] = 4},["通灵学院"] = {["大琯人"] = 0,["灬冰爽茶"] = 4,["炽蝎"] = 4},["索瑞森"] = {["嗜魂之手"] = 4,["麒麟臂"] = 4},["诺莫瑞根"] = {["郁郁"] = 4},["红龙军团"] = {["开门查煞能"] = 4},["泰拉尔"] = {["阿莱克"] = 4,["Paradise"] = 4},["苏塔恩"] = {["心心幻"] = 4},["霍格"] = {["BigRain"] = 4},["祖阿曼"] = {["饭米粒"] = 4},["奥杜尔"] = {["、冬"] = 4},["军团要塞"] = {["茗魅"] = 4},["基尔加丹"] = {["雪冰"] = 4},["天空之墙"] = {["秦王李世民"] = 4},["萨尔"] = {["光与暗的故事"] = 4},["沙怒"] = {["埃罗芒阿老师"] = 4},["埃德萨拉"] = {["奈何回忆"] = 4},["龙骨平原"] = {["三潭不印月"] = 4},["安格博达"] = {["迷墙"] = 0},["踏梦者"] = {["英雄海"] = 4},["聖光之願[TW]"] = {["奔跑的肥肉"] = 4},["瓦里安"] = {["亲亲灬紫堇"] = 4},["黑铁"] = {["歪特"] = 4},["狂热之刃"] = {["貌似妖怪"] = 4},["奥蕾莉亚"] = {["微笑的公牛"] = 4},["斯克提斯"] = {["怯雨羞云"] = 4},["永夜港"] = {["阿布丢丢"] = 4}},["2018-07-31"] = {["奥尔加隆"] = {["镜丶伤"] = 4},["布兰卡德"] = {["乐正普鲁"] = 4,["聖光的恩赐"] = 4,["骨化风橙"] = 4,["彼岸的回忆"] = 4,["月葬小歪"] = 4,["安梦少年豆"] = 4,["胡大力喲"] = 4},["寒冰皇冠[TW]"] = {["拜因德拉莫"] = 4},["太阳之井"] = {["点丿滴"] = 4},["安苏"] = {["童舞天橙"] = 4,["童舞天城"] = 4,["千里流浪"] = 4,["杰赫里斯"] = 4,["丶什锦咖喱饭"] = 4,["含朕龙根"] = 4,["国宝大喵"] = 4,["玛法利奥怒风"] = 1},["熔火之心"] = {["阿尔泰尔丶"] = 4},["泰兰德"] = {["Pandag"] = 4,["钻石星尘"] = 4},["森金"] = {["鱼香白牛"] = 4},["奥特兰克"] = {["云影的信守"] = 4},["狂热之刃"] = {["丨丶萨满笣苞"] = 4},["闪电之刃"] = {["来一发脑残箭"] = 4},["丽丽（四川）"] = {["我杀了大臭"] = 4,["乀丶阿宝"] = 4,["单纯王丶"] = 4},["迦拉克隆"] = {["混乱的小白"] = 4,["詹姆斯张飞"] = 4,["一塊红布"] = 4,["混沌女皇"] = 4,["踏风起武"] = 4},["斩魔者"] = {["安洛丶黎阳"] = 4,["木叶蛀牙"] = 4},["白银之手"] = {["天赐丶优雅"] = 4,["丨炎爆术丨"] = 4,["小木剑闯天涯"] = 4,["深圳鱼帅"] = 4,["紫夜魔月"] = 4,["玮玮小土豆"] = 4,["青春正绽放"] = 4,["贰姨太"] = 4,["为什么这么皮"] = 4,["间于生死"] = 4,["黑白光影"] = 4,["樓先生"] = 4,["表面输出"] = 4,["请叫我倾慕灬"] = 4,["不知道我是谁"] = 4,["月落丶霜满天"] = 4,["秋雨寒风"] = 1,["蕾迦娜"] = 4},["冰霜之刃"] = {["幕后黑手"] = 4},["金色平原"] = {["麥麥"] = 4,["轻轻叶落"] = 4,["核桃空空"] = 4},["永恒之井"] = {["小菇靚"] = 4,["耶稣"] = 4,["淼不语"] = 4},["熊猫酒仙"] = {["Alyn"] = 4,["贝蒂威尔"] = 4,["天道众"] = 4},["燃烧之刃"] = {["圣骑小魔"] = 4,["Nukacola"] = 4,["挫骨扬咴"] = 4},["贫瘠之地"] = {["凯撒丶昊"] = 4,["疾风丨什叁"] = 4,["忘却录音"] = 4,["正宗羊肉"] = 4,["玲珑刃"] = 4,["胖哥丶喵骑"] = 4,["空白"] = 4,["诗人尚喜"] = 4},["主宰之剑"] = {["落花昊骑"] = 4,["卡布琦诺"] = 4,["彪呼呼"] = 3,["消失的小德"] = 4},["格瑞姆巴托"] = {["逐风者之剑"] = 4,["烟灰灰"] = 4,["袭酆"] = 4,["六神眼药水"] = 4,["给我药"] = 4,["瑾云阳"] = 4,["炽美"] = 4},["血色十字军"] = {["手写从前"] = 4,["屠夫阿宝"] = 4,["奶瓶小裤衩"] = 4,["可可的奶"] = 4,["冷裤勇士"] = 4,["米露果"] = 4},["黑石尖塔"] = {["古一"] = 4},["勇士岛"] = {["圣图拉"] = 4},["洛丹伦"] = {["秋水长天"] = 4,["苏想"] = 4},["加兹鲁维"] = {["被牛顶过"] = 4,["招财小呆"] = 4},["死亡之翼"] = {["开个噬血"] = 4,["希望皇霍普"] = 4,["四個核訫癔識"] = 4,["派哒星"] = 4,["圣光屏障"] = 4,["Shoothunter"] = 4,["亮爪"] = 4,["丹丹的忧桑"] = 4,["宝宝雙"] = 4},["末日祷告祭坛"] = {["天涯小术"] = 4},["安威玛尔"] = {["諾丨訫"] = 4},["朵丹尼尔"] = {["凤湖"] = 4},["阿比迪斯"] = {["文森"] = 4},["回音山"] = {["油腻嘎"] = 4,["北斗天狼星"] = 1,["绿果果"] = 4,["神锋無影"] = 4},["利刃之拳"] = {["jjboomfly"] = 4,["岳阳监狱狱霸"] = 4},["提瑞斯法"] = {["把妹之手"] = 4},["迅捷微风"] = {["Clownce"] = 4,["冲锋爱丽丝"] = 1,["神原骏河"] = 4},["天空之墙"] = {["我没獠牙"] = 4},["凤凰之神"] = {["斗篷与匕首"] = 4,["地狱灬"] = 4,["香辣小烤鸡"] = 1,["专精塑能"] = 4,["克里空"] = 1,["欧洲的茶叶蛋"] = 4},["雷斧堡垒"] = {["云歌丶岚岫"] = 4},["罗宁"] = {["藿香不正气"] = 4,["悦之守护"] = 4,["战神地狱火"] = 4,["丢雷螺母"] = 4},["世界之树"] = {["Xiaopprimee"] = 4},["伊森利恩"] = {["宝叔叔"] = 4,["红毛狮子"] = 4,["唐小欣"] = 4,["孖丶車"] = 4,["馨有琳心"] = 4},["憤怒使者[TW]"] = {["舞鴉"] = 4},["无尽之海"] = {["影嘉"] = 4,["莫道销魂"] = 4},["黑铁"] = {["细雨晚安"] = 4,["樱婲暩"] = 4},["海加尔"] = {["Kurt"] = 4,["Sera"] = 4},["轻风之语"] = {["猫妖"] = 4,["天神丨酒歌"] = 4},["加基森"] = {["兼职口粮"] = 4},["国王之谷"] = {["两仪陌岚"] = 4,["战戈弋弋"] = 4},["山丘之王"] = {["吾皇巴扎嘿"] = 4},["冰风岗"] = {["乳摇哥"] = 4,["斩它马的啊"] = 4,["经典丨杜蕾斯"] = 4},["石爪峰"] = {["夏屿落"] = 4},["月光林地"] = {["光之蕾拉"] = 4,["寇根"] = 4},["伊瑟拉"] = {["中原麻衣"] = 1},["洛萨"] = {["绯红一刀"] = 4},["暗影之月"] = {["杜拾遗"] = 4,["嗜血煞星"] = 4,["暗夜逐风"] = 4},["塞拉摩"] = {["泣灵"] = 4},["血环"] = {["火籽"] = 4,["卡卡、迦夜"] = 4,["不再颓废"] = 4},["晴日峰（江苏）"] = {["酱油里的芥末"] = 4},["萨尔"] = {["車小树"] = 4},["月神殿"] = {["怀念雅典娜"] = 4},["苏塔恩"] = {["Akài"] = 4},["哈卡"] = {["叮当当咚咚当"] = 4},["末日行者"] = {["猫在逗我玩"] = 4,["系马倚白杨"] = 4,["冰箱爱你哟"] = 4,["Therichskrr"] = 4,["Arcobalone"] = 4},["桑德兰"] = {["就是这么烦"] = 4,["大吃货"] = 4},["暗影议会"] = {["潘大先生"] = 4},["羽月"] = {["年迈的战屌"] = 4},["达斯雷玛"] = {["冷风过境"] = 4},["诺兹多姆"] = {["月影信仰"] = 4,["为童稚们送奶"] = 4,["豆奶不太粉"] = 4},["阿拉索"] = {["帝蛙爱你哟"] = 4},["古加尔"] = {["呜呼哀哉"] = 4},["暴风祭坛"] = {["無所畏懼"] = 4,["萨满兄"] = 4},["莱索恩"] = {["张铁柱"] = 4},["影之哀伤"] = {["肥小贱"] = 4},["阿斯塔洛"] = {["黄金体验"] = 4},["克尔苏加德"] = {["千里招招"] = 4,["大雄"] = 4},["白骨荒野"] = {["不能打不能奶"] = 4},["能源舰"] = {["牛重征"] = 4},["阿古斯"] = {["猎血沸腾"] = 4},["伊莫塔尔"] = {["夜诺斯"] = 4},["索拉丁"] = {["疯隐士"] = 4},["万色星辰"] = {["第四个影子"] = 4},["寒冰皇冠"] = {["Sky"] = 4},["翡翠梦境"] = {["麒哆圈"] = 4},["阿克蒙德"] = {["花花大魔王"] = 4},["霜之哀伤"] = {["遊僧"] = 4,["青椒荷包蛋"] = 4},["血牙魔王"] = {["巫马野兽"] = 4},["熵魔"] = {["天使之翎"] = 4,["爱薇儿"] = 4},["千针石林"] = {["艺双馨"] = 4},["亚雷戈斯"] = {["小鸡的小柯基"] = 4},["基尔罗格"] = {["巴特洛夫斯基"] = 4},["耐奥祖"] = {["演员"] = 4,["丹妮莉丝"] = 4},["加里索斯"] = {["拉灯叔"] = 4},["梦境之树"] = {["道外吴彦祖"] = 4},["埃德萨拉"] = {["神話丶喵尐姐"] = 4},["守护之剑"] = {["狐乱羽"] = 4},["埃苏雷格"] = {["蓝焰"] = 4},["海克泰尔"] = {["好人一身皮干"] = 4},["巫妖之王"] = {["幻月如梦"] = 4},["麦迪文"] = {["特丽丝"] = 4},["迦罗娜"] = {["飘逸贝贝"] = 4},["诺莫瑞根"] = {["熊老夫子"] = 4}},["2018-07-30"] = {["达尔坎"] = {["橙阿鬼丶"] = 4}}}
local start = { year = 2018, month = 8, day = 3, hour = 7, min = 0, sec = 0 }
local now = time()
local player_shown = {}
U1Donators.players = player_shown

topNames = { strsplit(',', topNames) }
local topNamesOrder = {}
for i, name in ipairs(topNames) do topNamesOrder[name] = i end

local realms, players, player_days = {}, {}, {}
for day, dayrealms in pairs(day_realm_players) do
    for realm, names in pairs(dayrealms) do
        if not tContains(realms, realm) then table.insert(realms, realm) end
        for name, cds in pairs(names) do
            local fullname = name .. '-' .. realm
            table.insert(players, fullname)
            player_days[fullname] = day
            local old = start.day
            start.day = old + 7 * cds + 1
            if now < time(start) then player_shown[fullname] = topNamesOrder[fullname] or 0 end
            start.day = old
        end
    end
end
day_realm_players = nil

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
    if day1 ~= day2 then return day1 < day2 end
    return a < b
end)
-- 排完序就不需要了
topNames = nil
topNamesOrder = nil

function U1Donators:CreateFrame()
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

    f:Hide();
    return f()
end

CoreOnEvent("PLAYER_ENTERING_WORLD", function()
    local origs = {}
    local addMessageReplace = function(self, msg, ...)
        msg = msg and tostring(msg) or ""
        local h, t, part1, fullname, part2 = msg:find("(\124Hplayer:(.-):.-:.-:.-\124h%[)(\124c.........-\124r%]\124h)")
        if fullname and U1Donators and U1Donators.players[fullname] then
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