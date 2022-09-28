CUR_PATH=$PWD
CUR_DIR=${PWD##*/}

unison -auto -batch -repeat watch -times "$CUR_PATH" ssh://nas/Drive/code/"$CUR_DIR" -ignore "Name .DS_Store" -ignore "Name @eaDir" -prefer newer -copyonconflict
