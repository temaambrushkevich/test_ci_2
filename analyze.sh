RESULT=`tr -d '\0' < output.txt`
TRUERES="70.0"
echo $RESULT

if [ "$RESULT" == "$TRUERES" ]; then
    echo "yes"
    exit 0
else
    echo "no"
    exit 1
fi