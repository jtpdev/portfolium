<template>
  <div id="app" class="row">
    <div class="col-sm-2">
      <side-bar/>
    </div>
    <div class="col-sm-10">
      <router-view/>
    </div>
  </div>
</template>

<script>
import SideBar from './components/SideBar'

export default {
  name: 'Portfolium',
  components: {
    'side-bar': SideBar
  }
}
</script>

<style lang="scss">
@import '../node_modules/ionicons/dist/css/ionicons.css';
@import '../node_modules/bootstrap/dist/css/bootstrap';

html, body {
  height: 100%;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  height: 100%;
}
</style>
