// Boolean

let orangesAreOrange = true
print("Nilai orangesAreOrange adalah \(orangesAreOrange)")

let turnipsAreDelicious = false
print("Nilai turnipsAreDelicious adalah \(turnipsAreDelicious)")

if turnipsAreDelicious {
   print("Mmm, lobaknya lezat!")
} else {
   print("Eww, lobak itu mengerikan.")
}


/*
 Tipe data safety Swift akan mencegah nilai-nilai non-boolean diganti menjadi boolean. Contohnya ketika Anda mempunyai sebuah konstanta dengan nilai 1. Dalam boolean 1 merupakan bentuk lain dari true. Namun jika Anda memasukkannya dalam pernyataan bersyarat akan menjadi eror, seperti ini detailnya:
 */

/*
 let i = 1
 if i {
     // Contoh berikut tidak akan di compile dan akan dilaporkan karena error
 }
 */

let i = 1
if i == 1 {
  print("Pernyataan bersyarat berhasil di-compile dengan baik.")
}
