#!/usr/bin/env bash

BASH_FILES_HOME="BashFiles/"

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
    ./${BASH_FILES_HOME}UploadFilesToHDFS.sh
    ./${BASH_FILES_HOME}ShowHDFSHome.sh
    ;;

  2)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./${BASH_FILES_HOME}DeleteFilesFromHDFS.sh
    ./${BASH_FILES_HOME}ShowHDFSHome.sh
    ;;

  3)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./${BASH_FILES_HOME}CreateDatabase.sh
    ./${BASH_FILES_HOME}ShowDatabases.sh
    ;;

  4)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./${BASH_FILES_HOME}DropDatabase.sh
    ./${BASH_FILES_HOME}ShowDatabases.sh
    ;;

  5)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./${BASH_FILES_HOME}CreateAllExternalTables.sh
    ./${BASH_FILES_HOME}ShowTables.sh
    ./${BASH_FILES_HOME}SelectAllExternalTables.sh
    ;;

  6)
    echo "$SELECT_CONFIRMATION_MESSAGE$selectedOption"
    askConfirmation
    ./${BASH_FILES_HOME}DropAllExternalTables.sh
    ./${BASH_FILES_HOME}ShowTables.sh
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

  *)
    echo "$INVALID_OPTION_MESSAGE"
    echo "$GOODBYE_MESSAGE"
    exit
    ;;

  esac
  break
done

echo "$GOODBYE_MESSAGE"
