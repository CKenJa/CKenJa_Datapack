data modify entity @s Brain.memories."minecraft:angry_at".value set value [I;0,0,0,0]
data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @e[type=hoglin,limit=1] UUID
tag @s add ckenja.pigmin.attack
attribute @s generic.attack_damage base set 10