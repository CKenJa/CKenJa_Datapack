execute if entity @s[tag=ckenja_ghost_ghost] run function ckenja_ghost:ghost/general
execute if entity @s[tag=ckenja_ghost_polgei] run function ckenja_ghost:polgei/general
#execute if data entity @s Item.tag.ckenja{id:"ckenja_ghost:summon_candy"} if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks if block ~1 ~ ~1 minecraft:bone_block if block ~1 ~ ~1 minecraft:bone_block if block ~1 ~ ~ minecraft:bone_block if block ~ ~ ~1 minecraft:bone_block if block ~-1 ~ ~ minecraft:bone_block if block ~ ~ ~-1 minecraft:bone_block run function ckenja_ghost:candy/summon
execute if data entity @s[type=minecraft:item] Item.tag.ckenja{Tags:["ckenja_ghost:candy"]} run function ckenja_ghost:candy/general
#イタズラその2の跡片付け
execute if entity @s[tag=ckenja_ghost_torch] run execute if data entity @s {Duration:10} run fill ~ ~ ~ ~ ~ ~ minecraft:soul_torch replace minecraft:void_air{}
