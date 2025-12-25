# Python Project Template

This is a template for Python projects.

This project uses [uv](https://docs.astral.sh/uv/) - An extremely fast Python package installer and resolver.

Install from [https://docs.astral.sh/uv/getting-started/installation/](https://docs.astral.sh/uv/getting-started/installation/)

This project uses [Ruff](https://docs.astral.sh/ruff/) for linting and formatting, and [ty](https://docs.astral.sh/ty/) for type checking.

**Python Version:** 3.14 (configured in `pyproject.toml`)

## Makefile Targets and Usage

1. **setup:**
   Cleans up the environment, installs Python, creates a virtual environment, activates it, and installs dependencies.

   ```bash
   make setup
   ```
2. **run:**
   This will run the `main.py` script using the virtual environment.
   ```bash
   make run
   ```
3. **Lint the project:**
   Lints Python files using Ruff (with auto-fix) and type checks with ty.

   ```bash
   make lint
   ```
4. **Tidy project files (Python, shell, JSON):**
   ```bash
   make tidy
   ```
5. **Clean the project:**
   Cleans up the project by removing the virtual environment, lock files, and Python cache/compiled files.
   ```bash
   make clean
   ``` 