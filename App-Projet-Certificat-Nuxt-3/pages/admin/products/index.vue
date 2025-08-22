<template>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">E-Commmerce</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Administration</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Produit</p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Liste</p>
            </div>
        </div>
    </div>

    <div class="m-3 p-5">
        <div class="table-responsive text-center">
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Image</th>
                        <th scope="col">Titre</th>
                        <th scope="col">Catégorie</th>
                        <th scope="col">Prix</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody class="table-stripe">
                    <tr v-for="(product, index) in products">
                        <th scope="row">{{ index + 1 }}</th>
                        <td>
                            <img class="img-thumbnail" style="width: 50px; height: 35px;" :src="product.image" alt="">
                        </td>
                        <td>{{ product.title }}</td>
                        <td>{{ product.category.name }}</td>
                        <td>{{ product.price }}</td>
                        <td class="d-flex justify-content-around">
                            <NuxtLink class="btn btn-primary" role="button"
                                :to="{ name: 'admin-products-edit-id', params: { id: product.id } }">
                                Modifier
                            </NuxtLink>
                            <button class=" btn btn-danger" @click="deleteProduct(product.id)" type="button"
                                role="button">Supprimer</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>


</template>

<script setup>
const products = ref([]);
products.value = await $fetch("/api/products")

const deleteProduct = async (id) => {
    try {
        await $fetch(`/api/products/${id}`, {
            method: 'DELETE',
        })
        alert('Produit supprimé avec succès !')
        products.value = await $fetch("/api/products")
    } catch (error) {
        console.error('Erreur lors de la suppresion', error)
    }
}
</script>