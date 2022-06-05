// Type Safety dan Type Inference

/*
 Note: Swift merupakan salah satu bahasa pemrograman type-safe.
 Dengan type-safe, kode yang digunakan akan jadi lebih jelas terlebih ketika menggunakan berbagai tipe data yang ada. Contohnya saat memerlukan sebuah tipe data String, tentu Anda tidak akan dapat mengirim dengan tipe data Int.
*/


/*
 Sedangkan type-checking berfungsi untuk menghindari kesalahan saat bekerja dengan berbagai jenis tipe data yang berbeda. Namun sewaktu mendeklarasikan variabel dan konstanta, Anda tidak diharuskan menentukan tipe datanya.
 
 Sebab Swift akan menggunakan type inference untuk mengetahui tipe data yang sesuai. Type inference memungkinkan kompiler menyimpulkan tipe data tertentu secara otomatis saat proses kompilasi dilakukan. Dengan type inference, proses deklarasi menjadi lebih ringkas. Type inference sangat berguna ketika Anda mendeklarasikan konstanta atau variabel dengan inisialisasi sebuah nilai atau value.
 */


/*
 Mari kita contohkan dengan studi kasus berikut. Ketika Anda mempunyai sebuah konstanta baru dengan nilai literal 42. Pada saat itu Anda tidak menuliskan tipe datanya. Nah, secara otomatis Swift akan menyimpulkan bahwa konstanta tersebut bertipe data Int. Mengapa demikian? Sebab Anda menginisialisasinya menggunakan angka yang terlihat seperti bilangan bulat atau integer.
 */

let age = 42
// Konstanta dengan nama age akan disimpulkan dengan tipe data Integer.

let pi = 3.14159
// Konstanta dengan nama pi akan disimpulkan dengan tipe data Double.
/*
 Note : Swift akan selalu memilih double dibandingkan dengan float ketika memprediksi sebuah angka dengan tipe floating-point.
 */


/*
 Lalu bagaimana jika Anda menggabungkan dua tipe literal, seperti integer dengan floating-point? Swift akan akan menyimpulkan tipe datanya menjadi double, contohnya seperti ini:
 */
let anotherPi = 3 + 0.14159
// Konstanta dengan nama anotherPi akan diprediksi dengan tipe data Double
/*
 Dalam kode tersebut sebuah nilai literal 3 tidak memiliki tipe data secara eksplisit. Swift akan memprediksi tipe datanya adalah Int. Namun jika Anda lihat nilai literal selanjutnya adalah 0.14149, artinya itu adalah double. Oleh karena itu, Swift akan menyimpulkan bahwa tipe data dari output adalah double. 
 */
