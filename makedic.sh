#!/bin/bash
pushd mecab/mecab-ipadic
./configure --with-charset=utf8
make clean
make
popd
