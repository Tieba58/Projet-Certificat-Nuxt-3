<template>
    <div class="min-h-screen d-flex align-items-center justify-content-center bg-light mt-3 p-3">
        <div class="bg-white shadow rounded p-4 w-100" style="max-width: 400px;">
            <h2 class="text-center mb-4 fw-bold">Créer un compte</h2>

            <form @submit.prevent="register">
                <div class="mb-3">
                    <label class="form-label">Nom</label>
                    <input v-model="user.name" type="text" class="form-control" required />
                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input v-model="user.email" type="email" class="form-control" required />
                </div>

                <div class="mb-3">
                    <label class="form-label">Mot de passe</label>
                    <input v-model="user.password" type="password" class="form-control" required />
                </div>

                <div class="mb-3">
                    <label class="form-label">Confirmation Mot de passe</label>
                    <input v-model="confirmPassword" type="password" class="form-control" required />
                    <p v-if="confirmError" class="text-success text-center mt-3">{{ confirmError }}</p>
                    <p v-else class="text-danger text-center mt-3">{{ confirmError }}</p>
                </div>

                <button type="submit" class="btn btn-success w-100">S'inscrire</button>

                <p v-if="errorMessage" class="text-danger text-center mt-3">{{ errorMessage }}</p>
            </form>

            <p class="mt-3 text-center">
                Vous avez déjà un compte ? <NuxtLink to="/login">Se connecter</NuxtLink>
            </p>
        </div>
    </div>
</template>

<script setup>
const { user, resetUser } = useUser()
const router = useRouter()
const errorMessage = ref('')
const confirmPassword = ref('')

user.value.role = 0

const register = async () => {
    if (user.value.password !== confirmPassword.value) {
        errorMessage.value = "Les mots de passe ne correspondent pas."
        return
    }

    try {
        const response = await $fetch('/api/auth/register', {
            method: 'POST',
            body: user.value,
        })

        if (response) {
            alert('Inscription réussie !')
            resetUser()
            router.push('/login')
        } else {
            errorMessage.value = response.message || "Erreur lors de l'inscription."
        }
    } catch (error) {
        errorMessage.value = error.data?.message || "Erreur serveur."
    }
}


</script>