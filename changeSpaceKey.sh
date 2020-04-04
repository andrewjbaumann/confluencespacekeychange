#!/bin/bash 
# args: 
# [1] = entity file to change 
# [2] = OLDKEY (UPPER)
# [3] = NEWKEY (UPPER) 
echo "Params"
echo 'Entities File = ' $1
echo 'Old Space Key (MUST BE UPPERCASE) = ' $2
echo 'New Space Key (MUST BE UPPERCASE) = ' $3
oldKeyLower=$(echo $2 | tr '[:upper:]' '[:lower:]')
newKeyLower=$(echo $3 | tr '[:upper:]' '[:lower:]')
start=`date +%s`
echo 'Old Space Key (converted lower case) = ' $oldKeyLower
echo 'New Space Key (converted lower case) = ' $newKeyLower
cp "$1" converted.xml
echo "0/33"
sed -i "s/spaceKey=$2/spaceKey=$3/g" "converted.xml"
echo "1/33"
sed -i "s/\[$2:/\[$3:/g" "converted.xml"
echo "2/33"
sed -i "s/key=$2\]/key=$3\]/g" "converted.xml"
echo "3/33"
sed -i "s/<spaceKey>$2<\/spaceKey>/<spaceKey>$3<\/spaceKey>/g" "converted.xml"
echo "4/33"
sed -i "s/ri:space-key=\"$2\"/ri:space-key=\"$3\"/g" "converted.xml"
echo "5/33"
sed -i "s/ri:space-key=$2/ri:space-key=$3/g" "converted.xml"
echo "6/33"
sed -i "s/ri:space-key=$2/ri:space-key=$3/g" "converted.xml"
echo "7/33"
sed -i "s/<ac:parameter ac:name=\"spaces\">$2<\/ac:parameter>/<ac:parameter ac:name=\"spaces\">$3<\/ac:parameter>/g" "converted.xml"
echo "8/33"
sed -i "s/<ac:parameter ac:name=\"spaceKey\">$2<\/ac:parameter>/<ac:parameter ac:name=\"spaceKey\">$3<\/ac:parameter>/g" "converted.xml"
echo "9/33"
sed -i "s/\[CDATA\[$2\]/\[CDATA\[$3\]/g" "converted.xml"
echo "10/33"
sed -i "s/spaceKey=$2/spaceKey=$3/g" "converted.xml"
echo "11/33"
sed -i "s/\[$2:/\[$3:/g" "converted.xml"
echo "12/33"
sed -i "s/>space:$2</>space:$3</g" "converted.xml"
echo "13/33"
sed -i "s/\[CDATA\[{\"spaceKey\":\"$2\"/\[CDATA\[{\"spaceKey\":\"$3\"/g" "converted.xml"
echo "14/33"
sed -i "s/space = \&quot;$2\&quot;/space = \&quot;$3\&quot;/g" "converted.xml"
echo "15/33"
sed -i "s/\"spaceKey\":\"$2\"/\"spaceKey\":\"$3\"/g" "converted.xml"
echo "16/33"
sed -i "s/spaceKey=$oldKeyLower/spaceKey=$newKeyLower/g" "converted.xml"
echo "17/33"
sed -i "s/\[$oldKeyLower:/\[$newKeyLower:/g" "converted.xml"
echo "18/33"
sed -i "s/key=$oldKeyLower\]/key=$newKeyLower\]/g" "converted.xml"
echo "19/33"
sed -i "s/<spaceKey>$oldKeyLower<\/spaceKey>/<spaceKey>$newKeyLower<\/spaceKey>/g" "converted.xml"
echo "20/33"
sed -i "s/ri:space-key=\"$oldKeyLower\"/ri:space-key=\"$newKeyLower\"/g" "converted.xml"
echo "21/33"
sed -i "s/ri:space-key=$oldKeyLower/ri:space-key=$newKeyLower/g" "converted.xml"
echo "22/33"
sed -i "s/ri:space-key=$oldKeyLower/ri:space-key=$newKeyLower/g" "converted.xml"
echo "23/33"
sed -i "s/<ac:parameter ac:name=\"spaces\">$oldKeyLower<\/ac:parameter>/<ac:parameter ac:name=\"spaces\">$newKeyLower<\/ac:parameter>/g" "converted.xml"
echo "24/33"
sed -i "s/<ac:parameter ac:name=\"spaceKey\">$oldKeyLower<\/ac:parameter>/<ac:parameter ac:name=\"spaceKey\">$newKeyLower<\/ac:parameter>/g" "converted.xml"
echo "25/33"
sed -i "s/\[CDATA\[$oldKeyLower\]/\[CDATA\[$newKeyLower\]/g" "converted.xml"
echo "26/33"
sed -i "s/spaceKey=$oldKeyLower/spaceKey=$newKeyLower/g" "converted.xml"
echo "27/33"
sed -i "s/\[$oldKeyLower:/\[$newKeyLower:/g" "converted.xml"
echo "28/33"
sed -i "s/>space:$oldKeyLower</>space:$newKeyLower</g" "converted.xml"
echo "29/33"
sed -i "s/\[CDATA\[{\"spaceKey\":\"$oldKeyLower\"/\[CDATA\[{\"spaceKey\":\"$newKeyLower\"/g" "converted.xml"
echo "30/33"
sed -i "s/space = \&quot;$oldKeyLower\&quot;/space = \&quot;$newKeyLower\&quot;/g" "converted.xml"
echo "31/33"
sed -i "s/\"spaceKey\":\"$oldKeyLower\"/\"spaceKey\":\"$newKeyLower\"/g" "converted.xml"
echo "32/33"
sed -i "s/<property name=\"lowerDestinationSpaceKey\"><!\[CDATA\[$3\]\]><\/property>/<property name=\"lowerDestinationSpaceKey\"><!\[CDATA\[$newKeyLower\]\]><\/property>/g" "converted.xml"
echo "33/33"
end=`date +%s`
runtime=$((end-start))
echo "Runtime:" $runtime