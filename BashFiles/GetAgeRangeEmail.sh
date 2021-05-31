#!/usr/bin/env bash

GETTING_ALL_EMAILS_MESSAGE="--Se están obteniendo los emails de todos los clintes
en el rango de edad: "

GET_INFERIOR_LIMIT_PROMPT="--Por favor ingresa el límite inferior de edad"
GET_SUPERIOR_LIMIT_PROMPT="--Por favor ingresa el límite superior de edad"

echo "$GET_INFERIOR_LIMIT_PROMPT"
read -r inferiorAgeLimit

echo "$GET_SUPERIOR_LIMIT_PROMPT"
read -r superiorAgeLimit

echo "${GETTING_ALL_EMAILS_MESSAGE} ${inferiorAgeLimit} - ${superiorAgeLimit}"
hive -e "USE jedianalytics; SELECT * from email_edad where edad >= $inferiorAgeLimit AND edad <= $superiorAgeLimit;"
