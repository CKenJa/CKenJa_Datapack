execute as @e[tag=ckenja_piglin_laglin] unless entity @e[scores={ckenja_piglin=0..}] run scoreboard players set @s ckenja_piglin 0
scoreboard players add @e[scores={ckenja_piglin=0..}] ckenja_piglin 1
execute as @e[scores={ckenja_piglin=30}] run data merge entity @s {NoAI:0b}
scoreboard players set @e[scores={ckenja_piglin=50}] ckenja_piglin 0
execute as @e[scores={ckenja_piglin=0}] run data merge entity @s {NoAI:1b}
#summon minecraft:piglin ~ ~ ~ {FallFlying:1b,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["ckenja_piglin_laglin"],HandItems:[{id:'minecraft:golden_sword',Count:1b},{}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:2}]}