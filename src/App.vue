<template>
  <div id="app">
    <div class="side">
      <side-bar/>
    </div>
    <div class="main">
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
@import '../node_modules/ionicons/css/ionicons.css';
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

.side {
  width: 240px;
  height: 100%;
  position: fixed;
}

.main {
  margin-left: 240px;
  height: 100%;
}

</style>
