-- server.lua
local Config = require 'config'

lib.callback.register('garderobe:getTojListe', function(source, _, kategori)
    local tojListe = Config.Toj[kategori]
    if not tojListe then return nil end
    return tojListe
end)

RegisterNetEvent('garderobe:saetTojPaa', function(komponenter)
    local src = source
    TriggerClientEvent('garderobe:anvend', src, komponenter)
end)
