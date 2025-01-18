//
//  DetailView.swift
//  MVVM-Practice
//
//  Created by Ranzyah Adinata Aldo on 12/01/25.
//

import SwiftUI

struct DetailView: View {
    
    @StateObject var viewModel: DetailViewModel
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("To: \(viewModel.emailText)")
            
            TextEditor(text: $viewModel.messageText)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.secondary)
                }
            Button{
                
            } label: {
                Text("Send")
                    .frame(maxWidth: . infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    DetailView(viewModel: .init(emailText: "rando@gmail.com"))
}
