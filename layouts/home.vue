<template>
    <div class="bg-[#EEEEEE]">
        <!-- Page Content -->
        <div class="p-4">
            <slot />
        </div>
    </div>
</template>

<script setup>
defineProps({
    layout: {
        type: String,
        default: 'home', // Set default layout to home
    },
})
</script>