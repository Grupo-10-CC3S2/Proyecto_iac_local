#!/bin/bash
# Script: initial_setup.sh
ENV_NAME=$1
README_PATH=$2
COUNTER_FILE="${README_PATH%/*}/counter.txt"

echo "Ejecutando setup inicial para el entorno: $ENV_NAME"
echo "Fecha de setup: $(date)" > setup_log.txt
echo "Readme se encuentra en: $README_PATH" >> setup_log.txt
echo "Verificando existencia de archivo de placeholder..."

# Ejercicio 3
if [ -e placeholder_*.txt ]; then
    echo "El archivo ya existe"
else
    echo "El archivo aún no existe. Creando archivo de placeholder..."
    touch placeholder_$(date +%s).txt

    # Ejercicio adicional de 3 
    if [ -e "$COUNTER_FILE" ]; then
        count=$(cat "$COUNTER_FILE")
        count=$((count + 1))
    else 
        count=1
    fi

    echo "$count" > "$COUNTER_FILE"
fi
echo "Setup inicial completado."
# Simular más líneas de código
for i in {1..20}; do
    echo "Paso de configuración simulado $i..." >> setup_log.txt
    # sleep 0.01 # Descomenta para simular trabajo
done
