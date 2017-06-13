//
//  File.swift
//  pinasdS02
//
//  Created by user on 2017/6/7.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func test1(){
    var (x,y,z)=(1,2,3)
    var a=(x,y,z)
    print(type(of: a))
    print(x)
    print(a.0)
    print(a.1)
    print(a.2)
}

func test2(){
    var a:Int?=4
    a=5
    a=nil
    print(a)
    print(type(of: a))
}

func test3(){
    var a=3
    a+=1
    print(a)
}

func test4(){
    var score:UInt=79
    if score>=60{
        print("ok")
    }else{
        print("XX")
    }
}

func test5(){
    let rand=arc4random() //0-(2^32-1)
    let scroe = rand % 101
    print(scroe)
    let rand2=arc4random_uniform(101) //0..<101
    print(rand2)
}

func test6(){
    var a="pinasd"
    var b="iiiii"
    
    var c=a+b
    print(c)
    var a1="pinasd"
    var b2:String? = "iiiii"
    b2=nil
    
    print(b2)
    print(b2 ?? "none")
    print(b2 ?? 0) //can set default value (this example is set Int:0)
    var c1:String="123"
    print(type(of: c1))
    var d:Int = Int(c1) ?? 0
    d+=45
    print(type(of: d))
    
    print(d ?? -1)
    //
    var c2:String?="123"
    print(type(of: c2))
    var d2:Int = Int(c2 ?? "0") ?? 0
    d2+=45
    print(type(of: d2))
    
    print(d2 ?? -1)
    
    //設default是在預防nil出現,若在string不是option時可以在轉形時不考慮nil發生可以不設,最後在（）??設的原因為轉型可能失敗傳回nil所以設default
    
}

func test7(){
    print("score=",terminator:"")
    let input=readLine()
    print(type(of: input))
    print(input)
    let score:UInt8=UInt8(input ?? "0") ?? 0
    if score>=60 {
        print("ok")
    }else{
        print("XX")
    }
}

func test8(){
    print("date=",terminator:"")
    let input :String? = readLine()
    let year = UInt16(input ?? "0") ?? 0
    print(year)
    
    var isLeap : Bool
    
    if year % 4 == 0{
        if year % 100 == 0{
            isLeap = true
        }else{
            isLeap = false
        }
    }else{
        isLeap = true
    }
    
    print("\(year) is \(isLeap ? "OK" : "NG" )")
}
func test9(){
    var a = "Hello"
    var b = String() //'' != nil
    
    if b.isEmpty{
        print("b is empty")
    }
    
    for c in a.characters{
        print(c)
    }
    var c = a
    a = "Hello wpdd"
    print(c)
    print(a)
    
    print(a.characters.count)
    
    for i in 1...a.characters.count{
        let start=a.index(a.startIndex, offsetBy:i-1)
        let end = a.index(a.startIndex, offsetBy: i)
        let range = start..<end
        print(a[range])
    }
    var d=a.startIndex
    
    print(d)
    let start=a.index(a.startIndex, offsetBy:2) //取出的是string index 的型別
    let end = a.index(a.startIndex, offsetBy: 5)
    let range = start..<end
    print(type(of: range))
    print(a[range])
    var hhhh=a[range]
    print(type(of:hhhh))
    
    var e = "qwertyuioplkjhhgffdsa"
    print(e[range])
    
    e.insert("4", at:e.endIndex)
    print(e)
    
    var testarr = [1,2,3,4,5,6,7,8,9,0]
    var arrt = testarr[4...8]
    
    print(arrt.description)
    print(type(of:arrt))
    
    func sum<T:Sequence>(nums:T)->[Int] where
    
    
}

func test10(){
    
    var i = 100;
    for var i in 1...10{
        //i += 1 if not var i is let and 區域變數
        i+=1
        print(i)
    }
    for _ in 1...10{
        //沒有宣告i就去外部的變數
        i+=1
        print(i)
    }
    print(i)
}

func test99(){
    for k in 0..<2{
        for i in 1...9{
            for j in 2...5{
                let newj = j + k * 4
                print("\(newj) X \(i)= \(i * newj) ",terminator: "\t")
            }
            print()
        }
        print("------------------------------------------")
    }
}

func test12(){
    var sum = 0
    var i = 1
    while i <= 100{
        sum += i
        i += 1
    }
    print("1+2+3+....100=\(sum)")
}

func test13(){
    var sum = 0
    var i = 1
    repeat{
        sum += i
        i += 1
    }while i <= 100
    print("1+2+3+.....100=\(sum)")
}

func test14(){
    
    for i in 1...100{
        if i % 10 == 0{
            print()
        }
        var isP:Bool = true
        var sqri = Int(sqrt(Double(i)))
        var k=2;
        while k <= sqri{
            
            if i % k == 0 {
                isP = false
//                print("\(i):\(k)")
                break
            }
            k += 1
        }
        var Pfalse = String(i)
        var Ptrue = "#" + Pfalse
        var PfalseA = " " + Pfalse
        print("|\(isP ? Ptrue : PfalseA )|",terminator:("\t"))
        
    }
}
