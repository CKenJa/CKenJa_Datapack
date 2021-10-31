#data modify entity @s Pos set from storage ckenja.grapple: tmp.Pos
#これの結果を修正する

#マーカー呼び出し
execute store result score #marker.number ckenja.grapple run execute if entity @e[tag=ckenja.grapple.marker]
execute if score #marker.number ckenja.grapple matches 2.. run kill @e[tag=ckenja.grapple.marker,limit=1]
execute if score #marker.number ckenja.grapple matches 0 run summon minecraft:marker ~ ~ ~ {Tags:["ckenja.grapple.marker"]}
execute as @e[tag=ckenja.grapple.marker,limit=1] run function ckenja.grapple:marker/