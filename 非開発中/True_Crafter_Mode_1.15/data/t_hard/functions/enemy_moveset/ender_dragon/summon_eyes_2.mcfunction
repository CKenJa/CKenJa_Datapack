execute if entity @s[nbt={OnGround:1b}] run particle explosion ~ ~7.5 ~ 0 0 0 0 1
execute if entity @s[nbt={OnGround:1b}] run particle end_rod ~ ~7.5 ~ 0 0 0 0.1 10
execute if entity @s[nbt={OnGround:1b}] run summon minecraft:vex ~ ~7 ~ {BoundX:0,BoundY:0,BoundZ:0,Silent:1b,DeathTime:19,Health:20f,Tags:["T_Hard_Dragon_Eye"],CustomName:'{"text":"True Ender Eye"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{ItemEvent:T_Hard_Ender_Eye,SkullOwner:{Id:"a97ada7e-7f50-4924-b4c9-178280ef6b27",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTJhMTExMGU0MDIzNWE2MzY2ZmQzNWNlNmQ4OTkzYzVlMDM1YzMwOTMxY2JiMDU3ZjMyM2NhNDA4OTA5ZjgxYSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999999,ShowParticles:0b}],Attributes:[{Name:generic.attackDamage,Base:7}]}
execute if entity @s[nbt={OnGround:1b}] run kill @s