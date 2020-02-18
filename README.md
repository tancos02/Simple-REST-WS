# WS-Transaksi

## Deskripsi

Untuk menggunakan web service transaksi, gunakan :
### node server.js
pada terminal.
Web service digunakan untuk memberi layanan dalam transaksi.
Dalam web service ini terdapat beberapa service yaitu :
1. create transaction
Dipanggil ketika ingin membuat sebuah transaksi baru.
Membutuhkan request body : idPengguna, idFilm, idTujuan, kursi, idJadwal.
2. get transaction
Dipanggil ketika ingin mendapat data transaksi.
Membutuhkan request parameter : idPengguna.
3. update status
Dipanggil ketika ingin mengubah status dari transaksi.
Membutuhkan request body : id, status.
4. return id
Mengembalikan id dari transaksi terbaru.
5. get transaction status
Mengembalikan status dari sebuah transaksi.
Membutuhkan request parameter : idTransaksi

## Basis Data

Basis data yang digunakan terdapat dalam transaction.sql. Terdapat 1 relasi dalam basis data tersebut, yaitu trans_history. relasi tersebut berisi data transaksi yang pernah dibuat. Memiliki atribut :
1. id = int, primary key, auto increment
2. id_pengguna = int
3. id_film = int
4. id_tujuan = int
5. status = string, default = pending
6. kursi = int
7. id_jadwal = int
8. waktu = datetime, default = now()
9. isRated = int, default = 0
10. jenis = string, default = debit
