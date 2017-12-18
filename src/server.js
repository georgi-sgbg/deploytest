var http = require('http')
var hello = require('./hello')

const port = 3000

const requestHandler = (request, response) => {
  response.end(hello.sayHello())
}

const server = http.createServer(requestHandler)

server.listen(port, (err) => {
  if (err) {
    return console.log('something bad happened', err)
  }

  console.log('server is listening on %s', port)
})
