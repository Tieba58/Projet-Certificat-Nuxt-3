<template>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-2">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Tieba Boutik</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Accueil</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0" v-if="currentProduct.category">{{ currentProduct.category?.name }}</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Tieba Boutik Start -->
    <div class="container-fluid py-1" v-if="currentProduct">
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-2">
                <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img :src="currentProduct.image" class="d-block w-100" :alt="currentProduct.title">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-7 pb-2">
                <h3 class="font-weight-semi-bold">{{ currentProduct.title }}</h3>
                <div class="d-flex mb-3">
                    <div class="text-primary mr-2">
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star-half-alt"></small>
                        <small class="far fa-star"></small>
                    </div>
                    <small class="pt-1">(50 visionnages)</small>
                </div>
                <h3 class="font-weight-semi-bold mb-4">{{ currentProduct.price }} CFA</h3>
                <p class="mb-4">
                    {{ currentProduct.description }}
                </p>
                <div class="d-flex align-items-center mb-4 pt-2">
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-minus" @click="minusQuantite">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                        <input type="text" class="form-control bg-secondary text-center" v-model="quantity">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-plus" @click="plusQuantite">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <AddCart :product="currentProduct" :quantity="quantity"/>
                </div>
            </div>
        </div>

    </div>
    <!-- Tieba Boutik End -->

    <!-- Products Start -->
    <div class="container-fluid py-1">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Vous pourrez aimer ces produits</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="row px-xl-5 pb-3">
                    <div class="col-lg-3 col-md-4 col-sm-6 pb-1" v-for="item in relatedProducts">
                        <div class="card product-item border-0 mb-4">
                            <div
                                class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" :src="item.image" :alt="item.title">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">{{ item.title }}</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>{{ item.price }} CFA</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <NuxtLink :to="{ name: 'products-slug', params: { slug: slugifyProduct(item.title) } }"
                                    class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary me-1"></i>Voir +
                                </NuxtLink>
                                <a href="" class="btn btn-sm text-dark p-0"><i
                                        class="fas fa-shopping-cart text-primary mr-1"></i>Ajouter au
                                    Panier</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Products End -->
</template>
<script setup>
const route = useRoute()
const product_slug = route.params.slug

const products = ref([])
const currentProduct = ref(null)
const quantity = ref(1)
const relatedProducts = ref([])

try {
    // 1. Charger tous les produits
    products.value = await $fetch("/api/products")

    // 2. Charger le produit actuel via le slug
    const product = await $fetch(`/api/products/show/${product_slug}`)

    currentProduct.value = product

    // 3. Filtrer les autres produits
    relatedProducts.value = products.value
        .filter(p => p.id !== product.id)
        .slice(0, 4)
} catch (error) {
    console.error('Erreur lors du chargement :', error)
}

// Fonction de slugification à réutiliser dans NuxtLink
const slugifyProduct = (title) => {
    return title.toLowerCase().replace(/ /g, '-').replace(/'/g, '_')
}

const minusQuantite = () => {
    if (quantity.value > 1) {
        quantity.value = quantity.value - 1;
    }
}

const plusQuantite = () => {
    if (quantity.value < 5) {
        quantity.value = quantity.value + 1;
    }
}

</script>

<style>
@import url("~/assets/css/style.css");
</style>
