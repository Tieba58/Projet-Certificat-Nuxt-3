<template>
  <div :class="[
    'offcanvas offcanvas-end',
    { show: showCart },
    theme.theme === 'dark' ? 'bg-dark text-white' : 'bg-light text-dark'
  ]" data-bs-scroll="true" tabindex="-1" id="offcanvasCart" aria-labelledby="My Cart">
    <!-- Header -->
    <div class="offcanvas-header justify-content-center" @click="$emit('close-cart')">
      <button type="button" class="btn-close btn-close-red" data-bs-dismiss="offcanvas" @click="$emit('close-cart')"
        aria-label="Close"></button>
    </div>

    <!-- Body -->
    <div class="offcanvas-body">
      <div class="order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span :class="theme.theme === 'dark' ? 'text-warning' : 'text-primary'">Votre Panier</span>
          <span :class="['badge rounded-pill', theme.theme === 'dark' ? 'bg-warning text-dark' : 'bg-primary']">
            {{ totalItems }}
          </span>
        </h4>

        <!-- Liste des produits -->
        <ul class="list-group mb-3 px-3" :class="theme.theme === 'dark' ? 'bg-dark' : 'bg-white'"
          v-if="cart.items.length > 0">
          <li class="list-group-item d-flex justify-content-between lh-sm"
            :class="theme.theme === 'dark' ? 'bg-dark text-white border-secondary' : 'bg-light text-dark'"
            v-for="item in cart.items" :key="item.product.id">
            <div class="row">
              <div class="col-3 text-center">
                <img :src="item.product.image" class="img-fluid rounded-3 w-50" :alt="item.product.title" />
              </div>
              <div class="col-6">
                <h6 :class="[theme.theme === 'dark' ? 'text-info' : 'text-dark', 'my-0']">{{ item.product.title }}</h6>
                <small :class="theme.theme === 'dark' ? 'text-light' : 'text-body-secondary'">
                  {{ item.product.price }} CFA × {{ item.quantity }}
                </small>
              </div>
              <div class="col-3 text-end">
                <button @click="removeItem(item.product.id)" class="btn btn-sm btn-danger" title="Supprimer">
                  <i class="bi bi-trash"></i>
                </button>
              </div>
            </div>
          </li>

          <!-- Total -->
          <li class="list-group-item d-flex justify-content-between"
            :class="theme.theme === 'dark' ? 'bg-dark text-white border-secondary' : 'bg-light text-dark'">
            <span>Total</span>
            <strong>{{ total }} CFA</strong>
          </li>
        </ul>

        <!-- Panier vide -->
        <p v-else class="text-center fw-bold" :class="theme.theme === 'dark' ? 'text-warning' : 'text-info'">
          Panier vide
        </p>

        <!-- Boutons -->
        <a href="/checkout" class="w-100 btn btn-lg"
          :class="theme.theme === 'dark' ? 'btn-warning text-dark' : 'btn-primary'" v-if="cart.items.length > 0">
          Procéder au paiement
        </a>

        <button class="w-100 btn btn-danger btn-lg mt-4" v-if="cart.items.length > 0" @click="emptyCart" type="button">
          Vider
        </button>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useTheme } from '~/stores/useTheme'

const theme = useTheme()
const cart = useCartStore()

const totalItems = computed(() => cart.items.length)

const total = computed(() =>
  cart.items.reduce((sum, item) => sum + item.product.price * item.quantity, 0)
)

const removeItem = (id: number) => {
  cart.removeFromCart(id)
}

const emptyCart = () => {
  cart.clearCart()
}

defineEmits(['close-cart'])
defineProps({
  showCart: Boolean,
})
</script>

<style>
.btn-close-red {
  filter: invert(27%) sepia(98%) saturate(6173%) hue-rotate(356deg) brightness(104%) contrast(122%);
}
</style>
