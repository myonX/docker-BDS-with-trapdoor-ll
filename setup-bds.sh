# !/bin/sh

wget https://www.minecraft.net/bedrockdedicatedserver/bin-win/bedrock-server-1.20.30.02.zip
wget https://github.com/LiteLDev/LiteLoaderBDS/releases/download/2.16.2/LiteLoaderBDS.zip
wget https://github.com/bedrock-dev/trapdoor-ll/releases/download/0.42.1-1.20.30.02/trapdoor-0.42.1-1.20.30.02-5293ed6.zip
unzip bedrock-server-1.20.30.02.zip
unzip LiteLoaderBDS.zip
unzip trapdoor-0.42.1-1.20.30.02-5293ed6.zip
rm LiteLoaderBDS.zip
rm bedrock-server-1.20.30.02.zip
echo hello-world
cd LiteLoaderBDS && mv LLPreLoader.dll  LiteLoader.dll  PeEditor.exe  plugins ..
cd ..
rm -r LiteLoaderBDS
expect -c "
set timeout -1
spawn wine PeEditor.exe
expect \"Press any key to continue...\"
send \"\n\"
interact
"
mv ./out/plugins/trapdoor ./out/plugins/trapdoor-0.42.1-1.20.30.02-5293ed6.dll  ./out/plugins/trapdoor-0.42.1-1.20.30.02-5293ed6.pdb plugins
wine installer.exe
wine bedrock_server_mod.exe
bash