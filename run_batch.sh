for i in {1..100}
do
    sh run_singularity.sh --job-dir ./output/kubric360/$i --seed $i
done
