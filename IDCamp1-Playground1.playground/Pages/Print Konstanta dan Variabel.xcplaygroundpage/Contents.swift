//Untuk mengetahui nilai dari sebuah konstanta dan variabel, Anda dapat menggunakan fungsi print untuk menampilkan hasilnya di console/terminal.

//func print(_ items: Any..., separator: String = " ", terminator: String = "\n")


//Fungsi print(_:separator:terminator:) adalah fungsi global yang digunakan untuk mencetak satu atau lebih nilai ke output. Dalam Xcode fungsi print akan menampilkan hasilnya di panel console. Fungsi print mempunyai 3 properties yang berbeda, yakni

    
print(1.0, 2.0, 3.0, 4.0, 5.0)

print("============ Separator ================")
//Separator digunakan sebagai pemisah antara item yang akan dicetak.
print(1.0, 2.0, 3.0, 4.0, 5.0, separator:" ... ")

print("============== Terminator =================")
//Terminator digunakan untuk mencetak nilai akhir dari sebuah item.
for n in 1...5 {
    print(n, terminator: "")
}

print("\n=============== String =================")
/*String interpolation digunakan untuk membangun sebuah nilai string baru yang terdari dari konstanta, variabel, nilai literal, atau ekspresi dengan nilai string literal di dalamnya.
 */
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

print("The current value of friendlyWelcom is \(friendlyWelcome)")
