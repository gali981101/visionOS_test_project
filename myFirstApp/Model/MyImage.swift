//
//  MyImage.swift
//  myFirstApp
//
//  Created by Terry Jason on 2024/2/28.
//

import Foundation

struct MyImage: Identifiable {
    let id: UUID = UUID()
    let uploadDate: String
    let watchCount: Int
    let imageName: String
    let imageName2: String
    let title: String
    let description: String
    let url: URL?
}

struct ImageList {
    static let images: [MyImage] = [
        MyImage(uploadDate: "2023 年 10 月 21 日", watchCount: 345, imageName: "01", imageName2: "01-2", title: "藥師少女的獨語", description: "貓貓是擁有精明推理能力和豐富藥理知識的少女，原本在花街出身並擔任藥師，但由於外出採藥遭人販子綁架被賣至後宮擔任下級的女官（宮女），意外被管理後宮的宦官壬氏發現其才能。憑藉自身的學識和技能，貓貓在勾心鬥角的宮廷中排憂解難、逐漸建立人脈對宮廷產生影響力，也發掘出宮廷裡不為人知的一面。", url: URL(string: "https://youtu.be/_f9r_nFaiLI?si=nEsclFtp1qzgSTaG")),
        MyImage(uploadDate: "2023 年 4 月 1 日", watchCount: 444, imageName: "02", imageName2: "02-2", title: "地獄樂", description: "江戶時代末期，有最強的忍者之稱的畫眉丸因為同門的背叛而被捕，並遭幕府判處死刑，但不管怎麼樣對他處刑都無法將他殺死。某日，幕府直屬的處刑人山田淺右衛門佐切向畫眉丸提出了無罪釋放的條件，就是讓畫眉丸去有如極樂淨土的某座島上奪取「不老不死的仙藥」。畫眉丸為了與摰愛的妻子重逢，答應了此事，並將與同樣懷有此使命的多個死囚在島上展開競爭。", url: URL(string: "https://youtu.be/fsW0fU1hobQ?si=bc4i-ECQFaBQug3m")),
        MyImage(uploadDate: "2013 年 10 月 18 日", watchCount: 989, imageName: "03", imageName2: "03-2", title: "Jojo 星塵遠征軍", description: "故事揭幕於1987年的日本，喬納森·喬斯達與宿敵DIO決戰的一百年後，DIO於大西洋下意外被打撈上岸而重生。同時，喬瑟夫的外孫，空條承太郎突然發現自己有一種名幽波紋（替身）的能力，起因於DIO的替身能力的覺醒，而同時影響了對替身沒有抵抗能力的空條荷莉，令她陷入病危；為了拯救命在旦夕的母親，承太郎、喬瑟夫、花京院典明與阿布德爾一行出發前往DIO的藏匿地：埃及。", url: URL(string: "https://youtu.be/tgo2HPpHlhs?si=4b8oI9-IlQbtX8-t")),
        MyImage(uploadDate: "2023 年 3 月 31 日", watchCount: 878, imageName: "04", imageName2: "04-2", title: "男兒當入樽", description: "櫻木花道在第50次告白失敗中渡過國中三年，並開始討厭籃球。但櫻木升上湘北高中一年級第一天，為討好同年級暗戀對象赤木晴子的歡心，毫無籃球基礎的他未經考慮就加入籃球隊；晴子卻迷戀從初中起就一直是明星球員的流川楓。櫻木的潛力、身體素質加上不服輸的個性，憑著驚人的毅力，進步神速，逐漸從原本的籃球門外漢成長為湘北高中籃球隊不可缺的主力球員。同一時期，國中就已是明星球員的流川楓也加入湘北高中籃球隊，原屬意要出國打球，但在安西教練指點下，決定先成為「日本第一」的高中籃球員。", url: URL(string: "https://youtu.be/vlg-0OHZy_w?si=rTYu5F0yaL2dcXAq")),
        MyImage(uploadDate: "2021 年 4 月 10 日", watchCount: 89, imageName: "05", imageName2: "05-2", title: "東京卍復仇者", description: "花垣武道看到前女友橘日向及其弟直人捲入「東京卍會（以下簡稱東卍）」鬥爭喪命的新聞，接著他因掉落月台的事故穿越回國中二年級時，他藉機告訴直人未來之事，誰知講完話後雙方握手，武道就回到2017年的現代，而原應死亡的直人成為刑警出現。直人拜託武道回2005年，阻止使東卍從暴走族壯大為黑幫的「佐野萬次郎」與「稀咲鐵太」相遇以拯救日向。武道再穿越，認識了東卍總長萬次郎與二把手龍宮寺堅，他發現兩人都非惡人，與後來無惡不作的東卍迥異，遂回現代尋找線索得知龍宮寺當年死於東卍內鬥。", url: URL(string: "https://youtu.be/r9M34VgTfzY?si=7xrKKctqxRAMPhqE")),
        MyImage(uploadDate: "2018 年 1 月 11 日", watchCount: 111, imageName: "06", imageName2: "06-2", title: "紫羅蘭永恆花園", description: "後世打字機的原形，是奧蘭多博士為盲眼而無法執筆的小說家妻子而發明，博士稱其為「自動手記人偶」，之後成為整個代筆界的稱呼。凡從事替人書寫工作的女性便被稱為「自動手記人偶」。因戰爭失去雙手，後來裝上義肢的少女——薇爾莉特·伊芙加登，是一名所屬C·H郵政公司的「自動手記人偶」。為了能夠理解在戰場上重要之人所傳達的話語，她去往不同的地方，踏上一段尋找何謂「愛」的旅程，為不同的委託人代筆，將對方的心意及思念化作一封封的信件，將重要的話傳遞出去。", url: URL(string: "https://youtu.be/0CJeDetA45Q?si=1HmAj50VcJiHsdfY")),
        MyImage(uploadDate: "2022 年 7 月 2 日", watchCount: 722, imageName: "07", imageName2: "07-2", title: "Lycoris Recoil", description: "本的治安連續8年位居世界第一，而在這表面的和平背後，是秘密組織「DA」（Direct Attack）暗地裡防範犯罪於未然。隸屬於DA的少女特工「Lycorisリコリス」，以學生制服隱身在都市中，負責處理未曾發生的犯罪。Lycoris 井之上瀧奈因在任務中無視命令，而被調派到偽裝成東京老街和風咖啡廳的DA分部「LycoRecoリコリコ」成為店員，與性格樂天且被譽為「史上最強Lycoris」的錦木千束搭檔。雖然如此，LycoReco卻常常接下跟Lycoris無關的工作，從普通地供應咖啡、甜品，以至於照顧小孩、幫忙買東西、教外國人日語，來者不拒。", url: URL(string: "https://youtu.be/uddcLoMhHhQ?si=wZZMJtVr-2TCT1fI")),
        MyImage(uploadDate: "2022 年 6 月 6 日", watchCount: 689, imageName: "08", imageName2: "08-2", title: "我推的孩子", description: "雨宮吾郎是在鄉下地區工作的婦產科醫生，某天他的本命偶像星野愛出現在了他面前，吾郎錯愕地發現她身懷雙胞胎，幾經思量後決定接受愛懷孕的事實並且全力協助，但是吾郎在愛分娩前被人殺害，愛則生下一對龍鳳胎。當吾郎再次張開眼睛時，發現自己竟然轉生成為愛的其中一名孩子。同樣轉生為愛的孩子的是生前同為愛的粉絲、吾郎曾經關照過的患者天童寺紗理奈。", url: URL(string: "https://youtu.be/ieGJ0CnGkLI?si=Uiyj5sk3t7fa9Nqw")),
        MyImage(uploadDate: "2023 年 7 月 15 日", watchCount: 719, imageName: "09", imageName2: "09-2", title: "孤獨搖滾！", description: "女高中生後藤一里抱持著組樂團的夢想，卻因為不擅與人來往，而無法實現願望。她在某天放學後被急徵求著吉他手的伊地知虹夏發現，而因緣加入了「團結Band」，一同與山田涼和喜多郁代一起開始了音樂活動。", url: URL(string: "https://youtu.be/1-o7fmQqSNg?si=-i0Yq1ZtktjcNxqy")),
        MyImage(uploadDate: "2020 年 6 月 2 日", watchCount: 560, imageName: "010", imageName2: "010-2", title: "詐騙之王", description: "枝村真人自稱是日本第一的天才欺詐師，與小弟工藤一起遊走在淺草的街道上合夥詐騙。某日他們用錢包詐騙法國遊客羅蘭後，被羅蘭擺了一道，隨後便跟著羅蘭一起前往美國洛杉磯做一單大的，一場最大的欺詐遊戲正在上演。", url: URL(string: "https://youtu.be/zKKLZRutbiI?si=0id42tK11zgUEqR3")),
        MyImage(uploadDate: "2022 年 1 月 8 日", watchCount: 814, imageName: "011", imageName2: "011-2", title: "戀上換裝娃娃", description: "高中一年級學生五条新菜受到祖父影響，喜愛製作女兒節娃娃，並立志成為女兒節娃娃工匠。在第一學期的某天，不善交際的新菜被其班內的中心人物喜多川海夢看到他在學校的服裝室裡製作娃娃服裝。海夢觀察新菜的縫紉技巧後，決定拜託新菜製作她喜歡的電子遊戲角色的Cosplay服裝。然而新菜從未為真人設計過衣服，但在海夢的強烈要求下還是答應了。新菜誤以為有時間上的壓力，便在面臨考試和祖父身體微恙的情形下，咬牙熬夜完成服裝，讓海夢相當感動。之後兩人參與了Cosplay活動，海夢對新菜萌生愛意。", url: URL(string: "https://youtu.be/pRGUydhDyVU?si=vZcjdan-bW9IfWut")),
        MyImage(uploadDate: "2019 年 6 月 21 日", watchCount: 500, imageName: "012", imageName2: "012-2", title: "新世紀福音戰士", description: "劇中的2015年，在被稱為「第二次衝擊」的全球大災難過去十五年後，14歲的碇真嗣應其關係疏遠的父親碇源堂的要求來到了未來都市第3新東京市。其父正是特殊準軍事組織NERV的司令。在抵達這個城市後，真嗣目擊了作戰部隊對不明物體「使徒」的作戰。死海古卷曾預言過使徒這種巨型怪物的覺醒，而NERV的巨型人形生物兵器EVA是唯一能阻止使徒毀滅人類的武器。為了駕駛這種人形兵器，駕駛員必須在EVA內部與其進行神經系統的同步。NERV成員葛城美里護送真嗣進入NERV複雜的地下都市，在那裡真嗣的父親迫使他駕駛EVA初號機對陣使徒。沒有受過訓練的真嗣在戰鬥中很快就被打倒，進而使得初號機失控，並自行野蠻地消滅了使徒。經過住院治療後，真嗣搬到美里住處並開始在第三新東京市的定居生活。在第二次戰鬥中真嗣在情緒激動下不顧命令摧毀了一個使徒，但之後被指責而產生負面情緒，並試圖逃跑。最終真嗣面對美里並決定繼續擔任駕駛員。與此同時，此前在實驗中受損的EVA零號機已被修復，而真嗣試圖與其駕駛員——神秘而冷漠的14歲女孩綾波零交流。美里制定的一項名叫「屋島作戰」的作戰計劃成功的擊敗了另一個使徒，但駕駛EVA零號機的綾波在戰鬥中受傷，而真嗣也險些喪命。", url: URL(string: "https://youtu.be/13nSISwxrY4?si=vvztf1aq4KdSsI0H"))
    ]
}



