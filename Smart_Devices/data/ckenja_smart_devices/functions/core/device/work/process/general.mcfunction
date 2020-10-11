#順番は動かすな
execute if score @s ckjsd_req_bit <= @s ckjsd_lim_bit run function ckenja_smart_devices:core/device/work/process/req_is_smaller
execute if score @s ckjsd_lim_bit <= @s ckjsd_had_bit run function ckenja_smart_devices:core/device/work/process/lim_is_smaller
execute if score @s ckjsd_had_bit <= @s ckjsd_lim_bit run function ckenja_smart_devices:core/device/work/process/had_is_smaller

execute if score @s ckjsd_req_bit matches ..0 run function ckenja_smart_devices:core/device/work/process/finish