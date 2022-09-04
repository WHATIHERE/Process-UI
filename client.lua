script_name = GetCurrentResourceName()
local onAuto = false
local IsProcessing = false
local gg = 0
Citizen.CreateThread(function()
  while ESX == nil do
   TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent(script_name .. ':client:break')
AddEventHandler(script_name .. ':client:break', function()
	onAuto = false
	IsProcessing = false
	gg = 0
	ESX.ShowNotification('Cancle Process')
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local CurrentZone = nil
		local coords = GetEntityCoords(GetPlayerPed(-1))
        sleep = true
		for k,v in pairs(cfg['zone']) do
			if(v.Marker['type'] ~= -1 and GetDistanceBetweenCoords(coords, v.coords, true) < 10) then
				sleep = false
				DrawMarker(v.Marker['type'], v.coords , 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Marker['size']['x'], v.Marker['size']['y'], v.Marker['size']['z'], v.Marker['color']['r'], v.Marker['color']['g'], v.Marker['color']['b'], v.Marker['color']['a'], false, true, 2, true, false, false, false)
				if(GetDistanceBetweenCoords(coords, v.coords, true) < v.Distance) then
					exports["NNaridZ_TextUI"]:ShowHelpNotification("กด ~INPUT_CONTEXT~ เพื่อโพเสท")

					if IsControlJustPressed(1, cfg['Keys'][2]) and not onAuto then
						SetNuiFocus(true, true)

						SendNUIMessage({
							display = true,
						})
						SendNUIMessage({
							itemLabel = v.xItem['Add']['name'],
							itemgive = v.xItem['Remove']['name'],
							price = v.name,
						})					
						onAuto = true
						ProcessAuto({i=v.xItem,j =v.coords,k=v.Time})

					end
				end
			end
		end
		if sleep then
			Wait(500)
		end
	end
end)

RegisterNUICallback('focusOff', function(data, cb)
	SetNuiFocus(false, false)
	onAuto = false
	gg = 0
	ESX.ShowNotification('Your Stop Process')
end)




function ProcessAuto(result)
	IsProcessing = true
	onAuto = true
	local timeLeft = 5000 / 1000
	while true do
		if onAuto then
			local playerPed = PlayerPedId()
			TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_JOG_STANDING', 0, false)
			Citizen.Wait(result.k)	
			if GetDistanceBetweenCoords(GetEntityCoords(playerPed), result.j, false) > 10 then
				IsProcessing = false
				onAuto = false
				ESX.ShowNotification('Your are so far')
				gg = 0
				break
			end
			TriggerServerEvent(script_name .. ':server:additem' , result.i)
			gg = gg + 1
		else
			ClearPedTasksImmediately(GetPlayerPed(-1))
			IsProcessing = false
			Citizen.Wait(cfg['Delay'])
			break
		end
		ClearPedTasksImmediately(GetPlayerPed(-1))
		IsProcessing = false
		Citizen.Wait(cfg['Delay'])
	end
	IsProcessing = false
end


DisplayHelpText = function (str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end