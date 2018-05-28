#!/bin/bash

echo "1. Crear un usuario"
echo "2. Añadir una contraseña a un usuario existente"
echo "3. Crear un grupo"
echo "4. Añadir usuario a un grupo existente"
echo "5. Salir"

read opcion

case $opcion in

1) 
echo "¿Que nombre quieres que tenga el usuario a crear?"
read nombre
sudo useradd $nombre -m
;;
2)
echo "¿A que usuario quieres ponerle una contraseña?"
read nombre
sudo passwd $nombre
;;
3) echo "¿Como quieres que se llame el grupo a crear?"
read grupo
sudo groupadd $grupo
;;
4) echo "¿Que usuario quieres añadir a un grupo?"
read nombre
echo "¿A que grupo quieres añadirlo?"
read grupo
sudo usermod -G $grupo $nombre
;;
5)
exit
;;
esac
