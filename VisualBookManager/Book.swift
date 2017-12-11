//
//  Book.swift
//  BookManager
//
//  Created by 김나영 on 2017. 12. 11..
//  Copyright © 2017년 Ikarus. All rights reserved.
//

import Foundation

//권고사항
//class 하나에 파일 하나, struct 하나에 파일 하나
class Book{
    var name   = "" //하나의 프로퍼티라고 할 수 있다.
    var genre  = "" //장르
    var author = "" //저자
    
    func bookPrint(){
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}
