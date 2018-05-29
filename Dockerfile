FROM oharasi/coast-base

RUN \
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh && \
  export NVM_DIR="$HOME/.nvm" && \
  [ -s "$NVM_DIR/nvm.sh" ] && \
  . "$NVM_DIR/nvm.sh" && \
  nvm install --lts && \
  npm install -g yarn && \
  echo "\e[1;32m \n \
    NVM:\t$(nvm --version)\n \
    Node:\t$(node -v)\n \
    NPM:\t$(npm -v)\n \
    Yarn:\t$(yarn -v)\n \
    \e[0m \
  "
