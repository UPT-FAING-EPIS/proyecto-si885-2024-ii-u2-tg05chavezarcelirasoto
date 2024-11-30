#!/bin/bash

# Crear un directorio temporal
mkdir -p lambda_package

# Instalar dependencias en el directorio
pip install -r requirements.txt --target lambda_package

# Copiar el código de la función
cp process_survey.py lambda_package/

# Crear el archivo ZIP
cd lambda_package
zip -r ../process_survey.zip .
cd ..

# Limpiar
rm -rf lambda_package

echo "Lambda package created: process_survey.zip"