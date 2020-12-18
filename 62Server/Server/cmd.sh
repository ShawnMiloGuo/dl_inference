dir=lib
libs=""
for file in $dir/*; do
    libs=$libs:$file
done

libs=dlpredictonline-0.0.1-SNAPSHOT.jar:$libs
java -classpath $libs com.bj58.ailab.dlpredictonline.components.WPAIDLPredictOnlineGRPCService 50050