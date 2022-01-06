<template>
  <div class="main-layout">
    <Navbar />
    <slot />
    <Footer />
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Navbar from "@/components/Navbar/Navbar.vue";
import Footer from "@/components/Footer/Footer.vue";

export default defineComponent({
  components: {
    Navbar,
    Footer,
  },
  setup() {
    return {};
  },
});
</script>

<style scoped lang="scss"></style>
