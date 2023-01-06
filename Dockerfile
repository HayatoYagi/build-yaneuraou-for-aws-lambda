FROM amazonlinux:latest

RUN yum install -y \
    clang \
    git \
    make

COPY Makefile Makefile

CMD git clone https://github.com/yaneurao/YaneuraOu.git -b V7.61 && \
    cp Makefile YaneuraOu/source/ && \
    cd YaneuraOu/source && \
    make tournament && \
    mv YaneuraOu-by-gcc /out/
