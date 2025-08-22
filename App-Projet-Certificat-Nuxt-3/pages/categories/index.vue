<template>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Tieba Boutik</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="/">Accueil</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Catégories</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop category Start -->
            <div class="col-lg-12 col-md-12">
                <div class="row pb-3">
                    <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="input-group">
                                <input type="text" class="form-control col-3" placeholder="Search by name">
                                <div class="input-group-append">
                                    <span class="input-group-text bg-transparent text-primary h-100">
                                        <i class="fa fa-search"></i>
                                    </span>
                                </div>
                            </div>


                            <div class="dropdown ml-4">
                                <select name="" id="">
                                    <option value="">Latest</option>
                                    <option value="">Popularity</option>
                                    <option value="">Best Rating</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row g-3" v-if="categories">
                        <div class="container-fluid offer pt-5">
                            <div class="row px-xl-5">
                                <div class="col-md-3 pb-4" v-for="category in categories">
                                    <div
                                        class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                                        <div class="position-relative" style="z-index: 1;">
                                            <h1 class="mb-4 font-weight-semi-bold">{{ category.name }}</h1>
                                            <NuxtLink
                                                :to="{ name: 'categories-slug', params: { slug: slugifyCategory(category.name) } }"
                                                class="btn btn-outline-primary py-md-2 px-md-3">
                                                Voir +
                                            </NuxtLink>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div v-else>
                        <p class="text-danger text-center m-3 p-5">Pas de Catégories </p>
                    </div>

                </div>
            </div>
            <!-- Shop category End -->
        </div>
    </div>
    <!-- Shop End -->

</template>

<script setup>
const categories = ref([]);
categories.value = await $fetch("/api/categories");

const slugifyCategory = (name) => {
    return name.toLowerCase().replace(/ /g, '-').replace(/'/g, '_').replace(/-/g, '*');
}

</script>

<style>
/* @import url("~/assets/css/style.css"); */
/* @import url("~/assets/css/vendor.css"); */
/* @import url("~/assets/css/swiper-bundle.min.css"); */
</style>