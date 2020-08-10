VORP = exports.vorp_core:vorpAPI()

RegisterServerEvent('vorp_bountyhunting:AddSomeMoney')
AddEventHandler('vorp_bountyhunting:AddSomeMoney', function()
    local _source = source
    local price = Config.Price
    local xp = Config.Xp
    TriggerEvent("vorp:getCharacter",source,function(user)
        VORP.addMoney(_source, 0, price)
        VORP.addXp(_source, xp)
    end)
end)