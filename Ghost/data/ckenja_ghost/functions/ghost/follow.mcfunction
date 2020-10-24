execute store result score #tmp ckj01_data run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.master_id
execute as @a if score @s ckj01_id = #tmp ckj01_data run tag @s add ckenja_ghost_master
#プレイヤーの方向を向く
teleport @s ~ ~ ~ facing entity @a[tag=ckenja_ghost_master,limit=1] eyes
#離れていたらTP移動
execute if entity @a[tag=ckenja_ghost_master,distance=3..128] rotated as @a[tag=ckenja_ghost_master,limit=1] run tp ^ ^ ^0.5
#プレイヤーより下にいるなら浮上する
execute if entity @a[tag=ckenja_ghost_master,x=3,y=0,z=3,dx=-3,dy=-3,dz=-3] run tp ~ ~0.5 ~
tag @e[tag=ckenja_ghost_master] remove ckenja_ghost_master