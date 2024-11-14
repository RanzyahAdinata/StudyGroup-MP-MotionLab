## A. Menggunakan Git dengan HTTPS

### Langkah 1: Membuat Repository
Buat dulu repository yang kita mau di GitHub.
### Langkah 2: Membuka Repository
Setelah membuat repository maka secara default akan mencul link https yang menuju ke repository. 
### Langkah 3: Clone Repository
Buka folder lokal, buka terminal bash dan lakukan git clone. Contoh syntax: git clone https://github.com/username/repository.git

Selanjutnya repository bebas kita apa-apakan atau otak atik.

## B. Menggunakan Git dengan SSH
### Langkah 1: Membuat SSH Key nya dulu MasBro
Jika kita belum pernah membuat SSH key, maka buatlah. Klik settings pada Github, pilih menu SSH and GPG Keys.
### Langkah 2: Buka Dokumentasi How To Generate SSH Key
Berikut adalah link dokumentasi nyaa : https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent 

Karena saya pake MacOS maka langkah yang perlu diikuti di terminal adalah sebagai berikut :
1. Paste the text below, replacing the email used in the example with your GitHub email address.

ssh-keygen -t ed25519 -C "your_email@example.com"

3.  eval "$(ssh-agent -s)"
  
4.  First, check to see if your ~/.ssh/config file exists in the default location.
   
  $ open ~/.ssh/config

> If the file /Users/YOU/.ssh/config does not exist.

  touch ~/.ssh/config
  
**Dan BLA BLA BLAA, bisa diliat di dokumentasi guys**

Lalu save keynya di GitHub...

### Langkah 3: Clone Repository
Sama kaya yang HTTPS tapi kita copy link nya yang SSH guys. Contohnya git clone git@github.com:username/repository.git

Dah tuh nanti di terminal bakal ada minta password saat clone repositorynya. Selanjutnya kita udah bisa otak atik repositorynya di lokal.
