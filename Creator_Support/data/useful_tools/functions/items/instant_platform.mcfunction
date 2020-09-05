replaceitem entity @p[gamemode=!creative] weapon.mainhand minecraft:lingering_potion{display:{Name:"{\"text\":\"Instant Platform\",\"color\":\"light_purple\",\"italic\":false}",Lore:["{\"text\":\"足元にブロックを置く。\",\"color\":\"white\",\"italic\":false}"]},HideFlags:32,ItemName:Instant_Platform,CustomPotionColor:7895160} 1
particle minecraft:dust 0.25 0.25 0.25 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
playsound minecraft:block.glass.place player @a ~ ~ ~ 1 1
execute at @p run setblock ~ ~-1 ~ minecraft:gray_stained_glass
kill @s
