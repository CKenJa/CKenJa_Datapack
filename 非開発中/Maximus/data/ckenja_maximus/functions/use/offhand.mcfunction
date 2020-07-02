#疾走
execute if entity @s[nbt={RootVehicle:{Entity:{Tame:1b}}}] unless entity @s[scores={ckenja_maximus=1..}] as @e[distance=..2,type=#ckenja_maximus:horses] run function ckenja_maximus:use/sprint1
#耐久値
execute if score #damage ckenja_maximus matches 1 run function ckenja_maximus:use/offhand/damage