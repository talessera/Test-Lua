http = require("socket.http")

r, c, h = http.request

{
  method = "HEAD",

  url = "http://online.karucha.pairg.dimap.ufrn.br/"
}

print("r = " .. tostring(r) .. "\n")

print("c = " .. tostring(c) .. "\n")

print("Last Modified:  " .. h["last-modified"] .. "\n")

print("Content Length: " .. tostring(h["content-length"]) .. "\n")

print("Connection:     " .. h["connection"] .. "\n")

print("Content Type:   " .. h["content-type"])

io.read() -- Waits for a response from the user
