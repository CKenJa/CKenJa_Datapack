execute as @s[tag=ckenja_smart_devices_device] run function ckenja_smart_devices:device/general
#killは、GUIの異物排出後に行うこと。GUIアイテムの排出の可能性を潰す。
kill @s[type=item,nbt={Item:{tag:{ckenja:{tags:["ckenja_smart_devices:gui"]}}}}]