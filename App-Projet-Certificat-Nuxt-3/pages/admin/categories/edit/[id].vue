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
                <p class="m-0">Modification</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container-fluid bg-white p-5">
        <div class="contact-form">
            <div id="success"></div>
            <form name="sentMessage" id="contactForm" novalidate="novalidate" @submit.prevent="submitForm">
                <div class="row control-group">
                    <div class="col-sm-12">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Titre"
                            required="required" v-model="category.name"
                            data-validation-required-message="Svp entrez le titre de l'application" />
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                    <textarea class="form-control" name="description" id="description" placeholder="Description"
                        required="required" rows="4" data-validation-required-message="Entrez la description svp"
                        v-model="category.description"></textarea>
                    <p class="help-block text-danger"></p>
                </div>
                <div class="text-center">
                    <button class="btn btn-primary py-2 px-4 rounded" type="submit">
                        Enregistrer
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script setup>
const { category, resetProduct } = useCategory  ()
const route = useRoute()
const router = useRouter()

const category_id = route.params.id

category.value = await $fetch(`/api/categories/${category_id}`, { method: 'GET' })

const submitForm = async () => {
    try {
        await $fetch(`/api/categories/${category_id}`, {
            method: 'PUT',
            body: category.value
        })
        alert('Catégorie modifiée avec succès !')
        router.push('/admin/categories')
    } catch (error) {
        console.error('Erreur lors de la modification', error)
    }
}
</script>