#☑タグなしピグリンは土に埋まる
execute if entity @s[tag=!ckenja.pigmin,type=piglin] run function ckenja.pigmin:entity/bury
#☑抜けているなうなピグリンは上にテレポ
execute if entity @s[tag=ckenja.pigmin.pulling] run function ckenja.pigmin:entity/pulling/
#☑投げられたピグリンが着地したら、作業する
execute if entity @s[tag=ckenja.pigmin.thrown] if data entity @s {OnGround:true} run function ckenja.pigmin:entity/work/
#pigminの周りにホグリンがいなくなったら鈍足をかける
execute if entity @s[tag=ckenja.pigmin.attack] unless entity @e[type=hoglin,distance=..64] run function ckenja.pigmin:entity/attack
#原生生物役のホグリンが死んだら周りのブロックを消す
execute if entity @s[tag=ckenja.pigmin.marker] unless entity @e[type=hoglin,distance=..64] run function ckenja.pigmin:entity/kill