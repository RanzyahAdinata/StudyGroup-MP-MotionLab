import Foundation

//Type Annotation
var salam = "Assalamualaikum"
var jawab = "Waalaikumsalam"
var multilineString = """
Halo, Halo Bandung
Kota kenang-kenangan
"""
var stringInterpolation = "Hai, \(salam)"
var nama = "Aldo"
var umur:Int = 12
var ipk:Double = 3.4
var gender:Bool = true

//Array
let mobil:Array<String> = ["BMW", "Toyota", "Honda"]
let mahasiswa:Any = [nama, umur, ipk, gender]
let warna = Set(["Merah", "Kuning", "Biru", "Merah"])

//Tuple
let nomorTelepon = (budi: 0812738263543, john: 081272374932)

//Dictionary
let ratingMobil = ["BMW": 4.5, "Toyota": 3.0, "Honda": 2.5]

//Enum
enum Hari {
    case senin, selasa, rabu, kamis, jumat, sabtu, minggu
}

//Function
func penjumlahan() -> Int {
    return 10 + 20
}

func persegi(angka: Int){
    print(angka * angka)
}

func pengecekan(a: Int, b: Int) -> Bool {
    if (a + b == 3) {
        return true
    } else {
        return false
    }
}

func nama(to name: String){
    print("Hello, \(name)")
}

//struct
struct Anomalia {
    var nama: String
    var umur: Int?
    
    init(nama: String, umur: Int? = nil) {
        self.nama = nama
        self.umur = umur
    }
}

//Output

//print("Contoh Variable: ", salam)
//print("Contoh MultiLine: ", multilineString)
//print("Contoh Interpolation: ", stringInterpolation)
//print("Contoh Integer: ", umur)
//print("Contoh Double: ", ipk)
//print("Contoh Bool: ", "laki-laki?",gender)

//print(mahasiswa)
//print(mobil)
//print(warna)

//print(nomorTelepon.0)
//print(ratingMobil.count)
//print(Hari.minggu)

//print(penjumlahan() + 10)
//print(pengecekan(a: 1, b: 2))
//persegi(angka: 10)
//nama(to: "Aldo")

var anomalia = Anomalia(nama: "Randoo")
anomalia.nama = "Aldo"
print("Anomalia: \(anomalia.nama)")
