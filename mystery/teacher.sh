int_n="$( head -n 179 streets/Buckingham_Place|tail -n 1|grep -o '......$')"
echo $int_n
intname="interview-$int_n"
echo $intname
cd interviews
cat $intname
height=6\'
make=$(cat $intname |rev|cut -d. -f1|rev|cut -d, -f1|rev|cut -d' ' -f1|rev)
color=$(cat $intname |rev|cut -d. -f1 | rev | cut -d, -f1| rev | cut -d' ' -f2|rev)
nums=$(cat  $intname |rev|cut -d. -f1 | rev | cut -d, -f2| rev | cut -d' ' -f5|rev|cut -c 2-5)
nume=$(cat $intname |rev|cut -d. -f1 | rev | cut -d, -f2| rev | cut -d' ' -f1|rev|cut -c 2) 
cd ..
grep -A4 $nums vehicles|grep -A 4 $nume|grep -B 2 -A 2 -i $color|grep -B 1 -A 3 -i $make| grep -B 4 $height
cd memberships
cat "AAA" "Delta_SkyMiles" "Museum_of_Bash_History" "Terminal_City_Library"| grep -o "$MAIN_SUSPECT"| wc -l