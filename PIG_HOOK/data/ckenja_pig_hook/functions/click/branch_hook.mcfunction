#フックがない-->射出
execute if score @s ckj_pighook_x matches -2147483648..2147483647 run function ckenja_pig_hook:click/shot
#フックがある-->外す
execute if score @s ckj_pighook_x matches -2147483648..2147483647 run function ckenja_pig_hook:click/stow
