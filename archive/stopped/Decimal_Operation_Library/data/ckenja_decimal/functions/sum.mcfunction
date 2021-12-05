#> ckenja_decimal:sum
#
# attribute加算ライブラリ。ブルート使用版
#
#@input
#   storage ckenja_decimal:
#       arg[0].Amount 引数その1 double
#       arg[1].Amount 引数その2 double
#       arg[0].Minus trueの時、引数を正負を逆にする。引き算したいときとかにどうぞ Boolean
#       arg[1].Minus　trueの時、引数を正負を逆にする。引き算したいときとかにどうぞ Boolean
#
#@output
#   storage ckenja_decimal: ret 見ての通り帰り値。double
#
#@api

#declare entity @e[type=piglin_brute,distance=0,tag=ckenja_decimal] attribute算に使うブルート君だよ

#正負の反転はexecute store result -1 run attributeで行う

#いなかったら出てこい(今は使わない属性も後のために入れておく)
    execute in minecraft:overworld positioned 10000.0 0.0 0.0 unless entity @e[type=piglin_brute,distance=0,tag=ckenja_decimal] run summon piglin_brute ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,IsImmuneToZombification:1b,Tags:["ckenja_decimal"],Attributes:[{Name:"generic.max_health",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:0}]}
execute in minecraft:overworld positioned 10000.0 0.0 0.0 as @e[type=piglin_brute,distance=0,tag=ckenja_decimal] run function ckenja_decimal:sum/main