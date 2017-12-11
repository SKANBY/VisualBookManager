//
//  BookManager.swift
//  BookManager
//
//  Created by 김나영 on 2017. 12. 11..
//  Copyright © 2017년 Ikarus. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]() //mutable array(값을 넣으면 줄었다 늘었다 하는 배열)
    
    func addBook(_ bookObject:Book){
        bookList += [bookObject]
    }
    
    func showAllBook() -> String{
        var strTemp = ""
        for bookTemp in bookList{
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "-----------------------------\n"
        }
        return strTemp
    }

    func countBook() -> Int{
        return bookList.count
    }

    func findBook(_ name:String) -> String?{    //nil값을 return하려면 ?를 붙여줘야함(optional value)
        var strTemp = ""
        for bookTemp in bookList{
            if bookTemp.name == name{
                strTemp += "Name : \(bookTemp.name)\n"
                strTemp += "Genre : \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)"
                return strTemp
            }
        }
        return nil
    }
    
    func removeBook(_ name:String){
        for bookTemp in bookList{
            if bookTemp.name == name{
                let index = (bookList as NSArray).index(of: bookTemp)   //as = 형변환
                bookList.remove(at: index)
            }
        }
    }
}
