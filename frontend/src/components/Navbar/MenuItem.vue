<template>
  <div class="menu-item">
    <span @click="router.push(menuItem.href)" class="menu-item__text">{{
      menuItem.text
    }}</span>
  </div>
</template>

<script lang="ts">
import { defineComponent, toRefs } from "vue";
import router from "../../router/index";

type MenuItemProps = {
  text: string;
  href: string;
};

export default defineComponent({
  props: {
    menuItem: {
      type: Object as () => MenuItemProps,
    },
  },
  setup(props) {
    return {
      ...toRefs(props),
      router,
    };
  },
});
</script>

<style scoped></style>
