curl -O https://s3.amazonaws.com/research.metamind.io/wikitext/wikitext-103-v1.zip
sudo apt-get install unzip
unzip wikitext-103-v1.zip
hadoop fs -put wikitext-103/wiki.train.tokens /input
