//
//  KalkulatorView.swift
//  MVVM-Practice
//
//  Created by Ranzyah Adinata Aldo on 17/01/25.
//

import SwiftUI

struct KalkulatorView: View {
    @StateObject private var viewModel = KalkulatorViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Kalkulator Cinta ❤️")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.pink)
            
            Text("Dibuat dgn kasih samyang (Randow)")
                .font(.system(size: 12))
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            TextField("Angka 1", text: $viewModel.angka1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)

            TextField("Angka 2", text: $viewModel.angka2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)

            HStack {
                Button(action: { viewModel.operasi = "+"; viewModel.hitungHasil() }) {
                    Text("+")
                        .font(.title)
                        .frame(width: 60, height: 60)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                Button(action: { viewModel.operasi = "-"; viewModel.hitungHasil() }) {
                    Text("-")
                        .font(.title)
                        .frame(width: 60, height: 60)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                Button(action: { viewModel.operasi = "*"; viewModel.hitungHasil() }) {
                    Text("x")
                        .font(.title)
                        .frame(width: 60, height: 60)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                Button(action: { viewModel.operasi = "/"; viewModel.hitungHasil() }) {
                    Text("/")
                        .font(.title)
                        .frame(width: 60, height: 60)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }

            VStack(spacing: 10) {
                Text("Hasil")
                    .font(.title2)
                    .foregroundColor(.gray)

                Text(viewModel.hasil)
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.orange)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.yellow.opacity(0.3))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.orange, lineWidth: 2)
                    )

                if !viewModel.emoticonImageName.isEmpty {
                    Image(viewModel.emoticonImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding()
                }

                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    KalkulatorView()
}
