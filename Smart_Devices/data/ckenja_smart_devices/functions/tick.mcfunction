execute as @e[tag=ckenja_smart_devices_device] run function ckenja_smart_devices:device
execute as @a run function ckenja_smart_devices:player
kill @e[type=item,nbt={Item:{tag:{ckenja:{tags:["ckenja_smart_devices:gui"]}}}}]