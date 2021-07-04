const http = require('http')
const fs = require('fs')

let requst  = http.request({
  hostname: '127.0.0.1', // 发布服务器的host
  port: 8082
}, response => {
  console.log(response)
})
http是一个流式数据的写入方式
requst.end() // 发出请求