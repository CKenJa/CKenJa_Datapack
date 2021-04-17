#> ckenja_decimal:sum/main
#
# attribute加算ライブラリ。コマンド実行者可変編
#
#@input
#   storage ckenja_decimal:
#       arg[0].Amount 引数その　1
#       arg[1].Amount 引数その2
#       arg[0].Minus trueの時、引数を正負を逆にする。引き算したいときとかにどうぞ
#       arg[1].Minus　trueの時、引数を正負を逆にする。引き算したいときとかにどうぞ
#
#@output
#   storage ckenja_decimal: ret 見ての通り帰り値
#@api

#declare storage ckenja_decimal: これつかいまーす

#データ代入
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:126-126-126-126-1}].Amount set from storage ckenja_decimal: arg[0].Amount
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:126-126-126-126-2}].Amount set from storage ckenja_decimal: arg[1].Amount
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:126-126-126-126-1}].Amount set from storage ckenja_decimal: arg[0].Amount
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:126-126-126-126-2}].Amount set from storage ckenja_decimal: arg[1].Amount
    data modify entity @s Attributes set from storage ckenja_decimal: Sum
#前処理
    ##1.もしMinus:trueならば引数1を反転する。
        execute if data storage ckenja_decimal: arg[0].tags{Minus:true} run execute store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:126-126-126-1}].Amount double -1 run attribute @s generic.max_health modifier value get 126-126-126-126-1
    ##2.もしMinus:trueならば引数2を反転する。
        execute if data storage ckenja_decimal: arg[1].tags{Minus:true} run execute store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:126-126-126-2}].Amount double -1 run attribute @s generic.max_health modifier value get 126-126-126-126-2
    ##3.もしMinus:trueでなければ引数1を反転し
        execute unless data storage ckenja_decimal: arg[0].tags{Minus:true} run execute store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:126-126-126-1}].Amount double -1 run attribute @s generic.movement_speed modifier value get 126-126-126-126-1
    ##4.もしMinus:trueでなければ引数2を反転する。
        execute unless data storage ckenja_decimal: arg[0].tags{Minus:true} run execute store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:126-126-126-2}].Amount double -1 run attribute @s generic.movement_speed modifier value get 126-126-126-126-2
    data modify entity @s Attributes set from storage ckenja_decimal: Sum
#取得
    ##正の計算の解が負なら、負の計算の結果を反転して代わりに出力
        execute store result storage ckenja_decimal: ret double 1 run attribute @s generic.max_health base get
        execute if data storage ckenja_decimal: {ret:1d} store result storage ckenja_decimal: ret double -1 run attribute @s generic.movement_speed base get
    ##解が0なら返り値を0に
        execute store success storage ckenja_decimal: tmp double 1 run data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:126-126-126-126-1}].Amount set from storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:126-126-126-126-2}].Amount
        execute if data storage ckenja_decimal: {tmp:1} run data merge storage ckenja_decimal: {ret:0.0d}