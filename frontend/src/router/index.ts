import { createRouter, createWebHistory, RouteRecordRaw } from "vue-router";
import Home from "../views/Home.vue";

const routes: Array<RouteRecordRaw> = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/entrance",
    name: "RestaurantGuestInit",
    component: () =>
      import("../views/RestaurantGuestInit/RestaurantGuestInit.vue"),
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

// createWebHistory(process.env.BASE_URL)

export default router;
