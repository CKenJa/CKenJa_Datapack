#強化版かどうかを#enchantedに保存
scoreboard players set #enchanted ckenja_maximus 0
execute if entity @s[nbt={SelectedItem:{tag:{Unbreakable:1b}}}] run scoreboard players set # ckenja_maximus 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Unbreakable:1b}}]}] run scoreboard players set #enchanted ckenja_maximus 1
#id保存
scoreboard players operation #id ckenja_maximus = @s ckenja_id
#馬側の処理
execute as @e[distance=..2,type=#ckenja_maximus:horses] run function ckenja_maximus:use/sprint2