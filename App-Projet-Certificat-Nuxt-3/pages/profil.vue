<template>
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Tieba Boutik</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Profil</a></p>
            </div>
            <p class="mt-3">
                <button class="btn btn-outline-danger rounded fw-bold" @click.prevent="logout">Se Déconnecter</button>
            </p>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container-fluid my-5">
        <div class="row">
            <!-- Section 1: Détails utilisateur -->
            <div class="col-md-4 mt-3">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">Détails de l'utilisateur</h5>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title">{{ auth.user?.name }}</h5>
                        <p class="card-text text-muted">{{ auth.user?.email }}</p>
                    </div>
                </div>
            </div>
            {{ error }}

            <!-- Section 2: Liste des commandes -->
            <div class="col-md-8 mt-3">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        <h5 class="mb-0">Historique des commandes</h5>
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-hover align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th>#</th>
                                    <th>Date</th>
                                    <th>Numéro</th>
                                    <th>Total</th>
                                    <th>Statut</th>
                                </tr>
                            </thead>
                            <tbody v-if="orderProfil">
                                <tr v-for="(order, index) in orderProfil" :key="order.id">
                                    <td>{{ index + 1 }}</td>
                                    <td>{{ order.created_at }}</td>
                                    <td>{{ order.num }}</td>
                                    <td>{{ order.total }}</td>
                                    <td>
                                        <span class="badge bg-success" v-if="order.status == 1">Livrée</span>
                                        <span class="badge bg-warning" v-else-if="order.status == 0">En attente</span>
                                        <span class="badge bg-danger" v-else>Annulé</span>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
    {{ orders }}
</template>

<script setup>
const auth = useAuth();
const orderProfil = ref([]);
const router = useRouter()

try {
    const orders = await $fetch('/api/orders', {
        method: 'GET',
        headers: {
            Accept: 'application/json',
            Authorization: `Bearer ${auth.token}`,
        },
    });

    console.log(orders); // ✅ Pas de `.value`

    orderProfil.value = orders.filter(order => order.user_id == auth.user.id);
} catch (error) {
    console.error('Erreur lors du chargement des commandes :', error);
}


const logout = async () => {
    try {
        // Appel à l'API Laravel pour invalider le token
        await $fetch("/api/auth/logout", {
            method: 'POST',
            headers: {
                Accept: 'application/json',
                Authorization: `Bearer ${auth.token}`,
            },
        });
    } catch (error) {
        console.error('Erreur de déconnexion Laravel :', error);
    }

    // Supprimer les infos côté client
    auth.user = null;
    auth.token = null;

    // Rediriger vers la page de connexion ou accueil
    router.push('/login');
};

</script>
