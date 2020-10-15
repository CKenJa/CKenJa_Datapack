#ckenja_domotics:core/device/general as @s[tag=ckenja_domotics_gui] at @s
#GUI構成ごとに別関数、異物を外に排出後、常時置き換え。ボタン検知のためtickの最初に行う。
function #ckenja_domotics:core/layout
#ホッパー使うなカス
execute if block ~ ~-1 ~ hopper{Items:[{tag:{ckenja:{tags:["ckenja_domotics:gui"]}}}]} run data remove block ~ ~-1 ~ Items[{tag:{ckenja:{tags:["ckenja_domotics:gui"]}}}]
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..2,nbt={Items:[{tag:{ckenja:{tags:["ckenja_domotics:gui"]}}}]}] run data remove entity @s Items[{tag:{ckenja:{tags:["ckenja_domotics:gui"]}}}]
#この後持ってるアイテムはckenja_domotics:playerでclear
#ckenja_domotics:entityで落ちてるのもkillする。
