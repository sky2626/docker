<template>
  <div class="flex items-center justify-center min-h-screen">
    <div class="glass-effect p-4 rounded-lg w-full max-w-sm">
      <h2 class="text-3xl font-semibold text-center text-[#544E4E] mb-6">Login</h2>
      <form @submit.prevent="onSubmit">
        <div class="mb-4 p-1 flex items-center rounded border border-[#158E8E]">
          <IconsProfile class="text-[#158E8E]" />
          <input type=" email" id="email" v-model="email" required
            class="w-full pl-2 rounded-md border border-transparent focus:outline-none bg-transparent text-[#544E4E]"
            placeholder="Enter your email" />
        </div>
        <div class="mb-6 flex items-center rounded p-1 border border-[#158E8E]">
          <IconsLock class="text-[#158E8E]" />
          <input :type="passwordVisible ? 'text' : 'password'" id="password" v-model="password" required
            class="w-full pl-2 rounded-md border border-transparent focus:outline-none bg-transparent text-[#544E4E]"
            placeholder="Enter your password" />
          <button type="button" @click="togglePasswordVisibility">
            <!-- Use Heroicons -->
            <IconsEyeoff v-if="passwordVisible" class="text-[#544E4E]" />
            <IconsEye v-else class="text-[#544E4E]" />
          </button>
        </div>
        <button type="submit"
          class="w-full mb-6 text-medium py-2 bg-[#158E8E] text-white rounded-md hover:bg- focus:outline-none">
          Login
        </button>
        <div class="flex flex-col justify-center items-center gap-1 md:flex-row">
          <p>Do not have an account?</p>
          <NuxtLink to="signup" class="text-[#158E8E]">Create an Account</NuxtLink>
        </div>
      </form>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue";

const email = ref("");
const password = ref("");
const passwordVisible = ref(false); // Track password visibility

// Function to toggle password visibility
const togglePasswordVisibility = () => {
    passwordVisible.value = !passwordVisible.value;
};

const onSubmit = () => {
    console.log("Email:", email.value);
    console.log("Password:", password.value);
};
</script>

<style scoped>
.glass-effect {
    background: rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

body {
    font-family: "Arial", sans-serif;
}
</style>
