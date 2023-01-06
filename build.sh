docker build -t build-yaneuraou:7-61 .
docker run --mount type=bind,source="$(pwd)"/out,target=/out build-yaneuraou:7-61
cd out/eval
wget https://github.com/HiraokaTakuya/get_suisho5_nn/blob/master/suisho5_nn/nn.bin?raw=true
mv 'nn.bin?raw=true' nn.bin