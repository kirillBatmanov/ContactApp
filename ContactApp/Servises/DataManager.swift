//
//  DataManager.swift
//  ContactApp
//
//  Created by Кирилл Батманов on 26.10.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let name = [
        "John", "Michael",
        "Ivan", "Roman",
        "Kirill", "Brus"
    ]
    let sureName = [
        "Fisher", "Jobs",
        "Abramovich", "Batmanov",
        "Ivanov", "Putin"
    ]
    let phoneNumber = [
        "89114925735", "89124567752",
        "89657734560", "89098886664",
        "89994445566","89775556644"
    ]
    let email = [
        "eeee@mail.ru", "bbbb@mail.ru",
        "jjjj@mail.ru", "hhhh@mail.ru",
        "iiii@mail.ru", "rrrr@mail.ru"
    ]
    
    private init() {}
    
}
