<template>
  <div class="menu-items">
    <MenuItem
      v-for="(item, index) in menuItems"
      :key="index"
      :menuItem="item"
    />
  </div>
</template>

<script lang="ts">
import { defineComponent, toRefs } from "vue";
import MenuItem from "./MenuItem.vue";

type MenuItemsProps = {
  text: string;
  href: string;
};

export default defineComponent({
  components: {
    MenuItem,
  },
  props: {
    menuItems: {
      type: Array as () => MenuItemsProps[],
    },
  },
  setup(props) {
    return {
      ...toRefs(props),
    };
  },
});
</script>

<style scoped lang="scss">
.menu-items {
  display: flex;
  align-items: center;
  height: 100%;
}
</style>
