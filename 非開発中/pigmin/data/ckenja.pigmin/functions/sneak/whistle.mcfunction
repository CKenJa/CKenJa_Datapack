tag @s add ckenja.pigmin.follow
data remove entity @s Brain.memories."minecraft:hunted_recently"
data modify entity @s Brain.memories."minecraft:angry_at".value set value [I;0,0,0,0]
data modify entity @s Brain.memories."minecraft:angry_at".value set from storage ckenja.pigmin: link
stopsound @a master event.raid.horn
playsound event.raid.horn master @a ~ ~ ~ 100 2 1
attribute @s generic.movement_speed base set 0.5
tag @s remove ckenja.pigmin.attack
attribute @s generic.attack_damage base set 0