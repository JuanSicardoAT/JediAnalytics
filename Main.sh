#!/bin/bash

TITLE="==== JediAnalytics Demo ===="

PROMPT_SELECT="--Por favor elija una opción: "
SELECT_CONFIRMATION_MESSAGE="--Seleccionó: "
INVALID_OPTION_MESSAGE="--Opción inválida... Saliendo"
MENU_OPTIONS=("Subir archivos a HDFS" "Borrar archivos de HDFS"
  "Crear base de datos en Hive" "Borrar base de datos en Hive"
  "Crear tablas externas en Hive" "Borrar tablas externas en Hive"
  "Crear tablas internas en Hive" "Borrar tablas internas en Hive"
  "Ejecutar un HQL" "Ejecutar todos los HQLs" "Salir")

GOODBYE_MESSAGE="--Saliendo"

PROMPT_CONFIRMATION="--¿Está seguro?"
YES_CONFIRMATION_MESSAGE="--Ejecutando"
NO_CONFIRMATION_MESSAGE="--Saliendo"
CONFIRMATION_OPTIONS=("Si" "No")

function showNewPage() {
  clear
  echo "$TITLE"
}

function askConfirmation() {
  echo "$PROMPT_CONFIRMATION"
  select conf in "${CONFIRMATION_OPTIONS[@]}"; do
    case $conf in

    "${CONFIRMATION_OPTIONS[0]}")
      echo "$YES_CONFIRMATION_MESSAGE"
      ;;

    "${CONFIRMATION_OPTIONS[1]}")
      echo "$NO_CONFIRMATION_MESSAGE"
      exit
      ;;

    esac
    break
  done
}

showNewPage

PS3="$PROMPT_SELECT"
select opt in "${MENU_OPTIONS[@]}"; do
  case $REPLY in

  1)
    showNewPage
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    askConfirmation
    ;;

  2)
    showNewPage
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  3)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  4)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  5)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  6)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  7)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  8)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  9)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  10)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    ;;

  11)
    echo "$SELECT_CONFIRMATION_MESSAGE$opt"
    echo "$GOODBYE_MESSAGE"
    break
    ;;

  *)
    echo "$INVALID_OPTION_MESSAGE"
    exit
    ;;

  esac
  break
done
