//
//  DetailViewModel.swift
//  MVVM-Practice
//
//  Created by Ranzyah Adinata Aldo on 12/01/25.
//

import Foundation

final class DetailViewModel: ObservableObject {
    @Published var emailText: String
    @Published var messageText: String = ""
    
    init(emailText: String) {
        self.emailText = emailText
    }
}

