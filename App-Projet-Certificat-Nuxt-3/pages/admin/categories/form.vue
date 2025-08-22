<template>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">E-Commmerce</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Administration</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">catégorie</p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Nouveau</p>
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
const categories = ref([]);
categories.value = await $fetch("/api/categories")

const { category, resetCategory } = useCategory()


const submitForm = async () => {
    try {
        await $fetch('/api/categories', {
            method: 'POST',
            body: category.value
        });
        alert('Categorie ajoutée avec succès !');
        resetCategory();
    } catch (error) {
        console.error('Erreur lors de l\'ajout', error)
    }
}
</script>