tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
maps={5952717,5952739,5953164,228462,3948683}

function eventLoop(time,remaining)
if remaining<=0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
end

for n in pairs(tfm.get.room.playerList) do
tfm.exec.bindKeyboard(n,32,true,true)
end

function eventKeyboard(n,k,d,x,y)
if k==32 then
tfm.exec.explosion(x,y,20,30,false)
tfm.exec.displayParticle(12,x,y,0,0,0,0,nil)
tfm.exec.displayParticle(10,x,y,0,0,0,0,nil)
end
end
ui.addTextArea(0,"<p align='center'><a href='event:help'><b><R>?</b></a></p>",name,775,383,16,16,1,1,0.8,true)


function eventTextAreaCallback(id, name, callback)
if callback=="help" then
ui.addTextArea(999,"Bu Oyun Tamamen hazır kodlarla oluşturulmuştur,Ben (Npcndmi) Sadece bir temsilcisiyimdir.Emeği geçenler: ",name,250,50,300,300,1,1,0.8,true)
ui.addTextArea(779,"<p align='center'><a href='event:close'><b>Kapat</b></a></p>",name,250,370,300,16,1,1,0.8,true)
elseif callback=="close" then
ui.removeTextArea(999,name)
ui.removeTextArea(779,name)
end
end
function eventPlayerDied(name)
tfm.exec.respawnPlayer(name)
end
