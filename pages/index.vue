<template>
  <div>
    <!-- Navigation for Home -->
    <nav class="p-4">
      <div class="max-w-7xl">
        <ul class="flex space-x-4">
          <li>
            <NuxtLink to="/" class="text-[#158E8E]">Home</NuxtLink>
          </li>
          <li>
            <NuxtLink to="/login" class="text-[#158E8E]">Login</NuxtLink>
          </li>
          <li>
            <NuxtLink to="/signup" class="text-[#158E8E]">Create Account</NuxtLink>
          </li>
        </ul>
      </div>
    </nav>
    
    <h1 class="text-black text-3xl font-bold">
      Welcome to the Akatua Home Page
    </h1>
  </div>
</template>

<script setup>
definePageMeta({
  layout: "home", // Use the Home layout
});
</script>
