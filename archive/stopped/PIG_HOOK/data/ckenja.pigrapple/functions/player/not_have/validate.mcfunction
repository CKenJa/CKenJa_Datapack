#> ckenja.pigrapple:player/not_have/validate
#@within ckenja.pigrapple:player/not_have/general

data modify storage ckenja.pigrapple: tmp.tag set from entity @s Item.tag
execute if data storage ckenja.pigrapple: tmp.tag{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}} run function ckenja.pigrapple:player/not_have/drop