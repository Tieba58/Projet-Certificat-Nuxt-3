<template>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Tieba Boutik</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Accueil</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Paiement</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container py-5">
        <h2 class="mb-4">Page de validation du panier</h2>

        <div class="row">
            <!-- Colonne gauche : Panier -->
            <div class="col-md-7">
                <div class="card mb-4">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">Résumé du panier</h5>
                    </div>
                    <ul class="list-group list-group-flush" v-if="items.length > 0">
                        <li class="list-group-item d-flex justify-content-between align-items-center"
                            v-for="item in items" :key="item.product.id">
                            <div class="row">
                                <div class="col-3 text-center">
                                    <img :src="item.product.image" class="img-fluid rounded-3 w-50"
                                        :alt="item.product.title">
                                </div>
                                <div class="col-6">
                                    <h6 class="my-0">{{ item.product.title }}</h6>
                                    <small class="text-body-secondary">{{ item.product.price }} CFA X {{ item.quantity
                                    }}</small>
                                </div>
                                <div class="col-3 text-end">
                                    <button @click="removeItem(item.product.id)" class="btn btn-sm btn-danger"
                                        title="Supprimer">
                                        <i class="bi bi-trash"></i>
                                    </button>

                                </div>
                            </div>
                        </li>
                    </ul>
                    <p v-else class="text-info text-center fw-bold"> Panier vide</p>
                </div>

                <div class="card mb-4">
                    <div class="card-body text-center">
                        <a href="/" class="btn btn-primary btn-lg">
                            Continuer les achats
                        </a>
                    </div>
                </div>

            </div>

            <!-- Colonne droite : Formulaire -->
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        <h5 class="mb-0">Informations client</h5>
                    </div>
                    <div class="card-body">
                        <form @submit="checkout">
                            <div class="mb-3">
                                <label for="nom" class="form-label">Nom complet</label>
                                <input type="text" id="nom" :value="auth.user?.name" class="form-control" disabled>
                            </div>
                            <div class="mb-3">
                                <label for="tel" class="form-label">Email</label>
                                <input type="tel" id="tel" :value="auth.user?.email" class="form-control" disabled>
                            </div>
                            <button type="submit" class="btn btn-success w-100">
                                Valider la commande
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
const auth = useAuth()
const router = useRouter()

onMounted(() => {
    if (!auth.token) {
        router.push('/login')
    }
})

const items = useCartStore().items
const cart = useCartStore()
const checkout = async (e) => {
    e.preventDefault()

    try {
        const payload = {
            items: items.map(item => ({
                product_id: item.product.id,
                quantity: item.quantity
            }))
        }

        const res = await $fetch('/api/orders/checkout', {
            method: 'POST',
            body: payload,
            credentials: 'include', // utile uniquement avec Sanctum cookies
            headers: {
                Accept: 'application/json',
                'Content-Type': 'application/json',
                Authorization: `Bearer ${auth.token}`,
            },
        })

        if (res?.order_id) {
            cart.clearCart()
            router.push('/merci')
        } else {
            alert('Échec de la commande.')
        }

    } catch (error) {
        console.error('Erreur commande :', error)
        alert('Une erreur est survenue lors de la commande.')
    }
}
</script>