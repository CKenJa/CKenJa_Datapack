
#起爆の近いクリーパーから逃げる
scoreboard players set @s Motion_Speed -3
execute facing entity @e[type=creeper,limit=1,sort=nearest] eyes run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
function t_hard:move_xz
scoreboard players reset @s Motion_Speed