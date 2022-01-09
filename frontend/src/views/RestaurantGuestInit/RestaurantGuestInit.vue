<template>
  <div class="restaurant-guest-wrapper">
    <div class="restaurant-guest-wrapper__stream">
      <QrStream @decode="onDecode" @init="logErrors">
        <div class="restaurant-guest-wrapper__stream-frame"></div>
      </QrStream>
    </div>
  </div>
</template>

<script lang="ts">
import {defineComponent} from "vue";
import { QrStream } from 'vue3-qr-reader';

export default defineComponent({
  name: 'RestaurantGuestInit',
  components: {
    QrStream
  },
  setup() {

    const onDecode = (decodedString: string) => {
      console.log(decodedString)
    }

    const logErrors = (promise: any) => {
      promise.catch(console.error)
    }

    return {
      onDecode,
      logErrors
    }
  }
})

</script>

<style scoped lang="scss">
.restaurant-guest-wrapper {
  width: 100%;
  height: 100vh;
  background-color: #5D3FDD;
  display: flex;
  justify-content: center;
  align-items: center;

  &__stream {
    max-height: 500px;
    max-width: 500px;
    margin: auto;

    &-frame {
      border-style: solid;
      border-width: 3px;
      border-color: black;
      height: 200px;
      width: 200px;
      position: absolute;
      top: 0px;
      bottom: 0px;
      right: 0px;
      left: 0px;
      margin: auto;
    }
  }
}
</style>