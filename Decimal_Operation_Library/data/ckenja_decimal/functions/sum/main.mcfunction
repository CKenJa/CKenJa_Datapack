#> ckenja_decimal:sum/main
#
#attribute加算ライブラリ。コマンド実行者可変編
#コマンド実行者のattributeはbaseを0、他のmodifersはなしでお願いします
#
#@input
#   storage ckenja_decimal:
#       arg[0].Amount 引数その1 double
#       arg[1].Amount 引数その2 double
#       arg[0].Minus trueの時、引数を正負を逆にする。引き算したいときとかにどうぞ Boolean
#       arg[1].Minus　trueの時、引数を正負を逆にする。引き算したいときとかにどうぞ Boolean
#
#@output
#   storage ckenja_decimal: ret 見ての通り帰り値 double
#
#@api

#declare storage ckenja_decimal: これつかいまーす

#問題点->1024以上の数を入れるとバグる。多少精度を犠牲にしてdouble上限まで対応するべき
#10000000000/10000000=1000 0.0000001

#1024以下にするためにまずは代入(Attributesに入れないと少数扱えない)
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531976]}].Amount set from storage ckenja_decimal: arg[0].Amount
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531976]}].Amount set from storage ckenja_decimal: arg[1].Amount
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531977]}].Amount set value 0.0000001d
    data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531977]}].Amount set value 0.0000001d
    data modify entity @s Attributes set from storage ckenja_decimal: Sum
#小さくすると同時に符号処理
    ##符号正転計算はもしMinus:trueならば反転する。
        execute if data storage ckenja_decimal: arg[0].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531976]}].Amount double -0.0000001 run attribute @s minecraft:generic.max_health modifier value get 0-0-0-0
        execute if data storage ckenja_decimal: arg[1].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531977]}].Amount double -0.0000001 run attribute @s minecraft:generic.movement_speed modifier value get 0-0-0-0
        execute unless data storage ckenja_decimal: arg[0].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531976]}].Amount double 0.0000001 run attribute @s minecraft:generic.max_health modifier value get 0-0-0-0
        execute unless data storage ckenja_decimal: arg[1].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531977]}].Amount double 0.0000001 run attribute @s minecraft:generic.movement_speed modifier value get 0-0-0-0
    ##符号反転計算はもしMinus:trueでなければ反転する。
        execute unless data storage ckenja_decimal: arg[0].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531976]}].Amount double -0.0000001 run attribute @s minecraft:generic.max_health modifier value get 0-0-0-0
        execute unless data storage ckenja_decimal: arg[0].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531977]}].Amount double -0.0000001 run attribute @s minecraft:generic.movement_speed modifier value get 0-0-0-0
        execute if data storage ckenja_decimal: arg[0].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531976]}].Amount double 0.0000001 run attribute @s minecraft:generic.max_health modifier value get 0-0-0-0
        execute if data storage ckenja_decimal: arg[0].tags{Minus:true} store result storage ckenja_decimal: Sum[{Name:"minecraft:generic.movement_speed"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531977]}].Amount double 0.0000001 run attribute @s minecraft:generic.movement_speed modifier value get 0-0-0-0
    data modify entity @s Attributes set from storage ckenja_decimal: Sum
#取得
    ##正の計算の解が負なら、負の計算の結果を反転して代わりに出力
        execute store result storage ckenja_decimal: ret double 10000000 run attribute @s minecraft:generic.max_health base get
        execute if data storage ckenja_decimal: {ret:1.0d} store result storage ckenja_decimal: ret double -10000000 run attribute @s generic.movement_speed base get
    ##解が0なら返り値を0に
        execute store success storage ckenja_decimal: tmp int 1 run data modify storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531976]}].Amount set from storage ckenja_decimal: Sum[{Name:"minecraft:generic.max_health"}].Modifiers[{UUID:[I;404980882,-859879608,-1697797426,491531977]}].Amount
        execute if data storage ckenja_decimal: {tmp:0} run data merge storage ckenja_decimal: {ret:0.0d}
