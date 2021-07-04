const http = require('http')

http.createServer(function(requst, response) {
  console.log(requst)
  response.end('hello word')
}).listen(8082)