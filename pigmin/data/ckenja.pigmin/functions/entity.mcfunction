#タグなしピグリンは土に埋まる
execute if entity @s[tag=!ckenja.pigmin] run function ckenja.pigmin:entity/bury
#抜けているなうなピグリンは上にテレポ
execute if entity @s[tag=ckenja.pigmin.pulling] run function ckenja.pigmin:entity/pulling/
#投げられたピグリンが着地したら、作業する
execute if entity @s[tag=ckenja.pigmin.thrown] if data entity @s {OnGround:true} run function ckenja.pigmin:entity/work
