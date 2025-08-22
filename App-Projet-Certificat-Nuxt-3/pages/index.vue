<template>
    <section id="billboard" class="bg-light py-5">
        <div class="container-fluiD">
            <div class="row text-center">
                <h2 class="section-title px-5"><span class="px-2">Bienvenue</span></h2>
                <div class="col-md-12 text-center px-3" data-aos="fade-up" data-aos-delay="300">
                    <p class="text-center">Nous sommes heureux de vous compter parmi nos visiteurs.
                        Découvrez une large sélection de produits de qualité, des offres exclusives et une expérience
                        d'achat simple, rapide et sécurisée. <br>
                        Que vous soyez ici pour faire plaisir ou vous faire plaisir, vous êtes au bon endroit ! <br>
                        Bonne visite et bon shopping ! 🛒</p>
                </div>
            </div>
        </div>
    </section>

    <section>
        <!-- Products Start -->
        <div class="container-fluid pt-5" v-if="products">
            <div class="text-center mb-4">
                <h2 class="section-title px-5"><span class="px-2">Produits</span></h2>
            </div>
            <div class="row g-3" v-if="products">
                <Card v-for="product in products" :key="product.id" :product="product" />
            </div>
            <div v-else>
                <p class="text-danger text-center m-3 p-5">Pas de produits </p>
            </div>
        </div>
    </section>

    <section class="features py-5">
        <div class="container">
            <div class="row">
                <!-- Large choix  -->
                <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="0">
                    <div class="py-5">
                        <i class="fas fa-th-large fa-2x"></i>
                        <h4 class="text-primary text-capitalize my-3">Large disponibilité</h4>
                        <p>Des centaines de produits disponibles à tout moment, pour tous les goûts et tous les besoins.
                        </p>
                    </div>
                </div>
                <!-- Livraison rapide -->
                <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="300">
                    <div class="py-5">
                        <i class="fas fa-shipping-fast fa-2x"></i>
                        <h4 class="text-primary text-capitalize my-3">Livraison express</h4>
                        <p>Commandez aujourd'hui, recevez rapidement chez vous. Livraison sécurisée partout.</p>
                    </div>
                </div>
                <!-- Service client -->
                <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="600">
                    <div class="py-5">
                        <i class="fas fa-headset fa-2x"></i>
                        <h4 class="text-primary text-capitalize my-3">Support 24h/7</h4>
                        <p>Une question ? Notre équipe est disponible à tout moment pour vous assister.</p>
                    </div>
                </div>
                <!-- Retours gratuits -->
                <div class="col-md-3 text-center" data-aos="fade-in" data-aos-delay="900">
                    <div class="py-5">
                        <i class="fas fa-undo fa-2x"></i>
                        <h4 class="text-primary text-capitalize my-3">Retours faciles</h4>
                        <p>Pas satisfait ? Retournez gratuitement vos articles selon nos conditions flexibles.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

</template>

<script setup>
const products = ref([]);
const allProducts = await $fetch("/api/products");
products.value = allProducts.slice(0, 6);
</script>


<style>
@import url("~/assets/css/style.css");
</style>