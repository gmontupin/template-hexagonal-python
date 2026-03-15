## 🎯 Objetivo

Este repositorio es un **Golden Template** diseñado para estandarizar el desarrollo de microservicios robustos en Python. Implementa el patrón de **Arquitectura Hexagonal (Puertos y Adaptadores)** para asegurar que la lógica de negocio permanezca pura, desacoplada de frameworks, bases de datos o servicios de terceros (GCP, APIs, etc.).

> **Arquitectura Hexagonal | CI/CD Automatizado | Calidad Garantizada**

---

## 🚀 Setup Profesional

Sigue estos pasos para preparar tu entorno de desarrollo en menos de 5 minutos:

### 1. Requisitos previos

- [mise](https://mise.jdx.dev/): Gestor de versiones de herramientas.
- [Poetry](https://python-poetry.org/): Gestión de dependencias y empaquetado.

### 2. Inicialización

```bash
# Instalar herramientas de entorno y dependencias
mise install
poetry install

# Activar el "Centinela" de calidad local (Hooks)
pre-commit install

```

---

## 🛡️ Estándares de Ingeniería y Calidad (QA)

La calidad no es opcional. El proyecto incluye validación obligatoria antes de cada `commit` mediante `pre-commit`:

- **Formateo automático:** Se aplica `ruff format` para asegurar estilo consistente.
- **Linter de alto rendimiento:** `ruff` detecta errores de sintaxis y deuda técnica en cada archivo.
- **Seguridad:** Los hooks de `pre-commit` detectan automáticamente la inclusión de claves privadas o archivos confidenciales, impidiendo su subida al repositorio.

---

## 🤖 Automatización y Ciclo de Vida (CI/CD)

Este template cuenta con una infraestructura de automatización completa:

### 1. CI Pipeline (`.github/workflows/ci.yml`)

En cada `Push` o `Pull Request`, el sistema ejecuta automáticamente:

- Validación de estilo con `ruff`.
- Suite de pruebas unitarias y de integración con `pytest`.

### 2. Gestión de Releases (`release-please`)

Utilizamos **Semantic Versioning** automatizado:

- **Conventional Commits:** Usa `feat:`, `fix:`, o `chore:` en tus mensajes.
- **Pull Request de Versión:** Al mergear a `master`, se genera automáticamente una PR de liberación con un `CHANGELOG.md` en español generado dinámicamente.

### 3. Mantenimiento de Seguridad (`Dependabot`)

El bot de Dependabot monitorea tus dependencias de `poetry` semanalmente, proponiendo PRs automáticas para aplicar parches de seguridad y actualizaciones de versiones.

---

## 📂 Estructura del Proyecto

```text
.
├── .github/                  # Automatización CI/CD, Releases y Dependabot
├── .pre-commit-config.yaml   # Configuración de los ganchos de calidad
├── src/
│   ├── domain/               # Lógica de negocio pura (Entidades y Puertos)
│   ├── application/          # Casos de uso
│   └── infrastructure/       # Adaptadores (Implementaciones reales)
├── tests/                    # Suite de pruebas unitarias e integración
├── pyproject.toml            # Gestión de dependencias (Poetry)
└── README.md

```

---

## 🔒 Consideraciones de Seguridad

- **Confidencialidad:** Nunca subas archivos `.env`, llaves JSON de GCP o secretos al repositorio.
- **Secret Manager:** Utiliza variables de entorno para inyectar configuraciones desde GCP Secret Manager u otros bóvedas de secretos.
- **Pre-commit:** El hook `detect-private-key` actuará como tu última línea de defensa antes de cada `push`.

---

## 📜 Licencia

Este proyecto se distribuye bajo la licencia **MIT**.
