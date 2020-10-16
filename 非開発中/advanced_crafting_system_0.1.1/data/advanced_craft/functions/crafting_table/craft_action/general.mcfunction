


execute if entity @s[scores={ADCcrafter_id=1}] run function advanced_craft:crafting_table/craft_action/10crafters_count/1
execute if entity @s[scores={ADCcrafter_id=2}] run function advanced_craft:crafting_table/craft_action/10crafters_count/2
execute if entity @s[scores={ADCcrafter_id=3}] run function advanced_craft:crafting_table/craft_action/10crafters_count/3
execute if entity @s[scores={ADCcrafter_id=4}] run function advanced_craft:crafting_table/craft_action/10crafters_count/4
execute if entity @s[scores={ADCcrafter_id=5}] run function advanced_craft:crafting_table/craft_action/10crafters_count/5
execute if entity @s[scores={ADCcrafter_id=6}] run function advanced_craft:crafting_table/craft_action/10crafters_count/6
execute if entity @s[scores={ADCcrafter_id=7}] run function advanced_craft:crafting_table/craft_action/10crafters_count/7
execute if entity @s[scores={ADCcrafter_id=8}] run function advanced_craft:crafting_table/craft_action/10crafters_count/8
execute if entity @s[scores={ADCcrafter_id=9}] run function advanced_craft:crafting_table/craft_action/10crafters_count/9
execute if entity @s[scores={ADCcrafter_id=10}] run function advanced_craft:crafting_table/craft_action/10crafters_count/10






tag @s add ADCcrafted

playsound entity.player.levelup master @a ~ ~ ~ 1 1 1 




data remove block ~ ~ ~ Items[{tag:{ADCpreview_item:1b}}].tag.ADCpreview_item







