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
                <p class="m-0">Nouveau</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container-fluid bg-white p-5">
        <div class="contact-form">
            <div id="success"></div>
            <form name="sentMessage" id="contactForm" novalidate="novalidate"  @submit.prevent="submitForm">
                <div class="row control-group">
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="price" name="title" placeholder="Titre"
                            required="required" v-model="product.title"
                            data-validation-required-message="Svp entrez le titre de l'application" />
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="price" name="price" placeholder="Prix"
                            v-model="product.price" required="required"
                            data-validation-required-message="Entrez le prix svp" />
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                    <textarea class="form-control" name="description" id="description" placeholder="Description"
                        required="required" rows="4" data-validation-required-message="Entrez la description svp"
                        v-model="product.description"></textarea>
                    <p class="help-block text-danger"></p>
                </div>
                <div class="row control-group">
                    <div class="col-sm-6">
                        <select v-model="product.category_id" class="form-select" required>
                            <option value="" disabled>-- Sélectionnez une catégorie --</option>
                            <option v-for="category in categories" :key="category.id" :value="category.id">
                                {{ category.name }}
                            </option>
                        </select>
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="col-sm-6">
                        <input type="url" v-model="product.image" class="form-control" id="image" name="image" placeholder="Le lien de l'image"
                            required="required" data-validation-required-message="Entrez le lien de l'image svp" />
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="text-center">
                    <button  class="btn btn-primary py-2 px-4 rounded" type="submit">
                        Enregistrer
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script setup>
const categories = ref([]);
const route = useRoute()
const router = useRouter()
categories.value = await $fetch("/api/categories")

const { product, resetProduct } = useProduct()
const product_id = route.params.id
product.value = await $fetch(`/api/products/${product_id}`, { method: 'GET' })

const submitForm = async () => {
    try {
        await $fetch(`/api/products/${product_id}`, {
            method: 'PUT',
            body: product.value
        })
        alert('Produit modifié avec succès !')
        router.push('/admin/products')
    } catch (error) {
        console.error('Erreur lors de la modification', error)
    }

}
</script>