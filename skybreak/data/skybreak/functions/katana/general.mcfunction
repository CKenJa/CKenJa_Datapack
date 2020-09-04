#袈裟斬りslash
execute unless predicate ckj01:sneak if score @s ckj01_coas matches 1.. run function skybreak:katana/slash
#納刀sheath 
execute if predicate ckj01:sneak unless score @s ckj01_coas matches 1.. run function skybreak:katana/sheath
#抜刀draw
execute if predicate ckj01:sneak if score @s ckj01_coas matches 1.. run function skybreak:katana/draw