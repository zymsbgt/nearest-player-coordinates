#> Display Updated Location
execute at @s if entity @p[distance=10..,limit=1,scores={npc.toggle=0}] run title @s actionbar ["",{"text":"(Nearest) "},{"selector":"@p[distance=10..,limit=1,scores={npc.toggle=0}]"},{"text":": "},{"score":{"name":"@p[distance=10..,limit=1,scores={npc.toggle=0}]","objective":"npc.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@p[distance=10..,limit=1,scores={npc.toggle=0}]","objective":"npc.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@p[distance=10..,limit=1,scores={npc.toggle=0}]","objective":"npc.zpos"},"color":"aqua"}]