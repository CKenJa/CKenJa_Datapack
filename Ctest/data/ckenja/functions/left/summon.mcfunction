#一瞬見えるので上空に召喚
summon minecraft:slime ~ 1000 ~ {Silent:1b,Invulnerable:1b,Team:"ckenja_team",NoAI:1b,Size:6,Tags:["ckenja_left","ckenja_left_unregistered","ckenja_processing"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
execute as @e[type=slime,tag=ckenja_left_unregistered] run function ckenja:left/register