local allowed_ips = {
    ["46.174.53.227:27015"] = true
    --["192.168.1.1:27015"] = true,
    --["0.0.0.0:0"] = true
}

local current_ip = game.GetIPAddress()

if not allowed_ips[current_ip] then
    print("--------------------------------------------------")
    print("ОШИБКА: Лицензия для IP " .. current_ip .. " не найдена!")
    print("Свяжитесь с владельцем: VoloduaIsak")
    print("--------------------------------------------------")

    timer.Simple(5, function()
        RunConsoleCommand("changelevel", "rp_rps_map")
    end)
else
    print("[License] Лицензия подтверждена для сервера: " .. current_ip)
end