<template>
  <div class="navbar-wrapper">
    <!-- logo -->
    <MenuItems :menuItems="menuItems" />
  </div>
</template>

<script lang="ts">
import { defineComponent, reactive, toRefs } from "vue";
import MenuItems from "./MenuItems.vue";

export default defineComponent({
  components: {
    MenuItems,
  },
  setup() {
    const state = reactive({
      menuItems: [
        {
          text: "Logowanie",
          href: "/login",
        },
        {
          text: "Rejestracja",
          href: "/register",
        },
        {
          text: "Konto",
          href: "/account",
        },
      ],
    });
    return {
      ...toRefs(state),
    };
  },
});
</script>

<style scoped lang="scss">
.navbar-wrapper{
  height: 8vh;
  background: aquamarine;
}
</style>
