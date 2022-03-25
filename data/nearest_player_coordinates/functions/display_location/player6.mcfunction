#> Display Updated Location
execute at @s if entity @a[tag=npc.player6,nbt={Dimension:"minecraft:overworld"}] run title @s actionbar ["",{"text":"(Overworld) ","color":"green"},{"selector":"@a[tag=npc.player6]"},{"text":": "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.zpos"},"color":"aqua"}]
execute at @s if entity @a[tag=npc.player6,nbt={Dimension:"minecraft:the_nether"}] run title @s actionbar ["",{"text":"(Nether) ","color":"red"},{"selector":"@a[tag=npc.player6]"},{"text":": "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.zpos"},"color":"aqua"}]
execute at @s if entity @a[tag=npc.player6,nbt={Dimension:"minecraft:the_end"}] run title @s actionbar ["",{"text":"(The End) ","color":"aqua"},{"selector":"@a[tag=npc.player6]"},{"text":": "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@a[tag=npc.player6]","objective":"npc.zpos"},"color":"aqua"}]