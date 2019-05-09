epoc=`date +'%s'`

echo ${epoc}

git checkout -b test-${epoc}
echo ${epoc} >> ./README.md
git commit -am "Test ${epoc}"
git push
hub pull-request -b master -m "Test ${epoc}"
