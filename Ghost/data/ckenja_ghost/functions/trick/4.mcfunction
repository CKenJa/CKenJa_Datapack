summon area_effect_cloud ~ ~ ~ {Tags:["ckenja_ghost_spread","ckenja_ghost_spread_aec"],Duration:0}
spreadplayers ~ ~ 0 8 false @e[tag=ckenja_ghost_spread]
execute at @e[tag=ckenja_ghost_spread_aec] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16711680]}]}}}}