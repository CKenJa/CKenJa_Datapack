#> ckenja_decimal:summation
#
# attribute算ライブラリ。合計編
#
#@api
#いなかったら出てこい
execute positioned 10000.0 0.0 0.0 unless entity @e[type=piglin_brute,distance=0] run summon piglin_brute ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,IsImmuneToZombification:1b,Tags:["ckenja_decimal"],Attributes:[{Name:"generic.max_health",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:0}]}
#前処理
##1.もしMinus:trueならば引数1を反転する。
execute if data storage ckenja_decimal: arg[0].tags{Minus:true} run function ckenja_decimal:summation/pre/1plus
##2.もしMinus:trueならば引数2を反転する。
execute if data storage ckenja_decimal: arg[1].tags{Minus:true} run function ckenja_decimal:summation/pre/2plus
##3.もしMinus:trueでなければ引数1を反転する。
execute unless data storage ckenja_decimal: arg[0].tags{Minus:true} run function ckenja_decimal:summation/pre/1minus
##4.もしMinus:trueでなければ引数2を反転する。
execute unless data storage ckenja_decimal: arg[0].tags{Minus:true} run function ckenja_decimal:summation/pre/2minus
##代入

#本計算

#後処理
##正の計算の解が負なら、負の計算の結果を反転して代わりに出力
