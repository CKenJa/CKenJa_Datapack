#idリセット
execute as @e[type=#ckenja_maximus:horses,scores={ckenja_maximus=0..}] run execute if score @s ckenja_maximus = #id ckenja_maximus run scoreboard players reset @s ckenja_maximus
#通常版の処理
execute if score #enchanted ckenja_maximus matches 0 run function ckenja_maximus:use/sprint/regular
#強化版の処理
execute if score #enchanted ckenja_maximus matches 1 run function ckenja_maximus:use/sprint/enchanted
#登録
scoreboard players operation @s ckenja_maximus = #id ckenja_maximus
#ついでに復活用のID
function ckenja_maximus:use/backup