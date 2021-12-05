#袈裟斬りslash
execute unless predicate ckj01:sneak if score @s ckj01_coas matches 1.. run function ckenja_skybreak:katana/slash
#納刀sheath 
execute if score @s ckj01_sneak matches 1.. unless score @s ckj01_coas matches 1.. run function ckenja_skybreak:katana/sheath
#抜刀draw
execute if score @s ckj_sb_katana matches 4.. if score @s ckj01_coas matches 1.. run function ckenja_skybreak:katana/draw
#CMDreset
execute if score @s ckj01_sneak matches 4.. unless predicate ckj01:sneak unless score @s ckj01_coas matches 1.. run function ckenja_skybreak:katana/reset