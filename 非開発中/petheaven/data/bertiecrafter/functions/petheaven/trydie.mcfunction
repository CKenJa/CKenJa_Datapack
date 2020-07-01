#Current As/At: A pet
execute store result score @s bcph_Health run data get entity @s Health
execute if score @s bcph_Health matches ..19 run function bertiecrafter:petheaven/die