//
//  Sotry.swift
//  Destini-iOS13
//


import UIKit

struct Question {
    let text: String
    let choice1: String
    let choice2: String
    let path1: Int
    let path2: Int
    
    init (q:String , ch1:String , ch2:String , p1:Int, p2:Int) {
        text = q
        choice1 = ch1
        choice2 = ch2
        path1 = p1
        path2 = p2
    }
}
