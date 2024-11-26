import Foundation

protocol Kendaraan {
    var nama: String { get set }
    var kecepatan: Int { get set }
    
    func bergerak()
    func berhenti()
}

protocol Mobil: Kendaraan {
    var tipeBahanBakar: String { get set}
    
    func nyalakanMesin()
    func matikanMesin()
}

struct Sedan: Mobil {
    var nama: String
    var kecepatan: Int
    var tipeBahanBakar: String
    
    func bergerak() {
        print("brummm, sedang bergerak dengan kecepatan \(kecepatan) km/jam.")
    }
    
    func berhenti() {
        print("citt, mobil berhenti seketika.")
    }
    
    func nyalakanMesin() {
        print("\(nama) stater mesinnya telah menyala, vroom.")
    }
    
    func matikanMesin() {
        print("\(nama) mesinnya telah mati, tsss.")
    }
}
    
struct SUV: Mobil {
    var nama: String
    var kecepatan: Int
    var tipeBahanBakar: String
        
    func bergerak() {
        print("broom, mobil besar sedang bergerak dengan kecepatan \(kecepatan) km/jam.")
    }
        
    func berhenti() {
        print("syiuttt, mobil berhenti seketika.")
    }
        
    func nyalakanMesin() {
        print("\(nama) stater mesinnya telah menyala, grooom.")
    }
        
    func matikanMesin() {
        print("\(nama) mesinnya telah mati, jegeg.")
    }
}

struct Motor: Kendaraan {
    var nama: String
    var kecepatan: Int
    
    func bergerak() {
        print("ngeeng, motor sedang bergerak dengan kecepatan \(kecepatan) km/jam.")
    }
    
    func berhenti() {
        print("\(nama) seettt, motor berhenti seketika.")
    }
}

func inputKendaraan (_ kendaraan: Kendaraan) {
    kendaraan.bergerak()
    kendaraan.berhenti()
}

func eksekusi() {
    let mSedan = Sedan(nama: "Honda Civic Type R", kecepatan: 100, tipeBahanBakar: "Pertamax")
    let mSUV = SUV(nama: "Hyundai Palisade", kecepatan: 120, tipeBahanBakar: "Diesel")
    let motor = Motor(nama: "Supra Geter", kecepatan: 150)
    
    print("Ini mobil Sedan:")
    mSedan.nyalakanMesin()
    inputKendaraan(mSedan)
    
    print(" ")
    
    print("Ini mobil SUV:")
    mSUV.nyalakanMesin()
    inputKendaraan(mSUV)
    
    print(" ")
    
    print("Ini motor:")
    motor.bergerak()
    motor.berhenti()
}
eksekusi()

