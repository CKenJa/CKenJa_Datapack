#カスタムクラフター設置判定
execute store result score #crafter_count ADCcrafter_id if entity @e[tag=ADCcustom_crafter]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},tag=!ADCcustom_crafter] at @s if block ~ ~-0.3 ~ crafting_table run tag @s add ADCnew_crafter
execute unless entity @e[tag=deledtag] run function advanced_craft:crafting_table/crafter/deltag
tag @e[tag=ADCnew_crafter,tag=!deledtag] add deledtag
execute if score #crafter_count ADCcrafter_id matches ..9 as @e[tag=ADCnew_crafter,limit=1] at @s run function advanced_craft:crafting_table/crafter/place
scoreboard players enable @a ADCbreak_all
execute as @a[tag=!ADCbreak_trigger1] if entity @e[tag=ADCnew_crafter] run tellraw @a[tag=!ADCbreak_trigger2] [{"text":"【error】カスタムクラフターは既に最大数である10個存在します 全て撤去する場合は","color":"red"},{"text":"ここ","color":"dark_aqua","underlined": true,"clickEvent":{"action":"run_command","value":"/trigger ADCbreak_all set 1"}},{"text":"をクリックしてください","color":"red"}]
tag @a[tag=!ADCbreak_trigger1] add ADCbreak_trigger1
tag @a[scores={ADCbreak_all=1},tag=ADCbreak_trigger1] remove ADCbreak_trigger1
execute as @a[tag=!ADCbreak_trigger2,scores={ADCbreak_all=1}] run tellraw @s [{"text":"【確認】 ","color":"dark_aqua"},{"text":"はい ","color":"red","clickEvent":{"action":"run_command","value":"/trigger ADCbreak_all set 2"},"underlined": true},{"text":"いいえ","color":"green","underlined": true,"clickEvent":{"action":"run_command","value":"/trigger ADCbreak_all set 3"}}]
tag @a[tag=!ADCbreak_trigger2,scores={ADCbreak_all=1}] add ADCbreak_trigger2
execute as @a[tag=ADCbreak_trigger2,scores={ADCbreak_all=2}] as @e[tag=ADCcustom_crafter] at @s run function advanced_craft:crafting_table/crafter/break_all
tag @a[scores={ADCbreak_all=2},tag=ADCbreak_trigger2] remove ADCbreak_trigger2

execute if entity @a[scores={ADCbreak_all=3}] run tag @e[tag=ADCnew_crafter] remove ADCnew_crafter
scoreboard players set @a ADCbreak_all 0

execute as @e[tag=ADCnew_crafter] at @s if block ~ ~-0.3 ~ crafting_table run tag @s remove ADCnew_crafter
execute as @e[tag=ADCnew_crafter] if entity @s[nbt={Item:{id:"minecraft:crafting_table",Count:1b}}] run tag @s remove ADCnew_crafter

#カスタムクラフター破壊判定
execute as @e[tag=ADCcustom_crafter] at @s unless block ~ ~ ~ barrel run function advanced_craft:crafting_table/crafter/break
