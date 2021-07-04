const http = require('http')
const fs = require('fs')


let requst  = http.request({
  hostname: '127.0.0.1', // 发布服务器的host
  port: 8082,
  method: 'POST',
  headers: {
    'Content-Type': 'application/octet-stream', // 流式传输内容类型
  }
}, response => {
  console.log(response)
})

let file = fs.createReadStream('./package.json')

file.on('data', chunk => {
  requst.write(chunk)
})

file.on('end', chunk => {
  console.log('read finished')
  requst.end(chunk) // http是一个流式数据的写入方式 在此时才是真正发出请求

})
