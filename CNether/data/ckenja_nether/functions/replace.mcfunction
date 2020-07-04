#テンプレ
#execute if block ~ ~ ~ minecraft: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_

#植物
execute if block ~ ~ ~ #ckenja_nether:herb if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_fungus
execute if block ~ ~ ~ #ckenja_nether:herb if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_fungus
execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_nylium
execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_nylium

#木材


#建材
execute if block ~ ~ ~ minecraft:bricks run setblock ~ ~ ~ minecraft:red_nether_bricks
execute if block ~ ~ ~ minecraft:purpur_block run setblock ~ ~ ~ minecraft:nether_bricks
execute if block ~ ~ ~ minecraft:end_stone_bricks run setblock ~ ~ ~ minecraft:quartz_bricks
execute if block ~ ~ ~ minecraft:prismarine_bricks run setblock ~ ~ ~ minecraft:quartz_bricks
execute if block ~ ~ ~ minecraft:prismarine run setblock ~ ~ ~ minecraft:quartz_block
execute if block ~ ~ ~ minecraft:dark_prismarine run setblock ~ ~ ~ minecraft:chiseled_quartz_block

#石材
execute if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:netherrack
execute if block ~ ~ ~ minecraft:cobblestone run setblock ~ ~ ~ minecraft:blackstone
execute if block ~ ~ ~ minecraft:mossy_cobblestone run setblock ~ ~ ~ minecraft:gilded_blackstone
execute if block ~ ~ ~ minecraft:stone_bricks run setblock ~ ~ ~ minecraft:polished_blackstone_bricks
execute if block ~ ~ ~ minecraft:cracked_stone_bricks run setblock ~ ~ ~ minecraft:cracked_polished_blackstone_bricks
execute if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:chiseled_polished_blackstone
execute if block ~ ~ ~ minecraft:smooth_stone run setblock ~ ~ ~ minecraft:polished_blackstone

execute if block ~ ~ ~ #ckenja_nether:polishied run setblock ~ ~ ~ polished_basalt
execute if block ~ ~ ~ #ckenja_nether:stone run setblock ~ ~ ~ basalt 

#土系
execute if block ~ ~ ~ #ckenja_nether: run setblock ~ ~ ~ minecraft:soul_sand
execute if block ~ ~ ~ #ckenja_nether: run setblock ~ ~ ~ minecraft:soul_soil

#その他
execute if block ~ ~ ~ minecraft:snow_block run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~ ~ minecraft:snow run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ #ckenja_nether:aquiferous run setblock ~ ~ ~ minecraft:magma_block
