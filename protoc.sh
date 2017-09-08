mkdir /tmp/protobuf-install
cd /tmp/protobuf-install
wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz
tar xvzf protobuf-2.5.0.tar.gz
cd protobuf-2.5.0

sudo ./configure
sudo make
sudo make check
sudo make install

# which protoc
export PATH=$PATH:/usr/bin/
protoc --version
