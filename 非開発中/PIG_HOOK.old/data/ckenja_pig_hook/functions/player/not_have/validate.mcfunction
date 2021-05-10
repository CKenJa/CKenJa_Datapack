#> ckenja_pig_hook:player/not_have/validate
#@within ckenja_pig_hook:player/not_have/general

data modify storage ckenja_pig_hook: tmp.tag set from entity @s Item.tag
execute if data storage ckenja_pig_hook: tmp.tag{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}} run function ckenja_pig_hook:player/not_have/drop