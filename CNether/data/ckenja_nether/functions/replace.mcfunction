#テンプレ
#execute if block ~ ~ ~ minecraft: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_

#マルチカーソルを使って、建材木材石材の階段ハーフブロック塀(フェンス)の記述を一気に書きたい
#対象のブロックを4つコピーして書き換えるなり追加するなりすればよい

#植物
execute if block ~ ~ ~ #ckenja_nether:shroomlight run setblock ~ ~ ~ minecraft:shroomlight
execute if block ~ ~ ~ minecraft:beehive run setblock ~ ~ ~ minecraft:shroomlight destroy
execute if block ~ ~ ~ minecraft:vine if block ~ ~1 ~ minecraft:weeping_vines run setblock ~ ~ ~ minecraft:weeping_vines
execute if block ~ ~ ~ minecraft:vine unless block ~ ~1 ~ minecraft:weeping_vines run setblock ~ ~ ~ minecraft:nether_wart_block
execute if block ~ ~ ~ #ckenja_nether:crop run setblock ~ ~ ~ minecraft:twisting_vines
execute if block ~ ~ ~ #ckenja_nether:stem if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:twisting_vines

execute if block ~ ~ ~ #minecraft:crops if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:nether_wart
execute if block ~ ~ ~ #minecraft:crops if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:nether_sprouts
execute if block ~ ~ ~ minecraft:hay_block if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:nether_wart_block
execute if block ~ ~ ~ minecraft:hay_block if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_wart_block
execute if block ~ ~ ~ #ckenja_nether:herb if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_fungus
execute if block ~ ~ ~ #ckenja_nether:herb if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_fungus
execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_nylium
execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_nylium
execute if block ~ ~ ~ #ckenja_nether:grass if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_roots
execute if block ~ ~ ~ #ckenja_nether:grass if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_roots

#木材
execute if block ~ ~ ~ #ckenja_nether:crimson/door if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_door
execute if block ~ ~ ~ #ckenja_nether:warped/door if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_door
execute if block ~ ~ ~ #ckenja_nether:crimson/fence if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_fence
execute if block ~ ~ ~ #ckenja_nether:warped/fence if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_fence
execute if block ~ ~ ~ #ckenja_nether:crimson/fence_gate if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_fence_gate
execute if block ~ ~ ~ #ckenja_nether:warped/fence_gate if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_fence_gate
execute if block ~ ~ ~ #ckenja_nether:crimson/leaves if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:nether_wart_block
execute if block ~ ~ ~ #ckenja_nether:warped/leaves if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_wart_block
execute if block ~ ~ ~ #ckenja_nether:crimson/planks if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_planks
execute if block ~ ~ ~ #ckenja_nether:warped/planks if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_planks
execute if block ~ ~ ~ #ckenja_nether:crimson/pressure_plate if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_pressure_plate
execute if block ~ ~ ~ #ckenja_nether:warped/pressure_plate if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_pressure_plate
execute if block ~ ~ ~ #ckenja_nether:crimson/sign if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_sign
execute if block ~ ~ ~ #ckenja_nether:warped/sign if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_sign
execute if block ~ ~ ~ #ckenja_nether:crimson/slab if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_slab
execute if block ~ ~ ~ #ckenja_nether:warped/slab if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_slab
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_stairs
execute if block ~ ~ ~ #ckenja_nether:warped/stairs if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_stairs
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_log if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:stripped_crimson_hyphae
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_log if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:stripped_warped_hyphae
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_wood if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:stripped_crimson_stem
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_wood if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:stripped_warped_stem
execute if block ~ ~ ~ #ckenja_nether:crimson/trapdoor if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_trapdoor
execute if block ~ ~ ~ #ckenja_nether:warped/trapdoor if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_trapdoor
execute if block ~ ~ ~ #ckenja_nether:crimson/hyphae if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_hyphae
execute if block ~ ~ ~ #ckenja_nether:warped/hyphae if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_hyphae

#建材
execute if block ~ ~ ~ minecraft:bricks run setblock ~ ~ ~ minecraft:red_nether_bricks
execute if block ~ ~ ~ minecraft:purpur_block run setblock ~ ~ ~ minecraft:nether_bricks
execute if block ~ ~ ~ minecraft:end_stone_bricks run setblock ~ ~ ~ minecraft:quartz_bricks
execute if block ~ ~ ~ minecraft:prismarine_bricks run setblock ~ ~ ~ minecraft:quartz_bricks
execute if block ~ ~ ~ minecraft:prismarine run setblock ~ ~ ~ minecraft:quartz_block
execute if block ~ ~ ~ minecraft:dark_prismarine run setblock ~ ~ ~ minecraft:chiseled_quartz_block

execute if block ~ ~ ~ minecraft:brick_slab run setblock ~ ~ ~ minecraft:red_nether_brick_slab
execute if block ~ ~ ~ minecraft:purpur_slab run setblock ~ ~ ~ minecraft:nether_brick_slab
execute if block ~ ~ ~ minecraft:end_stone_brick_slab run setblock ~ ~ ~ minecraft:smooth_quartz_slab
execute if block ~ ~ ~ minecraft:prismarine_brick_slab run setblock ~ ~ ~ minecraft:smooth_quartz_slab
execute if block ~ ~ ~ minecraft:prismarine_slab run setblock ~ ~ ~ minecraft:quartz_slab
execute if block ~ ~ ~ minecraft:dark_prismarine_slab run setblock ~ ~ ~ minecraft:quartz_slab

execute if block ~ ~ ~ minecraft:brick_stairs run setblock ~ ~ ~ minecraft:red_nether_brick_stairs
execute if block ~ ~ ~ minecraft:purpur_stairs run setblock ~ ~ ~ minecraft:nether_brick_stairs
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs run setblock ~ ~ ~ minecraft:smooth_quartz_stairs
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs run setblock ~ ~ ~ minecraft:smooth_quartz_stairs
execute if block ~ ~ ~ minecraft:prismarine_stairs run setblock ~ ~ ~ minecraft:quartz_stairs
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs run setblock ~ ~ ~ minecraft:quartz_stairs

execute if block ~ ~ ~ minecraft:brick_wall run setblock ~ ~ ~ minecraft:red_nether_brick_wall
execute if block ~ ~ ~ minecraft:end_stone_brick_wall run setblock ~ ~ ~ minecraft:polished_blackstone_wall
execute if block ~ ~ ~ minecraft:prismarine_wall run setblock ~ ~ ~ minecraft:polished_blackstone_wall

#石材
execute if block ~ ~ ~ #ckenja_nether:stone/stone run setblock ~ ~ ~ minecraft:basalt
execute if block ~ ~ ~ #ckenja_nether:stone/polishied run setblock ~ ~ ~ minecraft:polished_basalt
execute if block ~ ~ ~ #ckenja_nether:dirt run setblock ~ ~ ~ minecraft:netherrack
execute if block ~ ~ ~ minecraft:cobblestone run setblock ~ ~ ~ minecraft:blackstone
execute if block ~ ~ ~ minecraft:mossy_cobblestone run setblock ~ ~ ~ minecraft:gilded_blackstone
execute if block ~ ~ ~ minecraft:stone_bricks run setblock ~ ~ ~ minecraft:polished_blackstone_bricks
execute if block ~ ~ ~ minecraft:cracked_stone_bricks run setblock ~ ~ ~ minecraft:cracked_polished_blackstone_bricks
execute if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:chiseled_polished_blackstone
execute if block ~ ~ ~ minecraft:smooth_stone run setblock ~ ~ ~ minecraft:polished_blackstone

execute if block ~ ~ ~ #ckenja_nether:stone/slab run setblock ~ ~ ~ minecraft:blackstone_slab
execute if block ~ ~ ~ minecraft:stone_slab run setblock ~ ~ ~ minecraft:blackstone_slab
execute if block ~ ~ ~ minecraft:cobblestone_slab run setblock ~ ~ ~ minecraft:blackstone_slab
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab run setblock ~ ~ ~ minecraft:blackstone_slab
execute if block ~ ~ ~ minecraft:stone_brick_slab run setblock ~ ~ ~ minecraft:polished_blackstone_slab
execute if block ~ ~ ~ minecraft:smooth_stone_slab run setblock ~ ~ ~ minecraft:polished_blackstone_slab

execute if block ~ ~ ~ #ckenja_nether:stone/stairs run setblock ~ ~ ~ minecraft:blackstone_stairs
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs run setblock ~ ~ ~ minecraft:polished_blackstone_stairs
execute if block ~ ~ ~ minecraft:stone_stairs run setblock ~ ~ ~ minecraft:blackstone_stairs
execute if block ~ ~ ~ minecraft:cobblestone_stairs run setblock ~ ~ ~ minecraft:blackstone_stairs
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs run setblock ~ ~ ~ minecraft:blackstone_stairs
execute if block ~ ~ ~ minecraft:stone_brick_stairs run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs

execute if block ~ ~ ~ #ckenja_nether:stone/wall run setblock ~ ~ ~ minecraft:blackstone_wall
execute if block ~ ~ ~ minecraft:cobblestone_wall run setblock ~ ~ ~ minecraft:blackstone_wall
execute if block ~ ~ ~ minecraft:mossy_cobblestone_wall run setblock ~ ~ ~ minecraft:blackstone_wall
execute if block ~ ~ ~ minecraft:stone_brick_wall run setblock ~ ~ ~ minecraft:polished_blackstone_brick_wall

##その他
execute if block ~ ~ ~ minecraft:stone_pressure_plate run setblock ~ ~ ~ minecraft:polished_blackstone_pressure_plate
execute if block ~ ~ ~ #ckenja_nether:ore run setblock ~ ~ ~ minecraft:nether_gold_ore
execute if block ~ ~ ~ minecraft:diamond_ore run setblock ~ ~ ~ minecraft:ancient_debris

#土系
execute if block ~ ~ ~ minecraft:farmland if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:soul_soil

execute if block ~ ~ ~ #ckenja_nether:sand run setblock ~ ~ ~ minecraft:soul_sand
execute if block ~ ~ ~ #ckenja_nether:soil run setblock ~ ~ ~ minecraft:soul_soil

#その他
execute if block ~ ~ ~ minecraft:netherrack if block ~ ~1 ~ minecraft:fire run setblock ~ ~ ~ minecraft:soul_soil
execute if block ~ ~ ~ minecraft:fire run setblock ~ ~ ~ minecraft:soul_fire
execute if block ~ ~ ~ minecraft:torch run setblock ~ ~ ~ minecraft:soul_torch
execute if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:soul_campfire
execute if block ~ ~ ~ minecraft:lantern run setblock ~ ~ ~ minecraft:soul_lantern

execute if block ~ ~ ~ minecraft:sea_lantern run setblock ~ ~ ~ minecraft:glowstone
execute if block ~ ~ ~ minecraft:composter run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ minecraft:snow_block run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~ ~ #ckenja_nether:terracotta run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~ ~ #ckenja_nether:glazed run setblock ~ ~ ~ minecraft:crying_obsidian
execute if block ~ ~ ~ minecraft:white_wool run setblock ~ ~ ~ minecraft:black_wool
execute if block ~ ~ ~ minecraft:white_carpet run setblock ~ ~ ~ minecraft:black_carpet
execute if block ~ ~ ~ minecraft:snow run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ #ckenja_nether:aquiferous run setblock ~ ~ ~ minecraft:magma_block
execute if block ~ ~ ~ minecraft:skeleton_skull run setblock ~ ~ ~ minecraft:wither_skeleton_skull
execute if block ~ ~ ~ minecraft:skeleton_wall_skull run setblock ~ ~ ~ minecraft:wither_skeleton_wall_skull