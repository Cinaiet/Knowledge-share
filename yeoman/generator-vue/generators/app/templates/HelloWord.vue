<template>
  <div class="box">
    hello {{name}}
  </div>
</template>

<script>
  module.exports = {
    data: function() {
      return {
        name: 'Cinaiet'
      }
    }
  }
</script>

<style scoped>
  .box {
    font-size: 12px;
  }
</style>
