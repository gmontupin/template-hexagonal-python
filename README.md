## 🎯 Objetivo

Este proyecto sirve como **Golden Template** para el desarrollo de microservicios robustos en Python. Implementa el patrón de **Arquitectura Hexagonal (Puertos y Adaptadores)** para asegurar que la lógica de negocio permanezca aislada de las dependencias externas (GCP, APIs de terceros, Bases de datos).

## 🛠️ Guía de Inicio Rápido (Setup)

Sigue estos pasos para configurar tu entorno de desarrollo profesional en menos de 5 minutos:

### 1. Requisitos previos

- [mise](https://mise.jdx.dev/): Para gestionar versiones de herramientas (Python).
- [Poetry](https://python-poetry.org/): Para gestión de dependencias y entornos virtuales.

### 2. Configuración inicial

Clona el repositorio e inicializa el entorno:

```bash
# Instalar herramientas de entorno
mise install

# Instalar dependencias del proyecto
poetry install

# Activar el entorno virtual
poetry shell

```

### 3. Calidad de Código (QA)

Antes de cada commit, asegúrate de cumplir con los estándares de calidad del proyecto:

- **Formateo:** `poetry run black src/`
- **Análisis estático:** `poetry run ruff check src/ --fix`
- **Pruebas:** `poetry run pytest tests/`

---

## 🤖 Automatización y Releases

Este repositorio incluye **`release-please`** configurado para automatizar el ciclo de vida del software.

### Ciclo de vida:

1. **Desarrollo:** Realiza tus commits siguiendo [Conventional Commits](https://www.conventionalcommits.org/es/v1.0.0/).
2. **Push:** Al subir cambios a la rama `master`, el sistema detectará nuevas funcionalidades (`feat:`) o arreglos (`fix:`).
3. **Pull Request:** Se generará automáticamente una PR llamada _"chore: release vX.Y.Z"_ que incluye el **CHANGELOG** en español.
4. **Publicación:** Al hacer _merge_ de esa PR, se creará el Tag y el Release en GitHub automáticamente.

---

## 📂 Estructura del Proyecto

```text
.
├── .github/          # Configuración de CI/CD (release-please)
├── .vscode/          # Configuración recomendada para VS Code
├── src/
│   ├── domain/       # Lógica de negocio pura (Entidades y Puertos)
│   ├── application/  # Casos de uso
│   └── infrastructure/# Adaptadores (Implementaciones de puertos)
├── tests/            # Suite de pruebas unitarias e integración
├── pyproject.toml    # Gestión de dependencias (Poetry)
└── README.md

```

---

## 🔒 Consideraciones de Seguridad

- **Nunca** subas archivos `.env`, llaves de servicio (`*.json`) o secretos al repositorio.
- Utiliza variables de entorno para configurar las credenciales en GCP Secret Manager.

---

## 📜 Licencia

Este proyecto se distribuye bajo la licencia **MIT**.
