tag @s remove ckenja.pigmin.pulling
data merge entity @s {Motion:[0.0,1.0,0.0]}
playsound block.note_block.snare master @a ~ ~ ~ 100 2 1
replaceitem entity @s armor.head oxeye_daisy
tag @s add ckenja.pigmin.follow
data modify entity @s Brain.memories."minecraft:angry_at".value set value [I;0,0,0,0]
data modify entity @s Brain.memories."minecraft:angry_at".value set from storage ckenja.pigmin: link