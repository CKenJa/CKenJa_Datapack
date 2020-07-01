execute as @e[distance=..2,type=#ckenja_maximus:horses,sort=nearest,limit=1] run function ckenja_maximus:use/mainhand/jump2
execute if score #temp ckenja_maximus matches ..113 run function ckenja_maximus:use/mainhand/jump3
execute unless score #temp ckenja_maximus matches ..113 run tellraw @s {"text":"Can't increase the jump strength of horse anymore!","color":"red"}