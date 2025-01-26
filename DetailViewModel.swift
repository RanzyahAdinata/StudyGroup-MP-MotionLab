//
//  DetailViewModel.swift
//  CoreData-Practice
//
//  Created by Ranzyah Adinata Aldo on 19/01/25.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""

    private let contactRepository: ContactRepository

    init(contactRepository: ContactRepository = ContactRepository()) {
        self.contactRepository = contactRepository
    }

    /// Memuat data kontak ke dalam ViewModel
    func loadContactData(contact: Contact) {
        name = contact.name ?? ""
        email = contact.email ?? ""
    }

    /// Memperbarui data kontak dengan repository
    func updateContact(contact: Contact) async {
        let name = self.name
        let email = self.email

        let response =  contactRepository.update(contact: contact, name: name, email: email)

        switch response {
        case .success:
            print("Contact updated successfully.")
        case .failure(let error):
            print("Failed to update contact: \(error.localizedDescription)")
        }
    }
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: email)
    }
}


