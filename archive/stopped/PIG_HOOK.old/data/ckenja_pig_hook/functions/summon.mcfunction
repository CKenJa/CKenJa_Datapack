#> ckenja_pig_hook:summon
#@within ckenja_pig_hook:player/not_ride/click
#@user

scoreboard players operation #tmp_id ckj03_data = @s ckj03_id
execute as @e[type=pig,tag=ckenja_pig_hook_pig,tag=!ckenja_pig_hook_pig_ride] if score @s ckj_pig_hook_id = #tmp_id ckj03_data run function ckenja_pig_hook:pig/kill
summon pig ^ ^ ^1 {Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Saddle:1b,Tags:["ckenja_pig_hook_pig","ckenja_pig_hook_pig_initial","ckj03_merge_entitydata","ckj03_fetch_entitydata"],Attributes:[{Name:"generic.max_health",Base:0.2},{Name:"generic.movement_speed",Base:1}]}
execute as @e[type=pig,distance=..16,tag=ckenja_pig_hook_pig_initial] run function ckenja_pig_hook:pig/init