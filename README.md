# [Nombre del Proyecto]

Microservicio base para [Descripción breve]

## 🏗️ Arquitectura

Este proyecto sigue el patrón de **Arquitectura Hexagonal (Ports & Adapters)**, diseñado para garantizar:

- **Desacoplamiento:** Lógica de negocio pura independiente de infraestructura.
- **Testeabilidad:** Alta cobertura de pruebas mediante `pytest`.
- **Escalabilidad:** Configurado para despliegues Serverless (GCP Cloud Functions).

## 🚀 Setup

1. **Instalación:** `mise install`
2. **Dependencias:** `poetry install`
3. **Desarrollo:** `poetry shell`

## 🛠️ Herramientas

- **Linter/Formateo:** `ruff check src/`, `black src/`
- **QA:** `pytest tests/`

## 🛡️ Estándares

- **Conventional Commits:** `feat`, `fix`, `chore`, `test`.
- **Seguridad:** Los secretos están bloqueados por `.gitignore` estricto.
