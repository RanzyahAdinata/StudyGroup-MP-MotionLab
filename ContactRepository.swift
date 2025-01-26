//
//  ContactRepository.swift
//  CoreData-Practice
//
//  Created by Ranzyah Adinata Aldo on 19/01/25.
//

import Foundation
import CoreData
import Moya

// Repository = tempat untuk menyimpan semua logika yg berkaitan dengan data

final class ContactRepository {
    
    private let viewContext: NSManagedObjectContext
    
    init(viewContext: NSManagedObjectContext = PersistenceController.shared.container.viewContext) {
        self.viewContext = viewContext
    }
    
    //Result =  berisi case succes dan failure
    func create(name: String, email:String) -> Result<Bool, Error> {
        let entity = ContactEntity(context: viewContext)
        entity.id = UUID()
        entity.name = name
        entity.email = email
        entity.timestamp = Date()
        
        do {
            try viewContext.save()
            return .success(true)
        } catch {
            return .failure(error)
            
        }
    }
    
    
    func getContacts(searchText: String? = nil) -> Result<[Contact], Error> {
        // fetchRequest  berfungsi untuk mendapatkan data dari core data
        let fetchRequest: NSFetchRequest<ContactEntity> = ContactEntity.fetchRequest()
        
        //Get list of contact, bisa di filter  dengan nama/email yang mirip dengan searchText
        if let searchText, !searchText.isEmpty {
            // %@ = diisi dengan variabel dalam args
            // jumlah si %@ = jumlah di args
            let predicate = NSPredicate(format: "(name CONTAINS[cd] %@) OR (email CONTAINS[cd] %@)", searchText, searchText)
            fetchRequest.predicate = predicate
        }
        do {
            //results masih dalam format  Core Data, sehingga class tersebut susah untuk diubah dan digunakan pada view
            let results = try viewContext.fetch(fetchRequest)
            let response = results.map { entity in
                Contact(
                    id: entity.id,
                    name: entity.name,
                    email: entity.email,
                    timestamp:entity.timestamp
                )
            }
            return .success(response)
        } catch{
            return .failure(error)
        }
    }
    func delete(contact: Contact) -> Result<Bool, Error> {
            let fetchRequest: NSFetchRequest<ContactEntity> = ContactEntity.fetchRequest()
            if let id = contact.id {
                fetchRequest.predicate = NSPredicate(format: "id == %@", id as CVarArg)
            } else {
                return .failure(NSError(domain: "InvalidContactID", code: 400, userInfo: nil))
            }
            
            do {
                let results = try viewContext.fetch(fetchRequest)
                if let entityToDelete = results.first {
                    viewContext.delete(entityToDelete)
                    try viewContext.save()
                    return .success(true)
                } else {
                    return .failure(NSError(domain: "ContactNotFound", code: 404, userInfo: nil))
                }
            } catch {
                return .failure(error)
            }
        }
    func update(contact: Contact, name: String, email: String) -> Result<Bool, Error> {
        let fetchRequest: NSFetchRequest<ContactEntity> = ContactEntity.fetchRequest()
        
        guard let contactId = contact.id else {
            return .failure(NSError(domain: "InvalidContactID", code: 400, userInfo: nil))
        }
        fetchRequest.predicate = NSPredicate(format: "id == %@", contactId as CVarArg)
        
        do {
            let results = try viewContext.fetch(fetchRequest)
            if let entityToUpdate = results.first {
                entityToUpdate.name = name
                entityToUpdate.email = email
                entityToUpdate.timestamp = Date()
                try viewContext.save()
                return .success(true)
            } else {
                return .failure(NSError(domain: "ContactNotFound", code: 404, userInfo: nil))
            }
        } catch {
            return .failure(error)
        }
    }
    
}
