//
//  KalkulatorViewModel.swift
//  MVVM-Practice
//
//  Created by Ranzyah Adinata Aldo on 17/01/25.
//

import SwiftUI

class KalkulatorViewModel: ObservableObject {
    @Published var angka1: String = ""
    @Published var angka2: String = ""
    @Published var operasi: String = ""
    @Published var hasil: String = ""
    @Published var emoticonImageName: String = ""

    private let model = KalkulatorModel()

    func hitungHasil() {
        guard let nilai1 = Double(angka1), let nilai2 = Double(angka2) else {
            hasil = "Input lu ga valid"
            emoticonImageName = "error"
            return
        }

        if let result = model.hitung(angka1: nilai1, angka2: nilai2, operasi: operasi) {
            hasil = String(result)
            emoticonImageName = pilihEmoticon(result: result)
        } else {
            hasil = "Error"
            emoticonImageName = "error"
        }
    }

    private func pilihEmoticon(result: Double) -> String {
        switch result {
        case ..<0:
            return "nangis"
        case 0:
            return "netral"
        case 1...100:
            return "ketawa"
        default:
            return "diluar_nalar"
        }
    }
}
