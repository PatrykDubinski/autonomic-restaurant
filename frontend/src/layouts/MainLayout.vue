<template>
  <div class="main-layout">
    <Navbar />
    <div class="content">
      <slot />
    </div>
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

<style scoped lang="scss">
.main-layout{
  width: 100vw;

  .content {
    width: 100%;
    min-height: 84vh;
    height: 1px;
  }
}
</style>
