
for i in {1..100}
do
./rsa-keygen -p public -s private -n 400
python random_message.py
./rsa-enc -i message -o cipher -k public
./rsa-dec -i cipher -o recover -k private
DIFF=$(diff recover message)
if ["$DIFF" == ""]; then
    echo "$i success"
else
    echo "$i failed!!!"
    mv message message_failed  
fi
done
