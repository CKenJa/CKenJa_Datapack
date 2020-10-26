execute if entity @s[tag=ckenja_ghost_ghost] run function ckenja_ghost:ghost/general
execute if entity @s[tag=ckenja_ghost_polgei] run function ckenja_ghost:polgei/general
#イタズラその2の跡片付け
execute if entity @s[tag=ckenja_ghost_torch] run execute if data entity @s {Duration:10} run fill ~ ~ ~ ~ ~ ~ minecraft:soul_torch replace minecraft:structure_void