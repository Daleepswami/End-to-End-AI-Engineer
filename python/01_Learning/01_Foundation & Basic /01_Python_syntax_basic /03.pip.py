What is PIP?
PIP (Pip Installs Packages) is Python's package manager. It installs, upgrades, and removes external libraries/packages from PyPI (Python Package Index). Essential for real-world Python projects!
Main Commands

1. Install Package
          pip install requests
          pip install numpy==1.24.0  # Specific version

2. List Packages
          pip list           # All installed packages
          pip list --outdated  # Show outdated packages

3. Package Info
          pip show requests  # Shows version, dependencies, etc.

4. Uninstall
          pip uninstall requests

5. Requirements File
          Create requirements.txt:-
                           requests==2.28.0
                           numpy

Install all: pip install -r requirements.txt
