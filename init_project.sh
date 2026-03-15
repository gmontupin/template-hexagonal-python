#!/bin/bash

# Estructura Hexagonal
mkdir -p src/application/use_cases
mkdir -p src/domain/models
mkdir -p src/domain/ports
mkdir -p src/infrastructure/adapters
mkdir -p src/infrastructure/config
mkdir -p tests/unit
mkdir -p tests/integration

# Crear archivos de inicio para evitar carpetas vacías (Git no rastrea carpetas vacías)
touch src/application/__init__.py
touch src/domain/__init__.py
touch src/infrastructure/__init__.py
touch src/main.py

echo "Estructura de Arquitectura Hexagonal generada con éxito."
