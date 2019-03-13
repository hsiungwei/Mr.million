//
//  Topic.swift
//  Mr.million
//
//  Created by HsiungWei on 2019/3/7.
//  Copyright © 2019 熊偉. All rights reserved.
//

import Foundation


class topic {
    var question:String
    var answer:String
    var select:answers
    
    init(question:String,answer:String,select:answers) {
        self.question = question
        self.answer = answer
        self.select = select
        
    }
    
}

class answers {
    var A:String
    var B:String
    var C:String
    var D:String
    
    init(A:String,B:String,C:String,D:String) {
        self.A = A
        self.B = B
        self.C = C
        self.D = D
    }
    
}

var allData = [
    topic(question: "“只要有恆心”的下一句是什麼？", answer: "B:鐵柱磨成針", select: answers(A: "必定有錢剩", B: "鐵柱磨成針", C: "天下無敵人", D: "點石可成金")),
    topic(question: "《聊齋志異》的作者是誰？", answer: "B:蒲松齡", select: answers(A: "曹雪芹", B: "蒲松齡", C: "施耐庵", D: "笑笑生")),
    topic(question: "提出著名的韋達公式的數學家韋達，是哪國人？", answer: "B:法國", select: answers(A: "英國", B: "法國", C: "德國", D: "俄國")),
    topic(question: "尤西比奧是哪個國家的球星？", answer: "D:葡萄牙", select: answers(A: "西班牙", B: "南斯拉夫", C: "法國", D: "葡萄牙")),
    topic(question: "《嘗試集》的作者是誰？", answer: "B:胡適", select: answers(A: "魯迅", B: "胡適", C: "郭沫若", D: "朱志清")),
    topic(question: "Windows .Net技術的核心是什麼？", answer: "A:提供電子商務", select: answers(A: "提供電子商務", B: "實現分布式計算", C: "新開主頁更方便", D: "網絡安全性")),
    topic(question: "我們常稱風韻猶存的中年婦女為“半老徐娘”，這個“徐娘”原是指一位？", answer: "A:王妃", select: answers(A: "王妃", B: "農家婦女", C: "女將軍", D: "明代徐文長的母親")),
    topic(question: "法律面前人人平等”是什麼人最先提出來的？", answer: "B:法國人", select: answers(A: "中國人", B: "法國人", C: "英國人", D: "美國人")),
    topic(question: "魚露是一種：？", answer: "A:鹹味調料", select: answers(A: "鹹味調料", B: "甜味調料", C: "酸味調料", D: "鮮味調料")),
    topic(question: "下列食品中，哪個含鈣量最高？", answer: "B:水果", select: answers(A: "骨頭湯", B: "水果", C: "葡萄糖", D: "奶及奶制品")),
    topic(question: "鐵達尼號游輪是哪一年沉沒的？", answer: "C:1912年", select: answers(A: "1910年", B: "1911年", C: "1912年", D: "1913年")),
    topic(question: "世界最著名的十大海峽中，位於印度南端和斯裡蘭卡島北部之間的是什麼海峽？", answer: "A:保克海峽", select: answers(A: "保克海峽", B: "白令海峽", C: "麻六甲海峽", D: "對馬海峽")),
    topic(question: "世界最著名的十大海峽中，位於前蘇聯東部與美國西部之間的是什麼海峽？", answer: "A:白令海峽", select: answers(A: "白令海峽", B: "馬六甲海峽保", C: "保克海峽", D: "對馬海峽")),
    topic(question: "以下哪部戲劇的作者是明朝人？", answer: "C:《嬌紅記》", select: answers(A: "《漢宮秋》", B: "《趙氏孤兒》", C: "《嬌紅記》", D: "《精忠譜》")),
    topic(question: "2002世界杯韓國同意大利的比賽中誰頂入了一個金球？", answer: "B:安貞煥", select: answers(A: "樸智星", B: "安貞煥", C: "崔龍洙", D: "金泰映")),
    topic(question: "四大名亭中的陶然亭是因為誰的詩句得名的？", answer: "B:白居易", select: answers(A: "歐陽修", B: "白居易", C: "陶淵明", D: "杜牧")),
    topic(question: "“垂簾聽政”始於何時？", answer: "C:唐朝", select: answers(A: "宋朝", B: "白元朝", C: "唐朝", D: "清朝")),
    topic(question: "冰球十九世紀七十年代起源於那個國家？", answer: "C:加拿大", select: answers(A: "美國", B: "英國", C: "加拿大", D: "愛爾蘭")),
    topic(question: "排球1895年始於那個國家？", answer: "D:英國", select: answers(A: "日本", B: "瑞典", C: "法國", D: "英國")),
    topic(question: "卯時相當於幾點？", answer: "A:5－7點", select: answers(A: "5－7點", B: "7－9點", C: "9－11點", D: "3－5點")),
    topic(question: "“東施效顰”出自", answer: "B:《莊子》", select: answers(A: "《孟子》", B: "《莊子》", C: "《論語》", D: "《紅樓夢》")),
    topic(question: "東漢末年我國的一位傑出的醫學家是", answer: "B:華佗", select: answers(A: "扁鵲", B: "華佗", C: "李時珍", D: "葉天士")),
    topic(question: "1903年，美國萊特兄弟駕駛著自己設計制造的飛機進行了一次劃時代的飛行，成為航空史上的裡程", answer: "C:“飛行者”1號", select: answers(A: "“小男孩”號", B: "“愛國者”號", C: "“飛行者”1號", D: "萊特兄弟”1號")),
    topic(question: "“江蘇”這個地名，取義於哪兩個名稱的連稱？", answer: "A:南京－蘇州", select: answers(A: "南京－蘇州", B: "長江－蘇州", C: "杭州－蘇州", D: "長江－南京")),
    topic(question: "成語“三人行，必有我師”、“敏而好學，不恥下問”出自", answer: "C:論語", select: answers(A: "大學", B: "孟子", C: "論語", D: "中庸")),
    topic(question: "“百老彙”是什麼建築的名字？", answer: "A:一條街", select: answers(A: "一條街", B: "一座歌劇院", C: "一個廣場", D: "一座大樓")),
    topic(question: "“一字千金”典故是由誰而來？", answer: "B:呂不韋", select: answers(A: "李斯", B: "呂不韋", C: "張儀", D: "甘羅")),
    topic(question: "“尤抱琵琶半遮面”是誰的名句？", answer: "A:白居易", select: answers(A: "白居易", B: "韓愈", C: "李商隱", D: "李賀")),
    topic(question: "奧運會起源於何處？", answer: "B:古希腊", select: answers(A: "古羅馬", B: "古希腊", C: "古巴比倫", D: "古埃及")),
    topic(question: "二次大戰期間的諾曼第登陸，發生在哪一個國家？ ", answer: "A:法國", select: answers(A: "法國", B: "美國", C: "西班牙", D: "荷蘭")),
    topic(question: "貝多芬在創作《第三交響曲》時，本來是為了獻給誰？", answer: "C:拿破崙", select: answers(A: "俾斯麥", B: "莫札特", C: "拿破崙", D: "海頓")),
    topic(question: "下列何者非金庸所著之長篇武俠小說？", answer: "D:絕代雙嬌", select: answers(A: "書劍恩仇錄 ", B: "倚天屠龍記", C: "笑傲江湖", D: "絕代雙嬌")),
    topic(question: "美國職棒天使隊的吉祥物稱為？", answer: "C:Rally Monkey", select: answers(A: "Rising Monkey  ", B: "Racing Monkey", C: "Rally Monkey", D: "Rattle Monkey")),
    
]


