# Repository Guidelines

## Project Structure & Module Organization
The template keeps a small footprint. Application entry point lives in `main.py`. Shared modules should be grouped into a package named `python_project_template/` (create the folder when you add the first module) and imported from `main.py`. Configuration and automation live at the repo root: `pyproject.toml` defines metadata and dependencies, `Makefile` wraps common tasks, `.pylintrc` and `ruff.toml` capture linting policy. Place automated tests under `tests/` mirroring the package structure. Keep generated artifacts (e.g., `.venv`, caches) out of version control; the existing `.gitignore` already covers the standard entries.

## Build, Test, and Development Commands
- `make setup` — provisions Python 3.13 via `uv`, creates `.venv`, installs and locks dependencies. Run after cloning or whenever dependencies change.
- `make run` — executes `main.py` inside the managed virtualenv; use for manual smoke checks.
- `make lint` — runs `ruff` autofixes then `pylint` with `.pylintrc`; address warnings immediately.
- `make tidy` — formats Python, shell, and JSON files; prefer before commits to avoid noisy diffs.
- `make clean` — removes virtualenv, lockfiles, caches; run before packaging or when state drifts.

## Coding Style & Naming Conventions
Follow `ruff` defaults: 4-space indentation, 120-character lines, double quotes, import sorting via isort rules. Pylint runs in permissive mode for docstrings but still enforces most correctness checks. Use snake_case for modules, functions, and variables; UpperCamelCase for classes; constants in UPPER_SNAKE. Prefer explicit relative imports within the project package.

## Testing Guidelines
Add a `tests/` package with `__init__.py` and mirror the module layout (`tests/test_main.py`, etc.). Leverage the standard library `unittest` or add `pytest` to `pyproject.toml` and the Makefile when test coverage grows. Name test functions with `test_<behavior>` and keep fixtures short. Run the suite via `uv run python -m unittest` (or `uv run pytest` if adopted) before pushing. Target line coverage above 80% for new modules.

## Commit & Pull Request Guidelines
Keep commits focused and in the imperative mood (`Add run target`, `Refactor setup workflow`) as seen in the log. Reference linked issues in the commit body when applicable. Pull requests should include: a concise summary of changes, testing evidence (commands or screenshots), any follow-up tasks, and mention of breaking changes. Request review once linting and tests pass and CI (when available) is green.
