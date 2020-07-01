execute as @e[distance=..2,type=#ckenja_maximus:horses,sort=nearest,limit=1] run function ckenja_maximus:use/mainhand/speed2
execute if score #temp ckenja_maximus matches ..400 run function ckenja_maximus:use/mainhand/speed3
execute unless score #temp ckenja_maximus matches ..400 run tellraw @s {"text":"Can't increase the speed of horse anymore!","color":"red"}