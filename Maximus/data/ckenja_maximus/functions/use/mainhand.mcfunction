#強化
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:12016000}},Inventory:[{id:"minecraft:enchanted_golden_apple",Slot:-106b},{id:"minecraft:diamond_horse_armor"},{id:"minecraft:iron_horse_armor"},{id:"minecraft:golden_horse_armor"}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b}}}] run function ckenja_maximus:use/mainhand/upgrade
#疾走
execute if entity @s[nbt={RootVehicle:{Entity:{Tame:1b}}}] run function ckenja_maximus:use/sprint1
#耐久
execute if score #damage ckenja_maximus matches 1 run function ckenja_maximus:use/mainhand/damage
#作成
#execute if entity @s[nbt={Inventory:[{id:"minecraft:composter",Slot:-106b}]}] at @s run function ckenja_maximus:use/mainhand/make
#洗脳
execute if entity @s[nbt={Inventory:[{id:"minecraft:golden_apple",Slot:-106b}]}] if entity @s[nbt={RootVehicle:{Entity:{Tame:0b}}}] run function ckenja_maximus:use/mainhand/tame
#体力
execute if entity @s[nbt={Inventory:[{id:"minecraft:beetroot_soup",Slot:-106b}]}] run function ckenja_maximus:use/mainhand/health1
#速度
execute if entity @s[nbt={Inventory:[{id:"minecraft:cake",Slot:-106b}]}] run function ckenja_maximus:use/mainhand/speed1
#脚力
execute if entity @s[nbt={Inventory:[{id:"minecraft:cookie",Slot:-106b}]}] run function ckenja_maximus:use/mainhand/jump1