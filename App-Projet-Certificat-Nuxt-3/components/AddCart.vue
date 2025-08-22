<template>
    <button class="btn btn-primary px-3" @click="addProductToCart"><i class="fa fa-shopping-cart text-dark me-1 mr-1"></i> Ajouter au
        Panier</button>
</template>

<script setup>
const cart = useCartStore()

const props = defineProps({
    product: {
        type: Object,
        required: true,
    },

    quantity: {
        type: Number,
        required: false,
        default: 1,
    }
})


const addProductToCart = () => {
    cart.addToCart(props.product, props.quantity)
}
</script>