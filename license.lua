local current_ip = game.GetIPAddress()

local allowed_ips = {
    --["46.174.53.227:27015"] = true,
    ["127.0.0.1:27015"] = true,
    --["loopback"] = true
}

if allowed_ips[current_ip] then
    SERVER_HAS_LICENSE = true 
    
    print("[License] Сервер " .. current_ip .. " успешно верифицирован!")
else
    SERVER_HAS_LICENSE = false
    print("[License] Сервер " .. current_ip .. " отсутствует в базе.")
end