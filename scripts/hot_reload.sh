cleanup () {
  exit 0;
}

trap cleanup SIGINT SIGTERM;

while [ 1 ]
do
  find lib/ -name '*.dart' | \
  entr -d -p pkill -USR1 -F /tmp/flutter.pid;
done
