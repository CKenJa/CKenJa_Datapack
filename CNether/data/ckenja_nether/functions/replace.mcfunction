#テンプレ
#execute if block ~ ~ ~ minecraft: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_
say replace

#植物
#execute if block ~ ~ ~ #ckenja_nether:herb if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_fungus
#execute if block ~ ~ ~ #ckenja_nether:herb if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_fungus
execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_nylium
#execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_nylium

#建材

#石材
#execute if block ~ ~ ~ #ckenja_nether:polishied run setblock ~ ~ ~ polished_basalt
#execute if block ~ ~ ~ #ckenja_nether:stone run setblock ~ ~ ~ basalt 

#execute if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:netherrack
#execute if block ~ ~ ~ minecraft:cobblestone run setblock ~ ~ ~ minecraft:blackstone
#execute if block ~ ~ ~ minecraft:mossy_cobblestone run setblock ~ ~ ~ minecraft:gilded_blackstone
#execute if block ~ ~ ~ minecraft:stone_bricks run setblock ~ ~ ~ minecraft:polished_blackstone_bricks
#execute if block ~ ~ ~ minecraft:cracked_stone_bricks run setblock ~ ~ ~ minecraft:cracked_polished_blackstone_bricks
#execute if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:chiseled_polished_blackstone
#execute if block ~ ~ ~ minecraft:smooth_stone run setblock ~ ~ ~ minecraft:polished_blackstone

#その他
#execute if block ~ ~ ~ minecraft:snow_block run setblock ~ ~ ~ minecraft:obsidian
#execute if block ~ ~ ~ minecraft:snow run setblock ~ ~ ~ minecraft:air
#execute if block ~ ~ ~ #ckenja_nether:aquiferous run setblock ~ ~ ~ minecraft:magma_block
