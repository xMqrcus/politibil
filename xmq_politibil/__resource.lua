dependency "vrp"

client_scripts{
  "config.lua",
  "lib/Proxy.lua",
  "lib/Tunnel.lua",
  "client.lua"
}

server_scripts{ 
  "config.lua",
  "@vrp/lib/utils.lua",
  "server.lua"
}


