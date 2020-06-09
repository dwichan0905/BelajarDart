import "dart:io";

void main() {
  /*// Nanyain user dan nunggu jawabannya
  stdout.write("Masukkan suhu dalam Fahrenheit: ");
  var fahrenheit = num.parse(stdin.readLineSync());

  // Konversi!
  var celcius = (fahrenheit - 32) * 5 / 9;
  print("$fahrenheit *F = $celcius *C");*/

  print("Konverter suhu!");
  print("=====================");
  print("");
  stdout.write("Masukkan angka yang akan di konversi (dalam Celcius): ");
  var angka = num.tryParse(stdin.readLineSync());

  print("Pilihan Konversi:");
  print("-----------------");
  print("[1] Fahrenheit");
  print("[2] Kelvin");
  print("[3] Reamur");
  stdout.write("Pilih tujuan konversi: ");
  var pil = num.parse(stdin.readLineSync());
  var hasil = 0.0;
  switch (pil){
    case 1:
      hasil = (angka + 32) * 9 / 5;
      break;
    case 2:
      hasil = angka + 273.0;
      break;
    case 3:
      hasil = (angka + 32) * 4 / 5;
      break;
    default:
      print("Pilihan salah.");
      exit(1);
  }
  print("Hasil: $hasil");
}
