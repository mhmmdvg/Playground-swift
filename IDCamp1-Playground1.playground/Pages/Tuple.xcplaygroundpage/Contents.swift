// Tuple

/*
 Tuple dalam Swift merupakan struktur data yang digunakan untuk menyimpan sekumpulan data. Artinya tuple berfungsi untuk mengelompokkan beberapa nilai menjadi satu nilai majemuk. Nilai-nilai dalam tuple dapat terdiri dari berbagai tipe data dan tidak harus sama.Lalu bagaimana contohnya?

 Katakanlah Anda masuk ke sebuah situs tertentu. Kemudian Anda mengalami eror dengan kode error 404 dan pesannya Not Found.

 Dalam kasus di atas Anda bisa memasukkan kode dan pesan eror tersebut ke dalam tipe tuple. (404, “Not Found”) adalah tuple yang menjelaskan kode status HTTP beserta artinya. Kode status HTTP merupakan nilai khusus yang dikembangkan oleh web server setiap kali Anda meminta halaman web. Nah, "404 - Not Found" akan muncul jika situs yang Anda minta tidak ditemukan.
 */

//let http404Error = (404, "Not Found")
//print("http404Error memiliki tipe (Int, String) dan berisi \(http404Error).")

//http404Error merupakan sebuah tuple yang menggabungkan tipe data Int dan String. Fungsinya untuk menginformasikan kode status HTTP dengan dua nilai yang terpisah, yakni angka dan deskripsi. Anda dapat melihat detailnya dengan menekan Option dan klik pada bagian http404Error.

/*
 Tentunya tak hanya Int dan String. Anda bisa membuat sebuah tuple dari permutasi tipe data apa pun. Tuple juga dapat memiliki nilai sebanyak yang Anda inginkan. Ketika ingin membuat tuple tidak ada batasannya. Contohnya sebuah tuple dengan tipe data (Int, Int, Int), (String, Bool), atau permutasi lain yang Anda butuhkan.
 
 Setelah mengelompokkan berbagai tipe data ke dalam tuple, Anda dapat menguraikannya menjadi konstanta atau variabel yang terpisah. Sehingga Anda bisa mengaksesnya seperti biasa:
 */

//let http404Error = (404, "Not Found")
//let (statusCode, statusMessage) = http404Error
//print("http404Error memiliki kode status \(statusCode)")
//print("http404Error memiliki pesan error \"\(statusMessage)\"")

/*
 Kode di atas menguraikan tuple http404Error menjadi statusCode dan statusMessage. Namun jika hanya memerlukan beberapa nilai dari tuple saja, Anda dapat mengabaikan bagian tuple lainnya dengan garis bawah (_) saat menguraikannya. Contohnya ketika Anda hanya ingin menampilkan kode eror yang terjadi:
 */

//let http404Error = (404, "Not Found")
//let (justTheStatusCode, _) = http404Error
//print("http404Error memiliki kode status \(justTheStatusCode)")

/*
 Atau Anda bisa mengakses nilai secara individual dalam tuple dengan menggunakan urutan indeksnya. Indeks dari sebuah tuple dimulai dari 0. Contohnya seperti ini:
 */
let http404Error = (404, "Not Found")
print("http404Error memiliki kode status \(http404Error.0)")
print("http404Error memiliki pesan error \(http404Error.1)")

print("============================================================")

//Selain itu, Anda juga bisa memberikan nama kepada masing-masing elemen tuple.

let http200Status = (statusCode: 200, description: "OK")

//Jika Anda memberikan nama di tiap elemen tuple, maka Anda dapat menggunakannya untuk mengakses nilai pada elemen tersebut.

print("http200Status memiliki kode status \(http200Status.statusCode)")
print("http200Status memiliki pesan \(http200Status.description)")

/*
 note : Jadi seperti itulah pengertian tuple dan contoh kasusnya. Tuple sangat berguna untuk nilai yang sifatnya sementara namun tidak cocok untuk data yang kompleks. Jadi pertimbangkan ketika menggunakan tipe data tuple ini ya. 
 */
