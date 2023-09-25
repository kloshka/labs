#!/bin/bash
echo "Let's start"
# -p создает два каталога и подкаталог для одного из них
mkdir test; mkdir  -p destination/kloshka/
cd test
# создадим file1 и file2
touch file{1..2}.txt 
# {}позволяет создать файлы с одинаковым названием, но с разными цифрами в конце"
# записываем текст в file1 и file2
echo '''This is file2 it contains description of the command ls ''' > file2.txt
man ls >> file1.txt
# создаем копию file1
cp file1.txt lsdescription.txt
# получаем информацию о копии
file lsdescription.txt
# дозаписываем все строки в которых нашлось ls в file2
cat file1.txt | grep -w "ls" | cat >> file2.txt
# вывод результата
cat file2.txt
# перемещение file2 в каталог destination
mv file2.txt ~/destination
cd ~
# удаление каталог test и всего его содержимого
rm -r test
# вывод количества строк в file2
wc --lines ~/destination/file2.txt
# установка изображения из интернета
wget -O cat https://avatars.dzeninfra.ru/get-zen_doc/5324345/pub_62c71eaf53e39724e081e6df_62c720cfde618606386198e3/scale_1200

