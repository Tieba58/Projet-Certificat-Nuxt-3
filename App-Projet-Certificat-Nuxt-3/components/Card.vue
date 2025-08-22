<template>
    <div :class="['col-lg-3', 'col-md-4', 'col-sm-6', 'pb-1']">
        <div :class="[
            'card product-item border-0 mb-4 h-100 d-flex flex-column',
            theme.theme === 'dark' ? 'bg-dark text-white' : 'bg-light text-dark'
        ]">
            <!-- Image -->
            <div :class="[
                'card-header product-img position-relative overflow-hidden border p-2 d-flex align-items-center justify-content-center',
                theme.theme === 'dark' ? 'bg-dark' : 'bg-white'
            ]" style="height: 200px;">
                <img class="img-fluid h-100 w-auto object-fit-contain" :src="product.image" alt="" />
            </div>

            <!-- Corps -->
            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3 flex-grow-1">
                <h6 :class="[theme.theme === 'dark' ? 'text-info' : 'text-dark', 'text-truncate mb-3']">{{ product.title }}</h6>
                <div class="d-flex justify-content-center">
                    <h6 :class="theme.theme === 'dark' ? 'text-warning' : 'text-success'">
                        {{ product.price }}
                    </h6>
                </div>
            </div>

            <!-- Footer -->
            <div :class="[
                'card-footer d-flex justify-content-between border mt-auto',
                theme.theme === 'dark' ? 'bg-dark text-white' : 'bg-light text-dark'
            ]">
                <NuxtLink :to="{
                    name: 'products-slug',
                    params: { slug: slugifyProduct(product.title) }
                }" class="btn btn-sm p-0" :class="theme.theme === 'dark' ? 'text-white' : 'text-dark'">
                    <i :class="[
                        theme.theme === 'dark' ? 'text-primary' : 'text-primary',
                        'fas fa-eye me-1'
                    ]"></i>
                    Voir +
                </NuxtLink>

                <AddCart :product="product" class="btn p-0"
                    :class="theme.theme === 'dark' ? 'text-white' : 'text-dark'" />
            </div>
        </div>
    </div>
</template>

<script setup>
import { useTheme } from '~/stores/useTheme'

const props = defineProps({
    product: {
        type: Object,
        required: true,
    },
})

const theme = useTheme()

// Fonction slugification
const slugifyProduct = (title) => {
    return title.toLowerCase().replace(/ /g, '-').replace(/'/g, '_')
}
</script>

<style>
.object-fit-cover {
    object-fit: cover;
}
</style>
