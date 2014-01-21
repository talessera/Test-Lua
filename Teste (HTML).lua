json = require('json')
http = require("socket.http")

variavel = http.request("http://localhost/househub/token.php?method=login&username=alison&password=12345678abc")

print(variavel)

result = json.decode(variavel)

print("Status: " .. result['status'])

mensagens = result['messages']
print("\nMensagens:")
table.foreach(mensagens, print)

conteudo = result['content']
print("\nSessid: " .. conteudo['sessid'])
