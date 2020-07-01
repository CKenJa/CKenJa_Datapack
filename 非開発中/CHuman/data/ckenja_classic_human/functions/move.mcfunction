# #temp ckenja_chuman と #temp ckenja_chuman_h0を入れ替えたほうがいいか考えろ
# あとRotation用の変数とランダムウォーク用のタイマー変数も作ってくれ
# ckenja_chumanいらなくね
execute store result score #temp ckenja_chuman run data get entity @s Pose.Head[0] 1
execute if score @s ckenja_chuman_h0 = #temp ckenja_chuman run function ckenja_classic_human:if/h0
execute unless score @s ckenja_chuman_h0 = #temp ckenja_chuman run function ckenja_classic_human:unless/h0

#execute store result score #head0 ckenja_chuman run data get entity @s Pose.Head[0] 1
#execute store result entity @s Pose.Head[0] float 1 run scoreboard players get #head0 ckenja_chuman

say move