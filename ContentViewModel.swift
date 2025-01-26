//
//  ContentViewModel.swift
//  CoreData-Practice
//
//  Created by Ranzyah Adinata Aldo on 19/01/25.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    
    private let contactRepository: ContactRepository = ContactRepository()
    
    @Published var contacts: [Contact] = []
    @Published var searchText = ""
    @Published var nameText = ""
    @Published var emailText = ""
    @Published var isSuccess = false
    
    @Published var isShowModal = false
    @Published var selectedContact: Contact?
    @Published var isDetailViewPresented: Bool = false
    
    @MainActor
    func createContact() async {
        let response  = contactRepository.create(name: nameText, email: emailText)
        
        switch response {
        case .success(let success):
            isShowModal = false
            isSuccess = success
            await getContacts()
        case .failure(let failure):
            print("Error: \(failure)")
        }
    }
    
    @MainActor
    func getContacts() async {
        let response = contactRepository.getContacts(searchText: searchText)
        
        switch response {
        case .success(let success):
            contacts = success
        case .failure(let failure):
            print("Error: \(failure)")
        }
    }
    
    @MainActor
    func showModal() {
        nameText = ""
        emailText = ""
        isSuccess = false
        isShowModal = true
    }
    
    @MainActor
    func deleteContact(_ contact: Contact) {
        let response = contactRepository.delete(contact: contact)
        
        switch response {
        case .success:
            contacts.removeAll { $0.id == contact.id }
        case .failure (let failure):
            print("Error: \(failure)")
        }
    }
    
    @MainActor
    func navigateToDetailView(contact: Contact) {
        selectedContact = contact
        isDetailViewPresented = true
    }
    
    @MainActor
    func updateContact(contact: Contact) async {
        let name = nameText
        let email = emailText

        let response = contactRepository.update(contact: contact, name: name, email: email)
        
        switch response {
        case .success:
            await getContacts()
        case .failure(let failure):
            print("Error: \(failure)")
        }
    }
}
