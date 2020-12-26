#Ohy My Dat!
function oh_my_dat:please

execute if entity @s[tag=ckenja_pot_initial] run function ckenja_pot:entity/init

#受付中ならアマスタ君のクリック検知アイテムを受け取る
execute if entity @s[tag=!ckenja_pot_comp] run function ckenja_pot:entity/item/general

#受付終了を検知したら、スープを作る配布して止まる。
execute if entity @s[tag=ckenja_pot_comp] run function ckenja_pot:entity/comp/general

#アマスタの頭にボウルを装備させて、落ちるエフェクトで充填して、渡す。


#周りのプレイヤーを盲目に
effect give @a[distance=..4] blindness 1

#常時怪しい感じのエフェクトをくるくる回すportalとwitch
