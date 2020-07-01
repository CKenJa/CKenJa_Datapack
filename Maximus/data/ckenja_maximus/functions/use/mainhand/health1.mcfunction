execute as @e[distance=..2,type=#ckenja_maximus:horses,sort=nearest,limit=1] run function ckenja_maximus:use/mainhand/health2
execute if score #temp ckenja_maximus matches ..60 run function ckenja_maximus:use/mainhand/health3
execute unless score #temp ckenja_maximus matches ..60 run tellraw @s {"text":"Can't increase the health of horse anymore!","color":"red"}