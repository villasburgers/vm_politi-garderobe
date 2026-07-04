-- client.lua
local Config = require 'config'
local menuOpen = false

local function anvendToj(komponenter, props)
    local ped = PlayerPedId()
    for _, komp in ipairs(komponenter) do
        SetPedComponentVariation(ped, komp.component, komp.drawable, komp.texture, 2)
    end
    if props then
        for _, prop in ipairs(props) do
            if prop.drawable == -1 then
                ClearPedProp(ped, prop.prop)
            else
                SetPedPropIndex(ped, prop.prop, prop.drawable, prop.texture, true)
            end
        end
    end
    if GetResourceState('bw_clothing') == 'started' then
        TriggerEvent('bw_clothing:client:saveCurrentOutfit')
    end
    lib.notify({
        title       = 'Garderobe',
        description = 'Tojet er nu paa!',
        type        = 'success',
        duration    = 3000,
    })
end

local function aabenGarderobe(kategori)
    if menuOpen then return end
    menuOpen = true

    local tojListe = Config.Toj[kategori]
    if not tojListe or #tojListe == 0 then
        lib.notify({ title = 'Garderobe', description = 'Ingen toj fundet.', type = 'error' })
        menuOpen = false
        return
    end

    local options = {}
    for _, outfit in ipairs(tojListe) do
        local outfitRef = outfit
        options[#options + 1] = {
            title       = outfitRef.label,
            description = 'Tryk for at tage tojet paa',
            icon        = outfitRef.icon or 'shirt',
            onSelect = function()
            anvendToj(outfitRef.komponenter, outfitRef.props)
            menuOpen = false
        end,
        }
    end

    lib.registerContext({
        id      = 'garderobe_menu',
        title   = 'GARDEROBE',
        options = options,
        onExit  = function()
            menuOpen = false
        end,
    })
    lib.showContext('garderobe_menu')
end

RegisterNetEvent('garderobe:anvend', function(komponenter)
    anvendToj(komponenter)
end)

CreateThread(function()
    for _, lokation in ipairs(Config.Lokationer) do
        if lokation.blip and lokation.blip.enabled then
            local blip = AddBlipForCoord(lokation.coords.x, lokation.coords.y, lokation.coords.z)
            SetBlipSprite(blip, lokation.blip.sprite)
            SetBlipColour(blip, lokation.blip.color)
            SetBlipScale(blip, lokation.blip.scale)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(lokation.blip.label)
            EndTextCommandSetBlipName(blip)
        end

        local lok = lokation
        lib.zones.sphere({
            coords  = lok.coords,
            radius  = lok.radius,
            debug   = false,
            onEnter = function()
                lib.showTextUI('[E] Aaben garderobe', {
                    position = 'left-center',
                    icon     = 'shirt',
                })
            end,
            onExit = function()
                lib.hideTextUI()
                menuOpen = false
            end,
            inside = function()
                if IsControlJustPressed(0, 38) and not menuOpen then
                    aabenGarderobe(lok.kategori)
                end
            end,
        })
    end
end)

-- 3D tekst
local function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if not onScreen then return end
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = #(vector3(px, py, pz) - vector3(x, y, z))
    local scale = (1 / dist) * 2.0
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov
    SetTextScale(0.0, scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
end

CreateThread(function()
    while true do
        Wait(0)
        local pos = GetEntityCoords(PlayerPedId())
        if #(pos - vector3(462.9779, -999.0988, 31.1)) < 6.0 then
            DrawText3D(462.9779, -999.0988, 31.1, '[E] Garderobe')
        end
    end
end)