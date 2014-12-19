echo "Waiting for change"
while true; do
inotifywait -e modify src/* test/*;
mocha test/
done
