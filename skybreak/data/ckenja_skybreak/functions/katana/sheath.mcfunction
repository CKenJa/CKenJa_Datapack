#sneakの値からCMDを変更したりする。4tickで完了
scoreboard players add @s ckj_sb_katana 1
execute if score @s ckj_sb_katana matches 4 run replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"katana","italic":false}'},CustomModelData:126003,ckenja:{tag:["ckenja_skybreak_katana"]}} 1
effect give @s haste 1 5