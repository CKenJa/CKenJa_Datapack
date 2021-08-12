#> ckenja.pigrapple:summon
#@within ckenja.pigrapple:player/not_ride/click
#@user

scoreboard players operation #tmp_id ckj04.data = @s ckj04.id
execute as @e[type=pig,tag=ckenja.pigrapple_pig,tag=!ckenja.pigrapple_pig_ride] if score @s ckj_pig_hook_id = #tmp_id ckj04.data run function ckenja.pigrapple:pig/kill
summon pig ^ ^ ^1 {Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Saddle:1b,Tags:["ckenja.pigrapple_pig","ckenja.pigrapple_pig_initial","ckj04.merge_entitydata","ckj04.fetch_entitydata","ckj04.root"],Attributes:[{Name:"generic.max_health",Base:0.2},{Name:"generic.movement_speed",Base:1}]}
execute as @e[type=pig,distance=..16,tag=ckenja.pigrapple_pig_initial] run function ckenja.pigrapple:pig/init