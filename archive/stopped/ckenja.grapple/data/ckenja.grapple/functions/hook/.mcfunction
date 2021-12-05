#data modify entity @s Pos set from storage ckenja.grapple: tmp.Pos
#これの結果を修正する

#マーカー呼び出し

execute as @e[tag=ckenja.grapple.marker,limit=1] run function ckenja.grapple:marker/
