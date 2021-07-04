const http = require('http')
const fs = require('fs')


http.createServer(function(requst, response) {
  console.log(requst.headers)

  let outFile = fs.createWriteStream('./index.html')
  requst.on('data', chunk => {
    outFile.write(chunk)
  })

  requst.on('end', chunk => {
    outFile.end()
    response.end('success')

  })

}).listen(8082)