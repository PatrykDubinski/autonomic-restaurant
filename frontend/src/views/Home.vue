<template>
  <MainLayout>
    <div class="home-wrapper">
      <div class="home-wrapper_restaurant">
        <div class="home-wrapper_restaurant__image">
          <img src="../assets/images/restaurant_bg.jpg" class="img" />
        </div>
        <h1 class="title">Wchodzę do restauracji</h1>
      </div>
      <div class="home-wrapper_website">
        <div class="home-wrapper_restaurant__image">
          <img src="../assets/images/website.jpg" class="img" />
        </div>
        <h1 class="title">Wchodzę na stronę</h1>
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

<style scoped lang="scss">
.home-wrapper {
  width: 100%;
  height: 100%;
  display: flex;

  &_website, &_restaurant {
    width: 50%;
    height: 100%;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;

    &:hover &__image .img {
      filter: grayscale(0);
      transform: scale(1.06);
      opacity: 1;
    }

    .title {
      font-size: 4rem;
      color: #fff;
      z-index: 2;
      text-decoration: underline;
    }

    &__image {
      overflow: hidden;
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: black;

      .img {
        -webkit-filter: grayscale(100%);
        filter: grayscale(100%);
        opacity: .5;
        transition: all .7s ease-in-out;
      }
    }
  }
}
</style>