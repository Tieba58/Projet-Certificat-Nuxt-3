<template>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">E-Commmerce</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Administration</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Catégorie</p>
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
                        <th scope="col">Titre</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody class="table-stripe">
                    <tr v-for="(category, index) in categories">
                        <th scope="row">{{ index+1 }}</th>
                        <td>{{ category.name }}</td>
                        <td class="d-flex justify-content-around">
                            <NuxtLink :to="{ name: 'admin-categories-edit-id', params: { id: category.id } }"
                                role="button" class="btn btn-primary mr-2">
                                Modifier
                            </NuxtLink>
                            <button class=" btn btn-danger" @click="deleteCategory(category.id)" type="button" role="button">Supprimer</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>


</template>

<script setup>
const categories = ref([]);
categories.value = await $fetch("/api/categories")

const deleteCategory = async (id) => {
    try {
        await $fetch(`/api/categories/${id}`, {
            method: 'DELETE',
        })
        alert('Catégorie supprimée avec succès !')
        categories.value = await $fetch("/api/categories")
    } catch (error) {
        console.error('Erreur lors de la suppresion', error)
    }
}
</script>