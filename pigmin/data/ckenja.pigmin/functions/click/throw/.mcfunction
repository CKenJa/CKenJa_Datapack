execute positioned 0.0 0.0 0.0 run forceload add ~ ~
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^3 {Tags: ["ckenja.pigmin.aec"]}
execute as @e[tag=ckenja.pigmin.aec] run function ckenja.pigmin:click/throw/aec
execute as @e[tag=ckenja.pigmin.follow,sort=nearest,limit=1] run function ckenja.pigmin:click/throw/pigmin