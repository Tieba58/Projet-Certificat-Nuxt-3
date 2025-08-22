<template>
    <div class="min-h-screen d-flex align-items-center justify-content-center bg-light mt-3 p-3">
        <div class="bg-white shadow rounded p-4 w-100" style="max-width: 400px;">
            <h2 class="text-center mb-4 fw-bold">Connexion</h2>

            <form @submit.prevent="login">
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input v-model="user.email" type="email" class="form-control" required />
                </div>

                <div class="mb-3">
                    <label class="form-label">Mot de passe</label>
                    <input v-model="user.password" type="password" class="form-control" required />
                </div>

                <button type="submit" class="btn btn-primary w-100">Se connecter</button>

                <p v-if="errorMessage" class="text-danger text-center mt-3">{{ errorMessage }}</p>
            </form>

            <p class="mt-3 text-center">
                Pas encore inscrit ? <NuxtLink to="/register">Créer un compte</NuxtLink>
            </p>
        </div>
    </div>
</template>

<script setup>
const { user, resetUser } = useUser()
const router = useRouter()
const errorMessage = ref('')


</script>
