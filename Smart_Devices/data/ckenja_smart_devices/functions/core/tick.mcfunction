execute as @e[tag=ckenja_smart_devices_device] at @s run function ckenja_smart_devices:core/device
execute as @a run function ckenja_smart_devices:core/player
#killは、GUIの異物排出後に行うこと。GUIアイテムの排出の可能性を潰す。
kill @e[type=item,nbt={Item:{tag:{ckenja:{tags:["ckenja_smart_devices:gui"]}}}}]