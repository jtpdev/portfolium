<template>
  <div id="main" class="row">
      <div class="col-sm-4" v-for="job in jobs">
          <img :src="job.medias[0].path">
      </div>
  </div>
</template>

<script>
import ProjectsService from "../services/ProjectsService";

export default {
  data() {
    return {
      jobs: []
    };
  },
  created() {
    this.service = new ProjectsService(this.$resource);

    this.service.listJobs().then(jobs => {
      this.jobs = jobs;
    });
  }
};
</script>

<style scoped>

#main {
    text-align: center;
    padding: 15px;
}

img {
    width: 240px;
    height: 360px;
}

</style>
