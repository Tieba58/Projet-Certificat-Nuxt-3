<script setup lang="ts">
import { useTheme } from '~/stores/useTheme';

const theme = useTheme();

function toggle() {
    theme.toggleTheme();
}
</script>

<template>
    <a @click="toggle" class="mx-2">
        <i v-if="theme.theme === 'dark'" class="text-danger bi bi-moon-fill"></i>
        <i v-else class="text-white bi bi-sun-fill"></i>
    </a>

</template>
