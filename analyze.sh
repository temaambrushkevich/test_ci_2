RESULT=$(cat output.txt)
TRUERES="70.0"

if [ "$RESULT" == "$TRUERES" ]; then
    echo "yes"
    exit 0
else
    echo "no"
    exit 1
fi