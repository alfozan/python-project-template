# Makefile for setting up Python environment with uv

# Default target
.DEFAULT_GOAL := setup

# setup python virtual environment and dependencies
setup:
	@echo ">>> Cleaning up..."
	rm -rf .venv > /dev/null 2>&1
	rm -rf uv.lock

	@echo ">>> Installing Python..."
	uv python install

	@echo ">>> Creating virtual environment..."
	uv venv .venv

	# ignore .venv folder in cloud-sync (e.g. Dropbox)
	xattr -w 'com.apple.fileprovider.ignore#P' 1 .venv

	@echo ">>> Activating virtual environment..."
	. .venv/bin/activate

	@echo ">>> Installing dependencies..."
	uv sync --upgrade
	uv lock --upgrade

	uv cache prune
	@echo ">>> Python version..."
	uv run python --version

run:
	uv run python main.py