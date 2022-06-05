// Error Handling

/**
 Error handling merupakan proses untuk menanggapi dan memulihkan kondisi kesalahan yang terjadi dalam program Anda. Swift menyediakan sebuah bantuan kelas untuk melempar (throw), menangkap (catch), menyebarkan (propagating), dan memanipulasi (manipulation) kesalahan serta memperbaikinya saat runtime.
 
 Error handling berbeda dengan optional. Optional dapat menggunakan ada atau tidak (nil) adanya nilai untuk mengomunikasikan sebuah keberhasilan atau kegagalan. Sedangkan error handling memungkinkan Anda untuk menentukan penyebab dari kegagalan yang terjadi.
 
 Contohnya ketika Anda membuat sebuah fitur untuk membaca dan memproses sebuah data dari berkas di harddisk. Ada beberapa hal yang dapat memicu kesalahan pada fitur tersebut, seperti berkas tidak memiliki izin untuk dibaca, berkas tidak sesuai dengan lokasi yang dituju, atau berkas yang Anda muat tidak dalam format yang kompatibel.
 
 Dengan membedakan kemungkinan yang terjadi, kesalahan dapat diatasi secara lebih mudah. Sehingga ketika terjadi kesalahan yang tidak dapat diselesaikan dapat dikomunikasikan kepada pengguna.
 
 Ketika suatu function menemukan kesalahan, ia akan melemparkan kesalahan atau error. Sehingga ketika function dipanggil, kita dapat menangkap kesalahan tersebut dan memprosesnya dengan tepat.
 */

/*
 func canThrowAnError() throws {
    // Function ini memicu kesalahan
 }
 */

/**
 Function di atas menunjukan bahwa ia dapat melempar kesalahan dengan memasukkan kata kunci throws dalam deklarasinya. Ketika Anda memanggil fungsi yang memicu kesalahan, Anda dapat menambahkan kata kunci try ke dalam ekspresi function tersebut. Swift secara otomatis akan memberitahu seluruh kesalahan dari ruang lingkup tersebut sampai ia ditangani oleh klausa catch.
 */

do {
    try {
        // Tidak terjadi kesalahan.
    } catch {
        // terjadi kesalahan.
    }
}

/**
 Pernyataan do menciptakan sebuah lingkup baru untuk memberitahu kesalahan yang terjadi. Berikut ini cara menangani berbagai kesalahan.
 */

func makeASandwich() throws {
    // Buatan sandwich memicu kesalahan
}

do {
    try makeASandwich() // Ketika prosesnya berjalan lancar, maka akan masuk ke bagian selanjutnya.
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes() // Jika error yang ditangkap adalah outOfCleanDishes, maka bagian ini akan terpanggil.
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients) // Jika error yang ditangkap adalah missingIngredients, maka bagian ini akan terpanggil.
}

/**
 Dalam contoh di atas, function makeASandwich() (membuat sebuah sandwich) akan menimbulkan error/kesalahan jika tidak ada piring bersih atau ada bahan yang hilang. Karena makeASandwich() dapat membuat kesalahan, maka pemanggilan function dibungkus dengan ekspresi try. Dengan membungkus pemanggilan fungsi dalam pernyataan do, setiap kesalahan akan dilempar dan disebarkan ke klausa catch yang disediakan.

 Jika tidak ada kesalahan yang dilemparkan, maka fungsi eatASandwich() akan dipanggil. Jika kesalahan yang dilemparkan dan cocok dengan kasus .outOfCleanDishes, maka fungsi washDishes() akan dipanggil. Dan jika kesalahan yang dilemparkan dan cocok dengan kasus .missingIngredients, maka fungsi buyGroceries(_:) akan dipanggil dengan nilai (string) yang ditangkap dari catch pattern.
 */
