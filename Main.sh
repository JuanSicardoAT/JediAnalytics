#!/bin/bash

TITLE="==== JediAnalytics Demo ===="
prompt="--Por favor eliga una opción: "
response="--Seleccionaste "
goodbye="¡Nos vemos pronto! :)"
confyes="--Ejecutando"
confno="--Regresando"

function new_page () {
    clear
    echo "$TITLE"
}

confirmations=("Si" "No")
function confirmation () {
    echo "--¿Está seguro?"
    select conf in "${confirmations[@]}"
    do
        case $conf in
            "${confirmations[0]}")
                 echo "$confyes"
                 ;;
            "${confirmations[1]}")
                 echo "$confno"
                 exit
                 ;;
esac
done
}

new_page

PS3="$prompt"
options=("Subir archivos a HDFS" "Borrar archivos de HDFS" "Crear base de datos en Hive" "Borrar base de datos en Hive" "Crear tablas externas en Hive" "Borrar tablas externas en Hive" "Crear tablas internas en Hive" "Borrar tablas internas en Hive" "Ejecutar un HQL" "Ejecutar todos los HQLs" "Salir" )
select opt in "${options[@]}"
do
    case $REPLY in
        1)
            new_page
            echo "$response$opt"
            confirmation
            ;;
        2)
            new_page
            echo "$response$opt"
            ;;
        3)
            echo "$response$opt"
            ;;
	4)
            echo "$response$opt"
            ;;
	5)
            echo "$response$opt"
            ;;
	6)
            echo "$response$opt"
            ;;
	7)
            echo "$response$opt"
            ;;
	8)
            echo "$response$opt"
            ;;
	9)
            echo "$response$opt"
            ;;
        10)
            echo "$response$opt"
	    echo "$goodbye"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
break
done
