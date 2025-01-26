//
//  ContentView.swift
//  CoreData-Practice
//
//  Created by Ranzyah Adinata Aldo on 19/01/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @State private var showDeleteAlert = false
    @State private var contactToDelete: Contact?

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.contacts) { data in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(data.name ?? "")
                            Text(data.email ?? "")
                        }
                        Spacer()
                        Button(action: {
                            viewModel.selectedContact = data
                            viewModel.isDetailViewPresented = true
                        }) {
                            Image(systemName: "pencil")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.blue)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                        Button(action: {
                            contactToDelete = data
                            showDeleteAlert = true
                        }) {
                            Image(systemName: "trash")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.red)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                    }
                }
            }
            .searchable(text: $viewModel.searchText, prompt: "Search..")
            .onChange(of: viewModel.searchText) { _, _ in
                Task {
                    await viewModel.getContacts()
                }
            }
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("+ Add") {
                        viewModel.showModal()
                    }
                }
            }
            .alert("Contact added", isPresented: $viewModel.isSuccess) {
                Button("Okay", role: .cancel) {}
            }
            .alert("Are you sure want to delete this item?", isPresented: $showDeleteAlert) {
                Button("Cancel", role: .cancel) {}
                Button("OK", role: .destructive) {
                    if let contact = contactToDelete {
                        viewModel.deleteContact(contact)
                    }
                }
            }
            .fullScreenCover(isPresented: $viewModel.isShowModal) {
                modal
            }
            .sheet(isPresented: $viewModel.isDetailViewPresented, onDismiss: {
                Task {
                    await viewModel.getContacts()
                }
            }) {
                if let selectedContact = viewModel.selectedContact {
                    DetailView(contact: $viewModel.selectedContact)
                }
            }
        }
        .onAppear {
            Task {
                do {
                    await viewModel.getContacts()
                }
            }
        }
    }
}

extension ContentView {
    @ViewBuilder
    var modal: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button("Close") {
                viewModel.isShowModal = false
            }
            .padding()
            Text("Create Contact")
                .font(.title)
                .padding()

            ScrollView {
                VStack {
                    TextField("Nama", text: $viewModel.nameText)
                        .textFieldStyle(.roundedBorder)
                    TextField("Email", text: $viewModel.emailText)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
            }
            Button {
                Task {
                    await viewModel.createContact()
                }
            } label: {
                Text("Save")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
