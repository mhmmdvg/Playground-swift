// Optional

/**
 Anda dapat menggunakan opsional ketika nilai dari sebuah konstanta atau variabel berkemungkinan tidak ada atau nil. Sebuah opsional mewakili dua kemungkinan yakni memiliki nilai dan tidak memiliki nilai sama sekali. Berikut adalah penggunaan optional untuk mengatasi ketiadaan sebuah nilai.
 */

/**
 Type conversion memungkinkan Anda mengubah tipe data String menjadi Int, contohnya “123” menjadi nilai numerik 123. Namun, tidak semua string dapat diubah menjadi Integer. Contohnya string “hello, world”, ia tidak memiliki nilai numerik yang jelas untuk dikonversi. Sehingga ketika diubah menjadi Int tidak akan berhasil dan berpotensi menghasilkan nilai nil. Contohnya seperti ini:
 */

//let possibleNumber = "123"
//let convertedNumber = Int(possibleNumber)
// convertedNumber disimpulkan sebagai "Int?", atau "optional Int"

/**
 Karena inisialisasi di atas memicu kegagalan, maka convertedNumber bisa dikatakan sebagai optional Int. Opsional Int dituliskan dengan Int?. Nah, tanda tanya (?) menunjukkan bahwa nilai yang ada adalah opsional. Artinya ia mengandung nilai int atau mungkin tidak mengandung nilai sama sekali.
 **/

// Null/Nil

/**
 Lalu apa itu null atau nil? Mungkin hal ini sudah dibahas di materi sebelumnya. Null artinya tidak memiliki nilai sama sekali. Berbeda dengan empty ya. Kalau empty itu barangnya ada, tapi dalam keadaan tidak ada data di dalamnya. Atau bisa dikatakan botol yang kosong. Sedangkan null, ia benar benar tidak bisa didefinisikan. Jadi bentuk atau tipe datanya tidak terdefinisikan.

 Anda dapat menetapkan variabel opsional ke keadaan tidak terdefinisikan dengan menetapkannya sebagai nil.
 **/

var serverResponseCode: Int? = 404
/// serverResponseCode sebenarnya sebuah Int yang mengandung nilai 404,

serverResponseCode = nil
/// namun saat ini serverResponseCode tidak mengandung nilai sama sekali.

/// Catatan : Anda tidak dapat menggunakan nil untuk konstanta (let) dan variabel non-opsional. Jika konstanta atau variabel dalam kode Anda bekerja dengan nilai nil, maka selalu nyatakan dengan tipe data opsional.

/// Jika Anda mendefinisikan variabel opsional tanpa menyediakan nilai default, maka ia akan secara otomatis diatur ke nil.

var surveyAnswer: String?
/// secara otomatis surveyAnswer akan ditetapkan sebagai variabel nil

/**
 ===================================================================
 **/

// If Statements dan Forced Unwrapping

/**
 Anda juga bisa menggunakan perbandingan bersyarat untuk mengetahui apakah opsional mengandung nilai atau tidak. Anda dapat menggunakan equal to (==) dan not equal to (!=). Bagaimana caranya? Katakanlah Anda memiliki sebuah variabel dengan tipe data opsional. 
 **/

//let convertedNumber: Int? = 123
//
//if convertedNumber != nil {
//    print("convertedNumber memiliki sebuah nilai integer.")
//}

/**
 Jika sekiranya Anda yakin bahwa opsional mengandung sebuah nilai, maka silakan akses nilai tersebut dengan menambahkan tanda seru (!) di bagian akhir variabel tersebut. Tanda seru tersebut secara efektif mengatakan, “Saya tahu bahwa opsional ini memiliki nilai, silakan digunakan.” Inilah yang dikenal dengan pembongkaran paksa dari sebuah nilai opsional.
 **/

let convertedNumber: Int? = 123

if convertedNumber != nil {
    print("convertedNumber memiliki nilai \(convertedNumber!)")
}

// Optional Binding

/**
 Selain membandingkan dengan nilai tidak sama dengan nil, Anda dapat menggunakan optional binding untuk mencari tahu apakah sebuah opsional mengandung nilai atau tidak. Dengan optional binding, Anda tidak perlu menambahkan tanda seru (!) untuk mendapatkan nilai optional. Sebab Anda bisa membuat nilai itu tersedia sebagai konstanta atau variabel sementara.

 Optional binding dapat digunakan dengan pernyataan if dan while untuk memeriksa nilai dalam tipe data optional. Selain itu optional binding juga berfungsi untuk mengekstraksi nilai dari opsional menjadi sebuah konstanta atau variabel non-optional. Pernyataan if dan while akan dideskripsikan lebih jelas di materi Control Flow.
 **/

/// Anda dapat menulis sintaks optional binding untuk pernyataan if seperti ini.

//if let constantName = someOptional{
//    statements
//}

print("===============================================================")

///Anda dapat menulis ulang possibleNumber dari contoh sebelumnya menggunakan optional binding untuk membongkar nilai dari konstanta tersebut.

//let possibleNumber = "123"
//if let actualNumber = Int(possibleNumber) {
//    print("String possibleNumber memiliki nilai string \"\(possibleNumber)\" dan dapat dikonversi menjadi nilai integer \(actualNumber).")
//} else {
//    print("String possibleNumber memiliki nilai string \"\(possibleNumber)\" dan tidak bisa dikonversi menjadi integer.")
//}

/**
 Kode di atas dapat dibaca seperti ini:

 “Jika konversi possibleNumber menjadi Int menghasilkan sebuah nilai, maka akan tercipta konstanta baru dengan nama actualNumber dengan tipe data Int non-optional.”
 */

/**
 Jika konversi berhasil maka konstanta actualNumber akan tersedia dan dapat digunakan pada cabang pertama pernyataan if. Setelah actualNumber diinisialisasi, Anda tidak perlu menggunakan akhiran tanda seru (!) untuk mengakses nilainya. Dalam contoh tersebut actualNumber hanya digunakan untuk mencetak hasil konversi.
 */

/**
 Anda dapat menggunakan konstanta dan variabel dengan optional binding. Jika Anda ingin memanipulasi nilai dari actualNumber dengan cabang pertama pernyataan if, maka Anda bisa menulis if var actualNumber dan nilai yang terkandung di dalamnya akan tersedia sebagai variabel.
 */

let possibleNumber = "123"
if var actualNumber = Int(possibleNumber) {
    actualNumber = 321
    print("String possibleNumber memiliki nilai string \"\(possibleNumber)\" dan dapat dikonversi menjadi nilai integer. Setelah itu nilainya diubah menjadi \(actualNumber). ")
} else {
    print("String possibleNumber memiliki nilai string \"\(possibleNumber)\" dan tidak bisa dikonversi menjadi integer.")
}


print("=================================================================")
/**
 Anda dapat memasukkan optional binding sebanyak mungkin. Kondisi boolean dalam pernyataan if dapat dipisahkan menggunakan koma (,). Jika salah satu nilai dalam opsional binding adalah nil atau kondisi boolean bernilai false/salah, maka kondisi keseluruhan pernyataan tersebut dianggap false/salah. Berikut contohnya:
 */

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
   print("\(firstNumber) < \(secondNumber) < 100")
}


print("=============================== atau seperti ini =======================================")
/// Atau dapat ditulis menjadi seperti ini:

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
