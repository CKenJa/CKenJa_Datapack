#凸
tp @s ^ ^ ^0.3 facing entity @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,limit=1,sort=nearest,distance=1..16]
#攻撃&ノックバック
execute if entity @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,limit=1,sort=nearest,distance=..1] run function ckenja_ghost:ghost/knockback
#敵居ないからかえる
execute unless entity @e[type=#ckenja_ghost:target,tag=ckenja_ghost_enemy,limit=1,sort=nearest,distance=..16] run function ckenja_ghost:ghost/change
