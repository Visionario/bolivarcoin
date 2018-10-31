# script para instalar la Wallet de BolivarCoin en GNU/Linux UBUNTU 18.x

# Actualizar el sistema e instalar dependencias
# Éste es el orden de instalación de dependencias más apropiado 
# para la mayoría de las instalaciones Ubuntu 18
sudo apt-get install libssl1.0-dev 

sudo apt-get install qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools 

sudo apt-get install build-essential 

sudo apt-get install libdb++-dev 

sudo apt-get install libboost-all-dev 

sudo apt-get install libqrencode-dev libminiupnpc-dev 

sudo apt-get install libjansson-dev 

sudo apt-get install libgmp-dev 

# Posible error en esta línea 
sudo apt-get install libcurl-openssl1.0-dev 

sudo apt-get install git automake autoconf pkg-config make g++ gcc-6 g++-6 qrencode 


# Add Bitcoin repository PPA
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev

# Compilar la wallet
qmake "USE_QRCODE=1"
make
