#Ohy My Dat!
function oh_my_dat:please

execute if entity @s[tag=ckenja_pot_initial] run function ckenja_pot:entity/init

#受付中ならアマスタ君のクリック検知アイテムを受け取る
execute if entity @s[tag=!ckenja_pot_comp] run function ckenja_pot:entity/item/general

#受付終了を検知したら、スープを作る配布して止まる。
execute if entity @s[tag=ckenja_pot_comp] run function ckenja_pot:entity/comp/general

#周りのプレイヤーを盲目に
effect give @a[distance=..4] blindness 5

#常時怪しい感じのエフェクトをくるくる回すportalかwitch
particle witch ~ ~1 ~ 0.25 0.25 0.25 1 1 normal

#なんか怪しい感じのサウンドも
execute if predicate ckj02:random/0.01 run playsound block.bubble_column.upwards_ambient block @a ~ ~ ~ 16 1
