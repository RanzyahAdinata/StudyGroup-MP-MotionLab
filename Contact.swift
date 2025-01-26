//
//  Contact.swift
//  CoreData-Practice
//
//  Created by Ranzyah Adinata Aldo on 19/01/25.
//

import Foundation

struct Contact: Identifiable {
    var id: UUID? = UUID()
    var name: String?
    var email: String?
    var timestamp: Date?
}

struct ReqresContact: Codable, Identifiable {
    var id: Int?
    var email: String?
    //CamelCase : firstname
    //SnackCase : first_name
    var firstName: String?
    var lastName: String?
    var avatar: String?
    
    enum CodingKeys: String, CodingKey {
        case id, email, avatar
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
