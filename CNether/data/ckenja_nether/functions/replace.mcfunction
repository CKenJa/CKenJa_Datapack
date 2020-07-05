#テンプレ
#execute if block ~ ~ ~ minecraft: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: run setblock ~ ~ ~ minecraft:
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_
#execute if block ~ ~ ~ #ckenja_nether: if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_

#マルチカーソルを使って、建材木材石材の階段ハーフブロック塀(フェンス)の記述を一気に書きたい
#対象のブロックを4つコピーして書き換えるなり追加するなりすればよい

#下が変わると壊れるブロックを先に置き換える
execute if block ~ ~1 ~ #ckenja_nether:crop run setblock ~ ~1 ~ minecraft:twisting_vines
execute if block ~ ~1 ~ #ckenja_nether:stem if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~1 ~ minecraft:twisting_vines
execute if block ~ ~1 ~ #minecraft:crops if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~1 ~ minecraft:nether_wart[age=3]
execute if block ~ ~1 ~ #minecraft:crops if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~1 ~ minecraft:nether_sprouts

#水
execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~ minecraft:water run summon area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["ckenja_nether_water"]}
execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:obsidian

#上が不透過ブロックじゃないといけないしだれツタ
execute if block ~ ~ ~ minecraft:vine if block ~ ~1 ~ minecraft:weeping_vines run setblock ~ ~ ~ minecraft:weeping_vines
execute if block ~ ~ ~ minecraft:vine unless block ~ ~1 ~ minecraft:weeping_vines run setblock ~ ~ ~ minecraft:nether_wart_block

#階段まとめ

##下向き北
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:warped_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=north,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=north,half=bottom]

##下向き南
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:warped_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=south,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=south,half=bottom]

##下向き東
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:warped_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=east,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=east,half=bottom]

##下向き西
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:warped_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=bottom]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=west,half=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=west,half=bottom]

##上向き北
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=north,half=top]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:warped_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=north,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north,half=top]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=north,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=north,half=top]

##上向き南
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=south,half=top]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:warped_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=south,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south,half=top]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=south,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=south,half=top]

##上向き東
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=east,half=top]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:warped_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=east,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east,half=top]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=east,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=east,half=top]

##上向き西
execute if block ~ ~ ~ #ckenja_nether:crimson/stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:crimson_stairs[facing=west,half=top]
execute if block ~ ~ ~ #ckenja_nether:warped/stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:warped_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:brick_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:red_nether_brick_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:purpur_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:nether_brick_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:end_stone_brick_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:prismarine_brick_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:smooth_quartz_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:prismarine_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:dark_prismarine_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:quartz_stairs[facing=west,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=top]
execute if block ~ ~ ~ #ckenja_nether:stone/polishied_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:stone_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:cobblestone_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=top]
execute if block ~ ~ ~ minecraft:stone_brick_stairs[facing=west,half=top] run setblock ~ ~ ~ minecraft:polished_blackstone_brick_stairs[facing=west,half=top]

#ハーフブロックまとめ

##下向き
execute if block ~ ~ ~ #ckenja_nether:crimson/slab[type=bottom] run setblock ~ ~ ~ minecraft:crimson_slab[type=bottom]
execute if block ~ ~ ~ #ckenja_nether:warped/slab[type=bottom] run setblock ~ ~ ~ minecraft:warped_slab[type=bottom]
execute if block ~ ~ ~ minecraft:brick_slab[type=bottom] run setblock ~ ~ ~ minecraft:red_nether_brick_slab[type=bottom]
execute if block ~ ~ ~ minecraft:purpur_slab[type=bottom] run setblock ~ ~ ~ minecraft:nether_brick_slab[type=bottom]
execute if block ~ ~ ~ minecraft:end_stone_brick_slab[type=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=bottom]
execute if block ~ ~ ~ minecraft:prismarine_brick_slab[type=bottom] run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=bottom]
execute if block ~ ~ ~ minecraft:prismarine_slab[type=bottom] run setblock ~ ~ ~ minecraft:quartz_slab[type=bottom]
execute if block ~ ~ ~ minecraft:dark_prismarine_slab[type=bottom] run setblock ~ ~ ~ minecraft:quartz_slab[type=bottom]
execute if block ~ ~ ~ #ckenja_nether:stone/slab[type=bottom] run setblock ~ ~ ~ minecraft:blackstone_slab[type=bottom]
execute if block ~ ~ ~ minecraft:stone_slab[type=bottom] run setblock ~ ~ ~ minecraft:blackstone_slab[type=bottom]
execute if block ~ ~ ~ minecraft:cobblestone_slab[type=bottom] run setblock ~ ~ ~ minecraft:blackstone_slab[type=bottom]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=bottom] run setblock ~ ~ ~ minecraft:blackstone_slab[type=bottom]
execute if block ~ ~ ~ minecraft:stone_brick_slab[type=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_slab[type=bottom]
execute if block ~ ~ ~ minecraft:smooth_stone_slab[type=bottom] run setblock ~ ~ ~ minecraft:polished_blackstone_slab[type=bottom]

##上向き
execute if block ~ ~ ~ #ckenja_nether:crimson/slab[type=top] run setblock ~ ~ ~ minecraft:crimson_slab[type=top]
execute if block ~ ~ ~ #ckenja_nether:warped/slab[type=top] run setblock ~ ~ ~ minecraft:warped_slab[type=top]
execute if block ~ ~ ~ minecraft:brick_slab[type=top] run setblock ~ ~ ~ minecraft:red_nether_brick_slab[type=top]
execute if block ~ ~ ~ minecraft:purpur_slab[type=top] run setblock ~ ~ ~ minecraft:nether_brick_slab[type=top]
execute if block ~ ~ ~ minecraft:end_stone_brick_slab[type=top] run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=top]
execute if block ~ ~ ~ minecraft:prismarine_brick_slab[type=top] run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=top]
execute if block ~ ~ ~ minecraft:prismarine_slab[type=top] run setblock ~ ~ ~ minecraft:quartz_slab[type=top]
execute if block ~ ~ ~ minecraft:dark_prismarine_slab[type=top] run setblock ~ ~ ~ minecraft:quartz_slab[type=top]
execute if block ~ ~ ~ #ckenja_nether:stone/slab[type=top] run setblock ~ ~ ~ minecraft:blackstone_slab[type=top]
execute if block ~ ~ ~ minecraft:stone_slab[type=top] run setblock ~ ~ ~ minecraft:blackstone_slab[type=top]
execute if block ~ ~ ~ minecraft:cobblestone_slab[type=top] run setblock ~ ~ ~ minecraft:blackstone_slab[type=top]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=top] run setblock ~ ~ ~ minecraft:blackstone_slab[type=top]
execute if block ~ ~ ~ minecraft:stone_brick_slab[type=top] run setblock ~ ~ ~ minecraft:polished_blackstone_slab[type=top]
execute if block ~ ~ ~ minecraft:smooth_stone_slab[type=top] run setblock ~ ~ ~ minecraft:polished_blackstone_slab[type=top]

##重ねたやつ
execute if block ~ ~ ~ #ckenja_nether:crimson/slab[type=double] run setblock ~ ~ ~ minecraft:crimson_slab[type=double]
execute if block ~ ~ ~ #ckenja_nether:warped/slab[type=double] run setblock ~ ~ ~ minecraft:warped_slab[type=double]
execute if block ~ ~ ~ minecraft:brick_slab[type=double] run setblock ~ ~ ~ minecraft:red_nether_brick_slab[type=double]
execute if block ~ ~ ~ minecraft:purpur_slab[type=double] run setblock ~ ~ ~ minecraft:nether_brick_slab[type=double]
execute if block ~ ~ ~ minecraft:end_stone_brick_slab[type=double] run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=double]
execute if block ~ ~ ~ minecraft:prismarine_brick_slab[type=double] run setblock ~ ~ ~ minecraft:smooth_quartz_slab[type=double]
execute if block ~ ~ ~ minecraft:prismarine_slab[type=double] run setblock ~ ~ ~ minecraft:quartz_slab[type=double]
execute if block ~ ~ ~ minecraft:dark_prismarine_slab[type=double] run setblock ~ ~ ~ minecraft:quartz_slab[type=double]
execute if block ~ ~ ~ #ckenja_nether:stone/slab[type=double] run setblock ~ ~ ~ minecraft:blackstone_slab[type=double]
execute if block ~ ~ ~ minecraft:stone_slab[type=double] run setblock ~ ~ ~ minecraft:blackstone_slab[type=double]
execute if block ~ ~ ~ minecraft:cobblestone_slab[type=double] run setblock ~ ~ ~ minecraft:blackstone_slab[type=double]
execute if block ~ ~ ~ minecraft:mossy_cobblestone_slab[type=double] run setblock ~ ~ ~ minecraft:blackstone_slab[type=double]
execute if block ~ ~ ~ minecraft:stone_brick_slab[type=double] run setblock ~ ~ ~ minecraft:polished_blackstone_slab[type=double]
execute if block ~ ~ ~ minecraft:smooth_stone_slab[type=double] run setblock ~ ~ ~ minecraft:polished_blackstone_slab[type=double]

#ランタン
execute if block ~ ~ ~ minecraft:lantern[hanging=true] run setblock ~ ~ ~ minecraft:soul_lantern[hanging=true]
execute if block ~ ~ ~ minecraft:lantern[hanging=false] run setblock ~ ~ ~ minecraft:soul_lantern[hanging=false]

#ドア

##上北
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=north,half=upper] run setblock ~ ~ ~ minecraft:crimson_door[facing=north,half=upper]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=north,half=upper] run setblock ~ ~ ~ minecraft:warped_door[facing=north,half=upper]

##上南
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=south,half=upper] run setblock ~ ~ ~ minecraft:crimson_door[facing=south,half=upper]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=south,half=upper] run setblock ~ ~ ~ minecraft:warped_door[facing=south,half=upper]

##上東
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=east,half=upper] run setblock ~ ~ ~ minecraft:crimson_door[facing=east,half=upper]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=east,half=upper] run setblock ~ ~ ~ minecraft:warped_door[facing=east,half=upper]

##上西
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=west,half=upper] run setblock ~ ~ ~ minecraft:crimson_door[facing=west,half=upper]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=west,half=upper] run setblock ~ ~ ~ minecraft:warped_door[facing=west,half=upper]

##下北
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=north,half=lower] run setblock ~ ~ ~ minecraft:crimson_door[facing=north,half=lower]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=north,half=lower] run setblock ~ ~ ~ minecraft:warped_door[facing=north,half=lower]

##下南
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=south,half=lower] run setblock ~ ~ ~ minecraft:crimson_door[facing=south,half=lower]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=south,half=lower] run setblock ~ ~ ~ minecraft:warped_door[facing=south,half=lower]

##下東
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=east,half=lower] run setblock ~ ~ ~ minecraft:crimson_door[facing=east,half=lower]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=east,half=lower] run setblock ~ ~ ~ minecraft:warped_door[facing=east,half=lower]

##下西
execute if block ~ ~ ~ #ckenja_nether:crimson/door[facing=west,half=lower] run setblock ~ ~ ~ minecraft:crimson_door[facing=west,half=lower]
execute if block ~ ~ ~ #ckenja_nether:warped/door[facing=west,half=lower] run setblock ~ ~ ~ minecraft:warped_door[facing=west,half=lower]

#原木

##X
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_log[axis=x] run setblock ~ ~ ~ minecraft:stripped_crimson_hyphae[axis=x]
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_log[axis=x] run setblock ~ ~ ~ minecraft:stripped_warped_hyphae[axis=x]
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_wood[axis=x] run setblock ~ ~ ~ minecraft:stripped_crimson_stem[axis=x]
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_wood[axis=x] run setblock ~ ~ ~ minecraft:stripped_warped_stem[axis=x]
execute if block ~ ~ ~ #ckenja_nether:crimson/wood[axis=x] run setblock ~ ~ ~ minecraft:crimson_hyphae[axis=x]
execute if block ~ ~ ~ #ckenja_nether:warped/wood[axis=x] run setblock ~ ~ ~ minecraft:warped_stem[axis=x]
execute if block ~ ~ ~ #ckenja_nether:crimson/log[axis=x] run setblock ~ ~ ~ minecraft:crimson_stem[axis=x]
execute if block ~ ~ ~ #ckenja_nether:warped/log[axis=x] run setblock ~ ~ ~ minecraft:warped_hyphae[axis=x]

##Y
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_log[axis=y] run setblock ~ ~ ~ minecraft:stripped_crimson_hyphae[axis=y]
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_log[axis=y] run setblock ~ ~ ~ minecraft:stripped_warped_hyphae[axis=y]
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_wood[axis=y] run setblock ~ ~ ~ minecraft:stripped_crimson_stem[axis=y]
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_wood[axis=y] run setblock ~ ~ ~ minecraft:stripped_warped_stem[axis=y]
execute if block ~ ~ ~ #ckenja_nether:crimson/wood[axis=y] run setblock ~ ~ ~ minecraft:crimson_hyphae[axis=y]
execute if block ~ ~ ~ #ckenja_nether:warped/wood[axis=y] run setblock ~ ~ ~ minecraft:warped_hyphae[axis=y]
execute if block ~ ~ ~ #ckenja_nether:crimson/log[axis=y] run setblock ~ ~ ~ minecraft:crimson_hyphae[axis=y]
execute if block ~ ~ ~ #ckenja_nether:warped/log[axis=y] run setblock ~ ~ ~ minecraft:warped_hyphae[axis=y]

##Z
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_log[axis=z] run setblock ~ ~ ~ minecraft:stripped_crimson_hyphae[axis=z]
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_log[axis=z] run setblock ~ ~ ~ minecraft:stripped_warped_hyphae[axis=z]
execute if block ~ ~ ~ #ckenja_nether:crimson/stripped_wood[axis=z] run setblock ~ ~ ~ minecraft:stripped_crimson_stem[axis=z]
execute if block ~ ~ ~ #ckenja_nether:warped/stripped_wood[axis=z] run setblock ~ ~ ~ minecraft:stripped_warped_stem[axis=z]
execute if block ~ ~ ~ #ckenja_nether:crimson/wood[axis=z] run setblock ~ ~ ~ minecraft:crimson_hyphae[axis=z]
execute if block ~ ~ ~ #ckenja_nether:warped/wood[axis=z] run setblock ~ ~ ~ minecraft:warped_hyphae[axis=z]
execute if block ~ ~ ~ #ckenja_nether:crimson/log[axis=z] run setblock ~ ~ ~ minecraft:crimson_hyphae[axis=z]
execute if block ~ ~ ~ #ckenja_nether:warped/log[axis=z] run setblock ~ ~ ~ minecraft:warped_hyphae[axis=z]

#松明トラップドアフェンスゲート

##北
execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run setblock ~ ~ ~ minecraft:soul_wall_torch[facing=north]
execute if block ~ ~ ~ #ckenja_nether:crimson/fence_gate[facing=north] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=north]
execute if block ~ ~ ~ #ckenja_nether:warped/fence_gate[facing=north] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=north]
execute if block ~ ~ ~ #ckenja_nether:crimson/trapdoor[facing=north] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=north]
execute if block ~ ~ ~ #ckenja_nether:warped/trapdoor[facing=north] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=north]

##南
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run setblock ~ ~ ~ minecraft:soul_wall_torch[facing=south]
execute if block ~ ~ ~ #ckenja_nether:crimson/fence_gate[facing=south] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=south]
execute if block ~ ~ ~ #ckenja_nether:warped/fence_gate[facing=south] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=south]
execute if block ~ ~ ~ #ckenja_nether:crimson/trapdoor[facing=south] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=south]
execute if block ~ ~ ~ #ckenja_nether:warped/trapdoor[facing=south] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=south]

##東
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run setblock ~ ~ ~ minecraft:soul_wall_torch[facing=east]
execute if block ~ ~ ~ #ckenja_nether:crimson/fence_gate[facing=east] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=east]
execute if block ~ ~ ~ #ckenja_nether:warped/fence_gate[facing=east] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=east]
execute if block ~ ~ ~ #ckenja_nether:crimson/trapdoor[facing=east] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=east]
execute if block ~ ~ ~ #ckenja_nether:warped/trapdoor[facing=east] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=east]


##西
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run setblock ~ ~ ~ minecraft:soul_wall_torch[facing=west]
execute if block ~ ~ ~ #ckenja_nether:crimson/fence_gate[facing=west] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=west]
execute if block ~ ~ ~ #ckenja_nether:warped/fence_gate[facing=west] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=west]
execute if block ~ ~ ~ #ckenja_nether:crimson/trapdoor[facing=west] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=west]
execute if block ~ ~ ~ #ckenja_nether:warped/trapdoor[facing=west] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=west]

#植物
execute if block ~ ~ ~ minecraft:beehive run setblock ~ ~ ~ minecraft:shroomlight destroy

execute if block ~ ~ ~ #ckenja_nether:shroomlight run setblock ~ ~ ~ minecraft:shroomlight
execute if block ~ ~ ~ minecraft:hay_block if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:nether_wart_block
execute if block ~ ~ ~ minecraft:hay_block if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_wart_block

execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_nylium
execute if block ~ ~ ~ #ckenja_nether:grass_block if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_nylium
execute if block ~ ~ ~ #ckenja_nether:grass if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:crimson_roots
execute if block ~ ~ ~ #ckenja_nether:grass if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:warped_roots

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

execute if block ~ ~ ~ #minecraft:flower_pots if entity @s[predicate=ckenja_nether:crimson] run setblock ~ ~ ~ minecraft:potted_crimson_fungus
execute if block ~ ~ ~ #minecraft:flower_pots if entity @s[predicate=ckenja_nether:warped] run setblock ~ ~ ~ minecraft:potted_warped_fungus

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