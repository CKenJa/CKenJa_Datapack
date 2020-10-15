#ckj01/root/entity/after_player/standard as all entity at @s
execute as @s[tag=ckenja_domotics_device] run function ckenja_domotics:core/device/general
#killは、GUIの異物排出後に行うこと。GUIアイテムの排出の可能性を潰す。
kill @s[type=item,nbt={Item:{tag:{ckenja:{tags:["ckenja_domotics:gui"]}}}}]