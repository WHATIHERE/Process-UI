ESX = nil
script_name = GetCurrentResourceName()

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent(script_name .. ':server:additem')
AddEventHandler(script_name .. ':server:additem', function(data)
    local l = source;
    local xPlayer = ESX.GetPlayerFromId(l)
    local lucky = math.random(100)
    local itemDest = {}
    local itemSrc = {}

    local MustxItem, MustxItem_count = xPlayer.getInventoryItem(data['Remove']['name']), data['Remove']['ct']
    local is = false

    for i = 1, #data['Add'] do
        local destData = data['Add'][i]
        if destData.pct == nil or destData.pct >= lucky then
            print(destData.pct)
            local xItem, xItem_count = xPlayer.getInventoryItem(destData.name), destData.ct

            if MustxItem == nil or xItem == nil then
                a = ('^3[%s]^1 Item Not Found'):format(script_name)
                return false
            end
            if MustxItem.count < MustxItem_count then
                TriggerClientEvent(script_name .. ':client:break', l)
            else
                local limit = exports.nc_inventory:GetItemLimit(xItem.name)
                if xItem.count >= limit then
                    TriggerClientEvent("pNotify:SendNotification", source, {
                        text = '<center><strong class="red-text">' .. ESX.GetItemLabel(xItem.name) ..
                            'ของคุณเต็ม</strong><center>',
                        type = "error",
                        timeout = 5000,
                        layout = "topRight",
                        queue = "global"
                    })
                else
                    is = true
                    xPlayer.addInventoryItem(xItem.name, xItem_count)
                    g =
                        ('<strong class="green-text"> แปรรูป %s จำนวน %s เรียบร้อย</strong>'):format(
                            ESX.GetItemLabel(xItem.name), xItem_count)
                    TriggerClientEvent('Nexz_Quest:AddQuest', source, 1, 50)
                end
            end
        end
    end
    if is then
        xPlayer.removeInventoryItem(MustxItem.name, MustxItem_count)
    end
    -- local destData = data['Add']['name']
end)
