execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ckenja.pigmin.aec"]}
execute as @e[tag=ckenja.pigmin.aec] run function ckenja.pigmin:click/throw/aec
execute as @e[tag=ckenja.pigmin.follow,sort=nearest,limit=1] run function ckenja.pigmin:click/throw/pigmin