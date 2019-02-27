express = require 'express'
samsa = require 'samsa'

client = new samsa

app = express()

app.get '/hello/:name', (req, res) ->
    reply = await client.request 'hello', 'sayHello', {name: req.params.name}
    res.send reply

port = 3589
app.listen port, -> console.log "Listening on :#{port}"
