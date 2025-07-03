cd desktop
cd Desktop
ld
ls
sudo apt update
sudo apt install git
git --version
git config --global user.name "karen-elisha"
git config --global user.email "karenelisha0204@gmail.com"
cd ~
mkdir shell_project
cd shell_project
code .
ls
cd ~
cd shell_project
git init
git remote add origin https://github.com/karen-elisha/Kairo
git add .
git commit -m "Initial commit - base OS setup"
git push -u origin master
git clone https://github.com/karen-elisha/Kairo.git
cd Kairo
code .
sudo apt update
sudo apt install nasm qemu-system-x86
