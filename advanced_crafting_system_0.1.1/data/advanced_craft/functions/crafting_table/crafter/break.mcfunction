tag @s add break
execute as @e[tag=ADCcustom_crafter,tag=!break] if score @s ADCcrafter_id > @e[tag=break,tag=ADCcustom_crafter,limit=1] ADCcrafter_id run scoreboard players remove @s ADCcrafter_id 1
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}},distance=..2]
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2,limit=1]
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..2,nbt={Items:[{tag:{ADCempty_item:1b}}]}] run data remove entity @s Items[{tag:{ADCempty_item:1b}}]
summon area_effect_cloud ~ ~ ~ {Duration:0,Radius:0,Passengers:[{id:"item",Item:{id:"crafting_table",Count:2}},{id:"item",Item:{id:"item_frame",Count:1}}]}
kill @e[tag=break,type=item_frame]

kill @e[type=item,nbt={Item:{tag:{ADCempty_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ADCpreview_item:1b}}}]




