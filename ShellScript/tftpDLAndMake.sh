echo "=> Set IP"
ifconfig eth0 192.168.1.50 up

echo "=> Enter SDK"
cd XXX

echo "=> Remove XXX"
rm -r XXX

echo "=> Download XXX.zip"
tftp -gr XXX.zip 192.168.1.2

echo "=> Unzip XXX.zip"
unzip XXX.zip

echo "=> Remove XXX.zip"
rm XXX.zip

echo "=> Make"
cd XXX
make
echo "=> ## Make Filish ##"

echo "=> ## Check File XXX ##"
[ -f ./XXX ] && echo "XXX Found" || echo "## XXX Not found !!!##"

echo "=> Copy File"
cp ./XXX /YYY

echo "=> initDevice"
cd /XXX
source ./XXX.sh


echo "## Finish ##"
