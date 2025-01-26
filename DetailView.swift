//
//  DetailView.swift
//  CoreData-Practice
//
//  Created by Ranzyah Adinata Aldo on 19/01/25.
//

import SwiftUI
import CoreData

struct DetailView: View {
    @StateObject private var viewModel = DetailViewModel()
    @State private var isEditing = false
    @Binding var contact: Contact?
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Contact Details")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Button(action: {
                    isEditing.toggle()
                }) {
                    Text(isEditing ? "Cancel" : "Edit")
                        .font(.system(size: 18))
                        .foregroundColor(.blue)
                }
            }
            .padding()

            VStack(alignment: .leading, spacing: 15) {
                if isEditing {
                    TextField("Name", text: $viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button(action: {
                        if let contact = contact {
                            Task {
                                await viewModel.updateContact(contact: contact)
                                isEditing = false
                                viewModel.loadContactData(contact: contact)
                                presentationMode.wrappedValue.dismiss()
                            }
                        }
                    }) {
                        Text("Save")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                } else {
                    if let contact = contact {
                        HStack {
                            Text("Name:")
                                .font(.headline)
                            Spacer()
                            Text(contact.name ?? "N/A")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                        HStack {
                            Text("Email:")
                                .font(.headline)
                            Spacer()
                            Text(contact.email ?? "N/A")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                        HStack {
                            Text("Last Updated:")
                                .font(.headline)
                            Spacer()
                            if let timestamp = contact.timestamp {
                                Text(Formatter.localizedString(from: timestamp, dateStyle: .medium, timeStyle: .short))
                                    .font(.body)
                                    .foregroundColor(.gray)
                            } else {
                                Text("N/A")
                                    .font(.body)
                                    .foregroundColor(.gray)
                            }
                        }
                    } else {
                        Text("No contact available")
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)

            Spacer()
        }
        .padding()
        .onAppear {
            if let contact = contact {
                viewModel.loadContactData(contact: contact)
            }
        }
    }
}


extension Formatter {
    static func localizedString(from date: Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter.string(from: date)
    }
}

#Preview {
    DetailView(contact: .constant(Contact()))  
}
