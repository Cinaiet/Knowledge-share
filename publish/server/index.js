const http = require('http')

http.createServer(function(requst, response) {
  console.log(requst.headers)
  requst.on('data', chunk => {
    console.log(chunk);
  })

  requst.on('end', chunk => {
    response.end('success')
  })

}).listen(8082)