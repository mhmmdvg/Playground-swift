//Numeric Literals

/*
 Pada modul sebelumnya Anda sudah mempelajari mengenai integer dan floating point. Pada materi tersebut dijelaskan sebuah angka dapat memiliki rentang tertentu. Nah Anda juga bisa menuliskan sebuah angka dengan berbagai bentuk, yang dikenal dengan numeric literal. Numeric literal dapat ditulis dengan berbagai macam:

 Angka desimal, tanpa awalan.
 Angka biner, dengan awalan 0b.
 Angka oktal, dengan awalan 0o.
 Angka heksadesimal, dengan awalan 0x.
 */

let decimalInteger = 18
print("Nilai decimalInteger adalah \(decimalInteger)")

let binaryInteger = 0b10010
print("Nilai binaryInteger adalah \(binaryInteger)")

let octalInteger = 0o22
print("Nilai octalInteger adalah \(octalInteger)")

let hexadecimalInteger = 0x12
print("Nilai hexadecimalInteger adalah \(hexadecimalInteger)")

//Exponen
print("----------- Exponen -----------")

let decimalExponen = 1.25e2
print("1.25e2 berarti 1.25 x 10 pangkat 2 atau \(decimalExponen)")

let anotherDecimalExponen = 1.25e-2
print("1.25e-2 berarti 1.25 x 10 pangkat -2 atau \(anotherDecimalExponen)")

let hexadecimalExponen = 0xFp2
print("0xFp2 berarti 15 x 2 pangkat 2 atau \(hexadecimalExponen)")

let anotherHexadecimalExponen = 0xFp-2
print("0xFp-2 berarti 15 x 2 pangkat -2 atau \(anotherHexadecimalExponen)")

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456                // 123.456
let oneMillion = 1_000_000                   // 1000000
let justOverOneMillion = 1_000_000.000_000_1
