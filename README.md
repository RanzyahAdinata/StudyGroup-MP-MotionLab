Tanggal: 13 November 2024

Tempat: TULT07-01

Pemateri: KAK YAZID

**PENGENALAN VERSION CONTROL (GIT)**

Pada hari ini, telah diadakan kegiatan study group di Motion Lab dengan materi Git Version Control. Acara ini bertujuan untuk memberikan pemahaman dasar hingga tingkat lanjut tentang penggunaan Git sebagai alat pengelolaan versi (version control) yang penting dalam pengembangan perangkat lunak.

Rincian Kegiatan:

  **Pengenalan Git**
  
  Kegiatan dimulai dengan pengenalan Git, alasan pentingnya penggunaan Git dalam pengembangan proyek, serta perbedaan Git dengan version control lainnya. Para peserta diajak untuk memahami manfaat Git dalam kolaborasi tim, seperti melacak perubahan kode dan menghindari konflik saat bekerja bersama.

  **Dasar-Dasar Perintah Git**
  
  Materi kemudian berlanjut ke dasar-dasar perintah Git, seperti git init, git add, git commit, git push, dan git pull. Para peserta diberikan kesempatan untuk mempraktikkan perintah-perintah ini secara langsung dengan proyek sederhana. Penjelasan mengenai staging area, commit, serta push dan pull dalam repositori juga dijelaskan secara rinci.

  **Branching dan Merging**
  
  Salah satu topik penting dalam Git adalah branching dan merging. Peserta diperkenalkan pada konsep branch dan cara membuat serta mengelola cabang dalam proyek. Ditekankan pula pentingnya branching dalam alur kerja tim dan bagaimana proses merging dilakukan untuk menyatukan perubahan dari berbagai cabang.

**BEBERAPA PROMPT YANG BISA DIGUNAKAN**


git **init** : Menginisialisasi repository Git baru di folder saat ini. Ini membuat folder .git yang akan menyimpan riwayat versi file.
	
git **clone <repository-url>**
: Menggandakan repository GitHub ke komputer lokal. Biasanya digunakan untuk mendownload repo GitHub ke mesin lokal.
	
git **status**
: Menampilkan status file di repo lokal, seperti file yang dimodifikasi, staged, atau file baru yang belum ditambahkan.
	
git **add <file> atau git add .**
: Menambahkan perubahan pada file atau semua file ke dalam staging area, sebagai persiapan untuk di-commit.
	
git **commit -m "pesan commit"**
: Menyimpan perubahan dalam staging area ke riwayat Git dengan pesan tertentu.
	
git **push origin <branch>**
: Mengirim perubahan dari repository lokal ke GitHub pada branch tertentu. Biasanya digunakan setelah melakukan commit.
	
git **pull origin <branch>**
: Mengambil (fetch) perubahan dari repository GitHub dan langsung menggabungkannya (merge) dengan branch lokal.
	
git **fetch origin**
: Mengambil perubahan dari repository GitHub tanpa menggabungkannya ke branch lokal.
	
git **branch**
: Menampilkan daftar branch yang ada di repository lokal. Juga menandai branch yang sedang aktif.
	
git **branch <nama-branch>**
: Membuat branch baru dari branch yang sedang aktif.
	
git **checkout <branch>**
: Berpindah ke branch lain yang telah ada di repo lokal.
	
git **merge <branch>**
: Menggabungkan branch tertentu ke branch yang sedang aktif.
	
git **log**
: Menampilkan riwayat commit pada branch aktif, termasuk ID commit, pesan commit, nama pembuat, dan tanggal.
	
git **reset --hard <commit-id>**
: Mengembalikan repository ke kondisi tertentu berdasarkan commit ID, menghapus perubahan yang belum di-commit.
	
git **branch --set-upstream** : Menghubungkan antar branch.
