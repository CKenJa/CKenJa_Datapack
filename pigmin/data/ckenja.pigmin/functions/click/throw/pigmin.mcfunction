data merge entity @s {Motion:[0,3,0]}
data modify entity @s Motion[0] set from storage ckenja.pigmin: throw[0]
data modify entity @s Motion[2] set from storage ckenja.pigmin: throw[2]
tag @s remove ckenja.pigmin.follow
tag @s add ckenja.pigmin.thrown
data modify entity @s Brain.memories."minecraft:angry_at".value set value [I;0,0,0,0]
