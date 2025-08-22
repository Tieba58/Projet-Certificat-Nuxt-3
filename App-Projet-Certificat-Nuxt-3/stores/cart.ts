import { defineStore } from "pinia";

export const useCartStore = defineStore("cart", {
  state: () => ({
    items: [],
  }),

  actions: {
    addToCart(product, quantity) {
      const existingItem = this.items.find(
        (item) => item.product.id === product.id
      );
      if (existingItem) {
        existingItem.quantity += quantity;
      } else {
        this.items.push({ product, quantity });
      }
    },

    removeFromCart(productId) {
      this.items = this.items.filter((item) => item.product.id !== productId);
    },

    clearCart() {
      this.items = [];
    },
  },
  persist: {
    storage: piniaPluginPersistedstate.localStorage(),
    key: "mon_panier",
    paths: ["items"],
  },
});
