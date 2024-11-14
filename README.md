# Study Group W-0: Pengenalan Version Control (Git)

### 📅 Tanggal: 13 November 2024  
### 📍 Tempat: TULT07-01  
### 👨‍🏫 Pemateri: Kak Yazid

---

## Deskripsi Kegiatan

Pada **13 November 2024**, Motion Lab mengadakan **study group** dengan topik **Git Version Control**. Kegiatan ini bertujuan untuk memberikan pemahaman dasar hingga tingkat lanjut mengenai penggunaan **Git** sebagai alat pengelolaan versi (version control), yang sangat penting dalam pengembangan perangkat lunak.

---

## Rincian Kegiatan

### 1. **Pengenalan Git**
Kegiatan dimulai dengan pengenalan tentang **Git**, alasan mengapa Git sangat penting dalam pengembangan proyek, serta perbandingan Git dengan alat version control lainnya. Para peserta diajak untuk memahami manfaat Git dalam **kolaborasi tim**, seperti melacak perubahan kode dan menghindari konflik saat bekerja bersama.

### 2. **Dasar-Dasar Perintah Git**
Materi dilanjutkan dengan penjelasan dasar-dasar perintah Git, seperti:
- `git init`
- `git add`
- `git commit`
- `git push`
- `git pull`

Peserta diberikan kesempatan untuk mempraktikkan perintah-perintah ini secara langsung dalam proyek sederhana. Penjelasan mendalam tentang **staging area**, **commit**, serta proses **push** dan **pull** dalam repositori juga dibahas secara rinci.

### 3. **Branching dan Merging**
Salah satu topik penting adalah **branching dan merging**. Peserta diperkenalkan pada konsep **branch** dan cara membuat serta mengelola cabang dalam proyek. Materi ini menekankan pentingnya branching dalam **alur kerja tim** dan bagaimana proses merging digunakan untuk menyatukan perubahan dari berbagai cabang.

---

## Beberapa Perintah Git yang Bisa Digunakan

- `git init`  
  Menginisialisasi repository Git baru di folder saat ini. Ini membuat folder `.git` yang menyimpan riwayat versi file.

- `git clone`  
  Menggandakan repository GitHub ke komputer lokal.

- `git status`  
  Menampilkan status file di repo lokal (misalnya file yang dimodifikasi, staged, atau file baru yang belum ditambahkan).

- `git add` atau `git add .`  
  Menambahkan perubahan file ke staging area, siap untuk di-commit.

- `git commit -m "pesan commit"`  
  Menyimpan perubahan di staging area ke riwayat Git dengan pesan yang deskriptif.

- `git push origin <branch>`  
  Mengirim perubahan dari repository lokal ke GitHub pada branch tertentu.

- `git pull origin <branch>`  
  Mengambil perubahan dari repository GitHub dan menggabungkannya dengan branch lokal.

- `git fetch origin`  
  Mengambil perubahan dari repository GitHub tanpa menggabungkannya.

- `git branch`  
  Menampilkan daftar branch yang ada di repository lokal.

- `git branch <branch_name>`  
  Membuat branch baru dari branch yang aktif.

- `git checkout <branch_name>`  
  Berpindah ke branch lain di repo lokal.

- `git merge <branch_name>`  
  Menggabungkan branch tertentu ke branch aktif.

- `git log`  
  Menampilkan riwayat commit pada branch aktif.

- `git reset --hard <commit_id>`  
  Mengembalikan repository ke kondisi commit tertentu, menghapus perubahan yang belum di-commit.

- `git branch --set-upstream`  
  Menghubungkan antar branch.

---

## Kesimpulan
Kegiatan ini memberikan peserta intern motion untuk mengenal git sebelum nantinya akan digunakan sebagai salah satu media kolaborasi dalam pemrograman
dalam project-project software development kedepannya.

---

Terima kasih kepada semua peserta yang hadir dan Kak Yazid sebagai pemateri!
