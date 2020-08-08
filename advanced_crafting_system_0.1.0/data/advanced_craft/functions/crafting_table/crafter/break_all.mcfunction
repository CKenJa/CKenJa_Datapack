tag @s add break
setblock ~ ~ ~ air replace
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}},distance=..2]
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2,limit=1]
summon area_effect_cloud ~ ~ ~ {Duration:0,Radius:0,Passengers:[{id:"item",Item:{id:"crafting_table",Count:2}},{id:"item",Item:{id:"item_frame",Count:1}}]}
kill @e[tag=break,type=item_frame]
scoreboard players set @a ADCbreak_all 0
tag @a remove ADCbreak_trigger2

tag @e[tag=ADCnew_crafter] remove ADCnew_crafter

kill @e[type=item,nbt={Item:{tag:{ADCempty_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ADCpreview_item:1b}}}]
