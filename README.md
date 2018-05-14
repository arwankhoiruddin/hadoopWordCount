# hadoopWordCount

Simple hadoop word count that originally taken from http://www.science.smith.edu/dftwiki/index.php/Hadoop_Tutorial_2_--_Running_WordCount_in_Python

Any modification will be pushed into this repository

# How to run

## Put the input file in HDFS

Say you have this structure
```
$ ls
input mapper.py reducer.py
```

First you need to put the file into the HDFS

```
hadoop fs -mkdir /wordcount
hadoop fs -put ./input /wordcount/input
```

## Run the MapReduce Program
```
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.9.0.jar -mapper ./mapper.py -file ./mapper.py -reducer ./reducer.py -file ./reducer.py -input /wordcount/input -output /wordcount/output
```

Note that `$HADOOP_HOME` is the path to your hadoop installation. In my case, I put this in /usr/local/hadoop. You may define `$HADOOP_HOME` in your `~/.bashrc`.

If you use Cloudera Desktop Manager (CDM), here is your script
```
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar -mapper ./mapper.py -file ./mapper.py -reducer ./reducer.py -file ./reducer.py -input input -output /output
```

If you prefer to run the jar file
```
hadoop jar wordcount.jar WordCount /input /output
```
