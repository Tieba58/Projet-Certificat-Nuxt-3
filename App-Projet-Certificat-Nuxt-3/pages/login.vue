<template>
    <div class="min-h-screen d-flex align-items-center justify-content-center bg-light mt-3 p-3">
        <div class="bg-white shadow rounded p-4 w-100" style="max-width: 400px;">
            <h2 class="text-center mb-4 fw-bold">Connexion</h2>

            <form @submit.prevent="submit">
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input v-model="email" type="email" class="form-control" required />
                </div>

                <div class="mb-3">
                    <label class="form-label">Mot de passe</label>
                    <input v-model="password" type="password" class="form-control" required />
                </div>

                <button type="submit" class="btn btn-primary w-100">Se connecter</button>
                <p v-if="error" class="text-danger text-center mt-3">{{ error }}</p>
            </form>

            <p class="mt-3 text-center">
                Pas encore inscrit ? <NuxtLink to="/register">Créer un compte</NuxtLink>
            </p>
        </div>
    </div>
</template>

<script setup>
const auth = useAuth()
const router = useRouter()

if (auth.token) {
    router.push('/')
}

const email = ref('')
const password = ref('')
const error = ref('')

const submit = async (e) => {
    e.preventDefault()
    try {
        const res = await $fetch('/api/auth/login', {
            method: 'POST',
            body: { email: email.value, password: password.value, token_name: 'nuxt-client', },

        })
        auth.clearUser()
        auth.setUser(res.user)
        auth.setToken(res.token)
        router.push('/')
    } catch (err) {
        error.value = 'Erreur de connexion'
    }
}
</script>
