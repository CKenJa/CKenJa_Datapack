#コア設置検知
execute as @e[nbt={Item:{tag:{CKenJaNether:1b}}},type=potion] run function ckenja_nether:break
#コアが設置されたら周りを染め始める
execute as @e[tag=ckenja_nether_core_initial,nbt={OnGround:1b}] at @s run function ckenja_nether:core
#侵食する
scoreboard players operation #i ckenja_nether = #loop ckenja_nether
execute as @e[tag=ckenja_nether_core] run function ckenja_nether:main
#水関係の処理
#execute as @e[tag=ckenja_nether_water] run function ckenja_nether:water
#コアをぶっ壊したらマーカーもぶっ殺す
execute unless entity @e[tag=ckenja_nether_core] as @e[tag=ckenja_nether_marker] at @s run kill @s