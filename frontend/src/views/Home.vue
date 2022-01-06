<template>
  <MainLayout>
    <div class="home-wrapper">
      <div class="home-wrapper_restaurant">
        <h2>Wchodzę do restauracji</h2>
      </div>
      <div class="home-wrapper_website">
        <h2>Wchodzę na stronę</h2>
      </div>
    </div>
  </MainLayout>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import MainLayout from "../layouts/MainLayout.vue";

export default defineComponent({
  name: "Home",
  components: {
    MainLayout,
  },
});
</script>
