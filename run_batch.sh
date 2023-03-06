for i in {1..10}
do
    sh run.sh --job-dir ./output/kubric360/$i --seed $i
done
