#!/bin/bash

function help(){
echo -e "I will show u all moves and keys: "
echo -e '1. calc (sum/sub/mul/div; $num1; $num2)'
echo -e '2. search - рекурсивный поиск по файлам в директории и вывод в соотв с регулярным выражением ($reg with []; $dir)'
echo -e '3. reverse - запись содержимого файла в обратном порядке в другой файл ($file1; $file2)'
echo -e '4. strlen - вывод длины строки ($str)'
echo -e '5. log - вывод редактированного содержимого файла (output info about x.log file)'
echo -e '6. exit - завершение работы с кодом возврата ($num)'
echo -e '7. help - вывод команд и аргументов к ним ($arg)'
echo -e '8. interactive переход в интерактивный режим ()'
echo -e '9. exit key 0 - success.'
echo -e '10. exit key 3 - нарушен ввод аргументов'
echo -e '11. exit key 69 - недоступный ключ'
echo -e '12. exit key 5 - нарушена целостность приложения'
echo -e '13. exit key 6 - файл не найден'
echo -e '14. exit key 7 - директория не найдена' 

}


