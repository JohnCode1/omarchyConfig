#!/usr/bin/env bash
set -euo pipefail

#Variables
APP_NAME="Ubo App"
UBO_HOME="$HOME/ubo_app/"

# Cloning Repository
echo "Cloning and Pulling ${APP_NAME}..."
cd $HOME/
git clone https://github.com/ubopod/ubo_app.git
git lfs install
git lfs pull

# Creating VENV for versioning
echo "Creating VENV..."
cd $UBO_HOME
uv venv --system-site-packages
# Installing Dependencies
echo "installing dependecies"
uv sync --dev
#Installing buff change for brew use brew install bufbuild/buf/buf
echo "Installing Buf"
yay -S --noconfirm --needed buf
#Generating protobuf files
echo "Generating protobuf files"
uv run poe proto
#Installing Webapp Dependcies
echo "Installing WebApp Dependecies"
cd $UBO_HOME/services/090-web-ui/web-app
npm install # Only needed the first time or when dependencies change
#Compiling protobuf and building webapp
echo "Compiling protobuf files and building webapp"
cd $UBO_HOME/services/090-web-ui/web-app
npm run proto:compile
npm run build
#Setting up Ubo App for development
echo "Setting up Ubo App for development"
uv run poe device:deploy:complete
#Deploying App to UBO Pod
#echo "Deploying Ubo App to Ubo Pod"
#uv run poe device:deploy
#uv run poe device:deploy:restart # gracefully restart the app with systemctl
#uv run poe device:deploy:kill    # kill the process, which will be restarted by systemd if the service is not stopped
#Running Test
#echo "Creating Docker images"
#docker run --rm -it --name ubo-app-test -v .:/ubo-app -v ubo-app-dev-uv-cache:/root/.cache/uv ubo-app-test
#Specific test
#docker run --rm -it --name ubo-app-test -v .:/ubo-app -v ubo-app-dev-uv-cache:/root/.cache/uv ubo-app-test -- <pytest-args>
#docker run --rm -it -v .:/ubo-app -v ubo-app-dev-uv-cache:/root/.cache/uv -v uvo-app-dev-uv-local:/root/.local/share/uv -v ubo-app-dev-uv-venv:/ubo-app/.venv ubo-app-test
#docker run --rm -it -v .:/ubo-app -v ubo-app-dev-uv-cache:/root/.cache/uv -v uvo-app-dev-uv-local:/root/.local/share/uv -v ubo-app-dev-uv-venv:/ubo-app/.venv ubo-app-test
#uv run poe test
#Running test on device
#uv run poe device:test:copy
#uv run poe device:test:deps
#uv run poe device:test
#Linter
#uv run poe lint
#uv run poe lint --fix
#Type Checker
#uv run poe typecheck
#SSH CONFIG
#Host ubo-development-pod
  #HostName <ubopod IP here>
  #User pi

echo "Done Installing ${APP_NAME}!😬"








