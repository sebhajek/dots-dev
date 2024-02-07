cd ~/.setup-dots/dots/dev;

mkdir -p ~/.jvm;
mkdir -p ~/.setup-dots/dots/dev/jvm;
wget https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.2%2B13/OpenJDK21U-jdk_x64_linux_hotspot_21.0.2_13.tar.gz -O jvm.tar.gz
tar -xzf jvm.tar.gz -C ~/.setup-dots/dots/dev/jvm;
cp -ur ~/.setup-dots/dots/dev/jvm/* ~/.jvm;
cd ~/.jvm/jdk-21.0.2+13;
sudo ln -sf ~/.jvm/jdk-21.0.2+13/bin/* /bin;

curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs;
chmod +x cs;
./cs setup --yes;
source ~/.profile

sbt --script-version;

cs install giter8;
cs update g8;

sudo zypper -n in lua54 lua54-luarocks luajit fennel;

sudo zypper -n in zig clang;

sudo zypper -n in rustup && rustup toolchain install stable;
sudo zypper -n in go;