#!/usr/bin/env bash

TITLE="==== JediAnalytics Demo ===="

PROMPT_SELECT="--Por favor elija una opción: "
SELECT_CONFIRMATION_MESSAGE="--Seleccionó: "
INVALID_OPTION_MESSAGE="--Opción inválida..."
MENU_OPTIONS=("Subir archivos a HDFS" "Borrar archivos de HDFS"
  "Crear base de datos en Hive" "Borrar base de datos en Hive"
  "Crear tablas externas en Hive" "Borrar tablas externas en Hive"
  "Crear tablas internas en Hive" "Borrar tablas internas en Hive"
  "Ejecutar un HQL" "Ejecutar todos los HQLs" "Salir")

GOODBYE_MESSAGE="--Saliendo"

PROMPT_CONFIRMATION="--¿Está seguro?"
YES_CONFIRMATION_MESSAGE="--Ejecutando"
NO_CONFIRMATION_MESSAGE="--Cancelado..."
CONFIRMATION_OPTIONS=("Si" "No")

function showNewPage() {
  clear
  echo "$TITLE"
}

#Shows a confirmation message for safety reasons
function askConfirmation() {
  echo "$PROMPT_CONFIRMATION"
  select conf in "${CONFIRMATION_OPTIONS[@]}"; do
    case $conf in

    "${CONFIRMATION_OPTIONS[0]}")
      echo "$YES_CONFIRMATION_MESSAGE"
      ;;

    "${CONFIRMATION_OPTIONS[1]}")
      echo "$NO_CONFIRMATION_MESSAGE"
      echo "$GOODBYE_MESSAGE"
      exit
      ;;

    esac
    break
  done
}

showNewPage

#Menu of possible actions
PS3="$PROMPT_SELECT"
select selectedOption in "${MENU_OPTIONS[@]}"; do
  case $REPLY in

  1)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./UploadFilesToHDFS.sh
    ./CheckHDFS.sh
    ;;

  2)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    askConfirmation
    askConfirmation
    ./DeleteFilesFromHDFS.sh
    ./CheckHDFS.sh
    ;;

  3)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./CreateDatabase.sh
    ./ShowDatabases.sh
    ;;

  4)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./DeleteDatabase.sh
    ;;

  5)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ;;

  6)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ;;

  7)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ;;

  8)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ;;

  9)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ;;

  10)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ;;

  11)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    echo "$GOODBYE_MESSAGE"
    break
    ;;

  *)
    echo "$INVALID_OPTION_MESSAGE"
    echo "$GOODBYE_MESSAGE"
    exit
    ;;

  esac
  break
done

echo "$GOODBYE_MESSAGE"
