bat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage" | awk -F[:%] '{print (($2+5)-($2+5)%10)/10}')
bat_left=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "time\ to\ empty" | awk -F[:h] '{print $2}')

case $bat in
0)  bar='<fc=#ff0000>[----------]</fc>' ;;
1)  bar='<fc=#ff0000>[#---------]</fc>' ;;
2)  bar='<fc=#ff0000>[##--------]</fc>' ;;
3)  bar='<fc=#ee9a00>[###-------]</fc>' ;;
4)  bar='<fc=#ee9a00>[####------]</fc>' ;;
5)  bar='<fc=#ee9a00>[#####-----]</fc>' ;;
6)  bar='<fc=#00ff00>[######----]</fc>' ;;
7)  bar='<fc=#00ff00>[#######---]</fc>' ;;
8)  bar='<fc=#00ff00>[########--]</fc>' ;;
9)  bar='<fc=#00ff00>[#########-]</fc>' ;;
10) bar='<fc=#00ff00>[##########]</fc>' ;;
*)  bar='<fc=#ff0000>[----!!----]</fc>' ;;
esac

echo Bat: $bar

exit 0
