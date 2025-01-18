//
//  KalkulatorModel.swift
//  MVVM-Practice
//
//  Created by Ranzyah Adinata Aldo on 17/01/25.
//

import Foundation

struct KalkulatorModel {
    func hitung(angka1: Double, angka2: Double, operasi: String) -> Double? {
        switch operasi {
        case "+":
            return angka1 + angka2
        case "-":
            return angka1 - angka2
        case "*":
            return angka1 * angka2
        case "/":
            return angka2 != 0 ? angka1 / angka2 : nil
        default:
            return nil
        }
    }
}
