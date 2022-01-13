import 'dart:io';

/*
Pemrograman Berorientasi Objek adalah sebuah cara/konsep/sudut pandang
mengenai bagaimana membuat sebuah sistem yang terdiri dari satu atau beberapa objek yang saling berkaitan

Class
adalah sebuah rancangan dari sebuah object.
sebuah class memiliki:
1. Field, yaitu Segala sesuatu yang dimiliki oleh class tersebut.
2. Method/Fungsi , yaitu Apa yang dapat dilakukan oleh class tersebut.

Object
adalah sebuah realisasi/bentuk nyata dari sebuah class.

identifier adalah nama panggilan / nickname / penunjuk / pointer yang kita gunakan
untuk mengakses / menggunakan / memanggil object yang kita miliki.

Jika objek dari identifier belum dibuat, maka identifier tsb akan bernilai null.

Class dan Object
dalam sebuah sistem , sebuah class hanya ada 1 . sedangkan objeck dari class tersebut 
dapat berjumlah lebih dari 1.
 */
main(List<String> arguments) {
  PersegiPanjang kotak1, kotak2, kotak3;
  /* kotak1 dan kotak2 merupakan identifier yang diambil dari rancangan class persegiPanjang */

  kotak1 = new PersegiPanjang();
  /* new artinya membuat sebuah
  objek dari class persegi panjang */

  //kotak1.panjang merupakan field yang dimiliki oleh objek kotak1
  print('-- Persegi Panjang 1 --');
  stdout.write('Masukan panjang 1 : ');
  kotak1.panjang = double.tryParse(stdin.readLineSync());
  stdout.write('Masukan lebar 1   : ');
  kotak1.lebar = double.tryParse(stdin.readLineSync());
  print("\n");

  kotak2 = PersegiPanjang(); // keyword new tidak ditulis , sama aja

  print('-- Persegi Panjang 2 --');
  stdout.write('Masukan panjang 2 : ');
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  stdout.write('Masukan lebar2    : ');
  kotak2.lebar = double.tryParse(stdin.readLineSync()); //inputan user
  print("\n");

  stdout.write('Hasi total luas kedua kotak adalah : ');
  print(kotak1.hitungLuas() + kotak2.hitungLuas());
  //luas langsung dihitung tanpa penampung
  print("\n");

  double luas1 = kotak1.hitungLuas();
  double luas2 = kotak2.hitungLuas();
  print("Hasil luas kedua kotak tersebut = " +
      luas1.toString() +
      " + " +
      luas2.toString() +
      " = " +
      (luas1 + luas2).toString());
  print("\n");

  //kotak3 tidak memiliki objek, hanya sebuah identifier. maka jika dijalankan akan bernilai null
  print(kotak3);
}

class PersegiPanjang {
  // merupakan field yang dimiliki oleh class persegiPanjang
  double panjang;
  double lebar;

  // merupakan methode yang dimiliki oleh class persegiPanjang
  // penambahan keyword this , artinya panjang yang diakses adalah milik dari class PersegiPanjang.
  // HANYA LINGKUP CLASS PersegiPanjang
  double hitungLuas() {
    return this.panjang * lebar; //this bisa ditulis atau tidak gpp
  }
}
