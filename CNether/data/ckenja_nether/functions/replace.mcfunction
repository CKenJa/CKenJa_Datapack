#テンプレ
#execute if block ~ ~ ~ minecraft: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: if predicate ckenja_nether:crimson run setblock ~ ~ ~ minecraft:crimson_
#execute if block ~ ~ ~ #ckenja_nether: if predicate ckenja_nether:warped run setblock ~ ~ ~ minecraft:warped_

#マルチカーソルを使って、建材木材石材の階段ハーフブロック塀(フェンス)の記述を一気に書きたい
#対象のブロックを4つコピーして書き換えるなり追加するなりすればよい

#下が変わると壊れるブロックを先に置き換える
execute if block ~ ~1 ~ #ckenja_nether:crop run setblock ~ ~1 ~ minecraft:twisting_vines
execute if block ~ ~1 ~ #ckenja_nether:stem if predicate ckenja_nether:warped run setblock ~ ~1 ~ minecraft:twisting_vines
execute if block ~ ~1 ~ #minecraft:crops if predicate ckenja_nether:crimson run setblock ~ ~1 ~ minecraft:nether_wart[age=3]
execute if block ~ ~1 ~ #minecraft:crops if predicate ckenja_nether:warped run setblock ~ ~1 ~ minecraft:nether_sprouts
execute if block ~ ~1 ~ #ckenja_nether:grass if predicate ckenja_nether:crimson run setblock ~ ~1 ~ minecraft:crimson_roots
execute if block ~ ~1 ~ #ckenja_nether:grass if predicate ckenja_nether:warped run setblock ~ ~1 ~ minecraft:warped_roots

#水
#execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~ minecraft:water run summon area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["ckenja_nether_water"]}
#execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:obsidian

#上が不透過ブロックじゃないといけないしだれツタ
execute if block ~ ~ ~ minecraft:vine if block ~ ~1 ~ minecraft:weeping_vines run setblock ~ ~ ~ minecraft:weeping_vines
execute if block ~ ~ ~ minecraft:vine unless block ~ ~1 ~ minecraft:weeping_vines run setblock ~ ~ ~ minecraft:nether_wart_block

#植物
execute if block ~ ~ ~ minecraft:beehive run setblock ~ ~ ~ minecraft:shroomlight destroy

execute if block ~ ~ ~ #ckenja_nether:shroomlight run setblock ~ ~ ~ minecraft:shroomlight
execute if block ~ ~ ~ minecraft:hay_block if predicate ckenja_nether:crimson run setblock ~ ~ ~ minecraft:nether_wart_block
execute if block ~ ~ ~ minecraft:hay_block if predicate ckenja_nether:warped run setblock ~ ~ ~ minecraft:warped_wart_block

execute if block ~ ~ ~ #ckenja_nether:grass_block if predicate ckenja_nether:crimson run setblock ~ ~ ~ minecraft:crimson_nylium
execute if block ~ ~ ~ #ckenja_nether:grass_block if predicate ckenja_nether:warped run setblock ~ ~ ~ minecraft:warped_nylium

#木材
execute if block ~ ~ ~ #ckenja_nether:herb run setblock ~ ~ ~ minecraft:crimson_fungus
execute if block ~ ~ ~ #ckenja_nether:herb run setblock ~ ~ ~ minecraft:warped_fungus
execute if block ~ ~ ~ #ckenja_nether:crimson/sign run setblock ~ ~ ~ minecraft:crimson_sign
execute if block ~ ~ ~ #ckenja_nether:warped/sign run setblock ~ ~ ~ minecraft:warped_sign

execute if block ~ ~ ~ #ckenja_nether:crimson/fence run setblock ~ ~ ~ minecraft:crimson_fence
execute if block ~ ~ ~ #ckenja_nether:warped/fence run setblock ~ ~ ~ minecraft:warped_fence
execute if block ~ ~ ~ #ckenja_nether:crimson/leaves run setblock ~ ~ ~ minecraft:nether_wart_block
execute if block ~ ~ ~ #ckenja_nether:warped/leaves run setblock ~ ~ ~ minecraft:warped_wart_block
execute if block ~ ~ ~ #ckenja_nether:crimson/planks run setblock ~ ~ ~ minecraft:crimson_planks
execute if block ~ ~ ~ #ckenja_nether:warped/planks run setblock ~ ~ ~ minecraft:warped_planks
execute if block ~ ~ ~ #ckenja_nether:crimson/pressure_plate run setblock ~ ~ ~ minecraft:crimson_pressure_plate
execute if block ~ ~ ~ #ckenja_nether:warped/pressure_plate run setblock ~ ~ ~ minecraft:warped_pressure_plate

#建材
execute if block ~ ~ ~ minecraft:bricks run setblock ~ ~ ~ minecraft:red_nether_bricks
execute if block ~ ~ ~ minecraft:purpur_block run setblock ~ ~ ~ minecraft:nether_bricks
execute if block ~ ~ ~ minecraft:end_stone_bricks run setblock ~ ~ ~ minecraft:quartz_bricks
execute if block ~ ~ ~ minecraft:prismarine_bricks run setblock ~ ~ ~ minecraft:quartz_bricks
execute if block ~ ~ ~ minecraft:prismarine run setblock ~ ~ ~ minecraft:quartz_block
execute if block ~ ~ ~ minecraft:dark_prismarine run setblock ~ ~ ~ minecraft:chiseled_quartz_block

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

execute if block ~ ~ ~ #ckenja_nether:stone/wall run setblock ~ ~ ~ minecraft:blackstone_wall
execute if block ~ ~ ~ minecraft:cobblestone_wall run setblock ~ ~ ~ minecraft:blackstone_wall
execute if block ~ ~ ~ minecraft:mossy_cobblestone_wall run setblock ~ ~ ~ minecraft:blackstone_wall
execute if block ~ ~ ~ minecraft:stone_brick_wall run setblock ~ ~ ~ minecraft:polished_blackstone_brick_wall

#砂岩
execute if block ~ ~ ~ minecraft:sandstone run setblock ~ ~ ~ minecraft:blackstone
execute if block ~ ~ ~ minecraft:red_sandstone run setblock ~ ~ ~ minecraft:blackstone
execute if block ~ ~ ~ minecraft:cut_sandstone run setblock ~ ~ ~ minecraft:polished_blackstone_bricks
execute if block ~ ~ ~ minecraft:cut_red_sandstone run setblock ~ ~ ~ minecraft:polished_blackstone_bricks
execute if block ~ ~ ~ minecraft:chiseled_sandstone run setblock ~ ~ ~ minecraft:chiseled_polished_blackstone
execute if block ~ ~ ~ minecraft:chiseled_red_sandstone run setblock ~ ~ ~ minecraft:chiseled_polished_blackstone
execute if block ~ ~ ~ minecraft:smooth_sandstone run setblock ~ ~ ~ minecraft:polished_blackstone
execute if block ~ ~ ~ minecraft:smooth_red_sandstone run setblock ~ ~ ~ minecraft:polished_blackstone
execute if block ~ ~ ~ minecraft:sandstone_wall run setblock ~ ~ ~ minecraft:blackstone_wall
execute if block ~ ~ ~ minecraft:red_sandstone_wall run setblock ~ ~ ~ minecraft:blackstone_wall

##その他
execute if block ~ ~ ~ minecraft:stone_pressure_plate run setblock ~ ~ ~ minecraft:polished_blackstone_pressure_plate
execute if block ~ ~ ~ #ckenja_nether:ore run setblock ~ ~ ~ minecraft:nether_gold_ore
execute if block ~ ~ ~ minecraft:diamond_ore run setblock ~ ~ ~ minecraft:ancient_debris

#土系
execute if block ~ ~ ~ minecraft:farmland if predicate ckenja_nether:warped run setblock ~ ~ ~ minecraft:soul_soil

execute if block ~ ~ ~ #ckenja_nether:sand run setblock ~ ~ ~ minecraft:soul_sand
execute if block ~ ~ ~ #ckenja_nether:soil run setblock ~ ~ ~ minecraft:soul_soil

#その他
execute if block ~ ~ ~ minecraft:netherrack if block ~ ~1 ~ minecraft:fire run setblock ~ ~ ~ minecraft:soul_soil
execute if block ~ ~ ~ minecraft:fire run setblock ~ ~ ~ minecraft:soul_fire

execute if block ~ ~ ~ #minecraft:flower_pots if predicate ckenja_nether:crimson run setblock ~ ~ ~ minecraft:potted_crimson_fungus
execute if block ~ ~ ~ #minecraft:flower_pots if predicate ckenja_nether:warped run setblock ~ ~ ~ minecraft:potted_warped_fungus

execute if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:soul_campfire
execute if block ~ ~ ~ minecraft:torch run setblock ~ ~ ~ minecraft:soul_torch
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