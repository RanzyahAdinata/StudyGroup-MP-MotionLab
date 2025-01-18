//
//  HomeViewModel.swift
//  MVVM-Practice
//
//  Created by Ranzyah Adinata Aldo on 12/01/25.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published var counter: Int = 0
    @Published var emailText: String = ""
    @Published var emailError: String = ""
    
    var isValidEmail: Bool {
        return !emailText.isEmpty
    }
    func increase() {
        //Menggunakan DispatchQueue untuk mengubah UI, supaya UI jalan si thread utama
        //Weak Self : utk mengurangi strong refr, sehingga tidak terjadi crash/ memory leak
        DispatchQueue.main.async{ [weak self] in
            self?.counter += 1
        }
    }
    
    @MainActor
    func decrease() {
        counter -= 1
    }
    
    @MainActor
    func validateEmail() {
        if !isValidEmail {
            emailError = ""
        } else {
            emailError = "Email tidak boleh kosong"
        }
    }
}
