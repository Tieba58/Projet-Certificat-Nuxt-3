<template>
    <Header @toggle-cart="showCart = true" />
    <div>
        <slot />
    </div>
    <Footer />
    <Transition name="slide-cart">
        <Cart :showCart="showCart" @close-cart="showCart = false" />
    </Transition>
</template>

<script setup lang="ts">

const showCart = ref(false)
</script>


<style scoped>
/* Slide from right */
.slide-cart-enter-active,
.slide-cart-leave-active {
    transition: transform 0.4s ease, opacity 0.4s ease;
}

.slide-cart-enter-from {
    transform: translateX(100%);
    opacity: 0;
}

.slide-cart-enter-to {
    transform: translateX(0);
    opacity: 1;
}

.slide-cart-leave-from {
    transform: translateX(0);
    opacity: 1;
}

.slide-cart-leave-to {
    transform: translateX(100%);
    opacity: 0;
}
</style>