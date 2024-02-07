cd ~/.setup-dots/dots/dev;

mkdir -p ~/.setup-dots/dots/dev/jvm;
wget https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.2%2B13/OpenJDK21U-jdk_x64_linux_hotspot_21.0.2_13.tar.gz -O jvm.tar.gz
tar -xzf jvm.tar.gz -C ~/.setup-dots/dots/dev/jvm;

curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs;
chmod +x cs;
./cs setup;
sbt --script-version;

cs install giter8;
cs update g8;