Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    if IsControlPressed(0,49) then
      if IsPlayerInPolicecar() then
        TriggerServerEvent("xmq:cartjekjob")
        Citizen.Wait(5000)
      end
    end
  end
end)
  
function IsPlayerInPolicecar()
  local ped = GetPlayerPed(-1)
  local vehicle = GetVehiclePedIsIn(ped)
  for k,v in pairs(cfg.politibiler) do
    if IsVehicleModel(vehicle, v) then
      return true
    end
  end
  return false
end


