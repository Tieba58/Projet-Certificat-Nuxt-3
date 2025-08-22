<template>
  <nav>
    <div class="wrapper">
      <div class="logo"><a href="/">Logo</a></div>
      <input type="radio" name="slider" id="menu-btn">
      <input type="radio" name="slider" id="close-btn">

      <ul class="nav-links">
        <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>

        <li><a href="/">Accueil</a></li>

        <li><a href="/products">Produits</a></li>

        <li>
          <NuxtLink to="/categories" class="desktop-item">Catégories</NuxtLink>
          <input type="checkbox" id="showDrop">
          <label for="showDrop" class="mobile-item">Catégories</label>
          <ul class="drop-menu">
            <li v-for="category in categories" :key="category.id">
              <NuxtLink :to="{ name: 'categories-slug', params: { slug: slugifyCategory(category.name) } }">{{
                category.name }}</NuxtLink>
            </li>
          </ul>
        </li>

        <li><a href="#">Contact</a></li>
        <li><a href="#">À propos de nous</a></li>
      </ul>

      <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>

      <div>
        <a href="/profil" class="mx-2" v-if="isLoggedIn">
          <i class="bi bi-person text-white fs-4"></i>
        </a>
        <a href="/login" class="mx-2" v-else>
          <i class="bi bi-person text-white fs-4"></i>
        </a>

        <ThemeToggle />


        <a class="mx-2 position-relative" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
          aria-controls="offcanvasCart" @click="$emit('toggle-cart')">
          <i class="bi bi-cart text-white fs-4"></i>
          <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
            style="font-size: 0.7rem;">
            {{ totalItems }}
          </span>
        </a>
      </div>
    </div>
  </nav>
</template>

<script setup lang="ts">
import { NuxtLink } from '#components';
import ThemeToggle from './ThemeToggle.vue';

defineEmits(['toggle-cart'])
const cart = useCartStore()

const totalItems = computed(() => {
  return cart.items.length
})
const categories = ref([]);
categories.value = await $fetch("/api/categories", {
  method: "GET",
});

const slugifyCategory = (name: string) => {
  return name.toLowerCase().replace(/ /g, '-').replace(/'/g, '_');
}
const auth = useAuth()
const isLoggedIn = ref(!!auth.token)
</script>
