# Classic Models — Sales & Business Analytics (SQL)

Analisis data penjualan pada database **classicmodels** (perusahaan retail model mobil/scale model klasik) menggunakan SQL untuk menjawab pertanyaan-pertanyaan bisnis seputar revenue, produk, dan pelanggan.

![MySQL](https://img.shields.io/badge/-MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![MySQL Workbench](https://img.shields.io/badge/-MySQL%20Workbench-00758F?style=flat-square&logo=mysql&logoColor=white)

---

## 📋 Ringkasan

`classicmodels` adalah database contoh yang umum dipakai untuk latihan SQL, berisi data operasional sebuah perusahaan seperti: pelanggan, pesanan, produk, pembayaran, karyawan, dan kantor cabang. Project ini menggunakan MySQL Workbench untuk menulis serangkaian query SQL guna menjawab pertanyaan bisnis yang relevan buat pengambilan keputusan — mulai dari total revenue sampai produk yang tidak pernah terjual.

## 🗄️ Skema Database

8 tabel yang saling berelasi:

| Tabel | Isi |
|---|---|
| `customers` | Data pelanggan (nama, kontak, negara, credit limit) |
| `orders` | Pesanan (tanggal order, status) |
| `orderdetails` | Detail item per pesanan (produk, jumlah, harga) |
| `products` | Katalog produk (nama, harga beli, MSRP, stok) |
| `productlines` | Kategori/lini produk |
| `payments` | Riwayat pembayaran pelanggan |
| `employees` | Data karyawan/sales rep |
| `offices` | Kantor cabang perusahaan |

Relasi utama dapat dilihat pada erd.png

## ❓ Pertanyaan Bisnis yang Dijawab

Semua query ditulis dan disimpan langsung di MySQL Workbench (`@scripts/1` dalam file `.mwb`):

1. Berapa total revenue perusahaan secara keseluruhan?
2. 10 produk dengan revenue terbesar
3. 10 pelanggan dengan total pembelian terbesar
4. Revenue per negara
5. Revenue per lini produk (product line)
6. Produk paling laku berdasarkan kuantitas terjual
7. Produk dengan stok tersisa paling sedikit
8. Pelanggan dengan jumlah order terbanyak
9. Negara dengan jumlah pelanggan terbanyak
10. Rata-rata harga (MSRP) per lini produk
11. Produk yang belum pernah terjual sama sekali
12. Pelanggan yang belum pernah melakukan pembayaran
13. Tren revenue bulanan (per tahun & bulan)
14. Kontribusi persentase tiap lini produk terhadap total revenue

## 🛠️ Skill yang Ditunjukkan

- Desain skema & ERD (Entity-Relationship Diagram) di MySQL Workbench
- `JOIN` multi-tabel (inner join, left join)
- Agregasi (`SUM`, `COUNT`, `AVG`) dengan `GROUP BY`
- Filter hasil agregasi dengan `HAVING`
- Subquery (untuk hitung persentase kontribusi revenue)

## 📁 Struktur Project

```
classicmodels-sql-analysis/
├── sql workbench.mwb          # file model MySQL Workbench (skema + ERD + saved queries)
├── sql syntax.sql             # (opsional) export semua query jadi file .sql terpisah
├── diagram.png                # (opsional) screenshot/export diagram ERD
└── README.md
```

## ⚙️ Cara Menjalankan

1. Install [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) dan MySQL Server.
2. Download dataset `classicmodels` (data + skema) dari [mysqltutorial.org](https://www.mysqltutorial.org/mysql-sample-database.aspx) — file `.mwb` di repo ini berisi skema/ERD dan query, bukan data mentahnya.
3. Buka `classicmodels.mwb` di MySQL Workbench, atau import langsung file SQL dump dari link di atas ke MySQL Server.
4. Buka tab query di Workbench, jalankan query dari file `@scripts/1` di dalam `.mwb`, atau dari `queries.sql` kalau sudah diekspor terpisah.


## 📫 Kontak

`Rifdah Salsabila` — [LinkedIn](https://www.linkedin.com/in/rifdah-salsabila-732998218/) 
