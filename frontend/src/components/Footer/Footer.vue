<template>
  <div class="footer">
    <span class="footer-content">&copy; 2022 Patryk Dubiński</span>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  setup() {
    return {};
  },
});
</script>

<style scoped>
.footer{
  height: 8vh;
  background: #5D3FDD;
  color: #FFFFFF;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0 2rem;
}
</style>
