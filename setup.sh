cd ~/.setup-dots/dots/dev;

mkdir -p ~/.jvm;
wget https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.2%2B13/OpenJDK21U-jdk_x64_linux_hotspot_21.0.2_13.tar.gz -O jvm.tar.gz
tar -xzf jvm.tar.gz -C ~/.jvm;
cd ~/.jvm/jdk-21.0.2+13;
sudo ln -s ~/.jvm/jdk-21.0.2+13/bin/* /bin;

curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs;
chmod +x cs;
./cs setup --yes;
sbt --script-version;

cs install giter8;
cs update g8;