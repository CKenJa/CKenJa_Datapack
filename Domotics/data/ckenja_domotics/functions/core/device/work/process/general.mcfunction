#順番は動かすな
execute if score @s ckjdt_req_bit <= @s ckjdt_lim_bit run function ckenja_domotics:core/device/work/process/req_is_smaller
execute if score @s ckjdt_lim_bit <= @s ckjdt_had_bit run function ckenja_domotics:core/device/work/process/lim_is_smaller
execute if score @s ckjdt_had_bit <= @s ckjdt_lim_bit run function ckenja_domotics:core/device/work/process/had_is_smaller

execute if score @s ckjdt_req_bit matches ..0 run function ckenja_domotics:core/device/work/process/finish