<template>
    <NuxtLayout>
        <NuxtPage />
    </NuxtLayout>
</template>

<script setup lang="ts">
import { useTheme } from './stores/useTheme';


const auth = useAuth()

if (!auth.token) {
    try {
        const user = await $fetch('/api/auth/user', { credentials: 'include' })
        if (user) auth.setUser(user)
    } catch (e) {
        auth.clearUser()
    }
}

const theme = useTheme();

onMounted(() => {
    theme.loadTheme();
});
</script>
