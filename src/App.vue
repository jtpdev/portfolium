<template>
  <div id="app">
    <side-bar></side-bar>
    <router-view/>
  </div>
</template>

<script>
import { SideBar } from './components/SideBar'

export default {
  name: 'Portfolium',
  components: {
    'side-bar': SideBar
  }
}
</script>

<style lang="scss">

@import '../node_modules/ionicons/dist/scss/ionicons.scss';

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
