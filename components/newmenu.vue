<template>
    <!-- Main Navigation -->
    <div class="bg-white text-[#544E4E] font-medium">
        <!-- Mobile Navigation (Top Bar) -->
        <div class="md:hidden flex items-center justify-between p-4 border-b">
            <header class="flex gap-2 items-center">
                <IconsLogo class="text-6xl" />
                <h2 class="text-xl font-semibold">Plato Consult Ltd</h2>
            </header>
            <button @click="toggleMobileMenu" class="text-2xl">
                <span class="material-icons">menu</span>
            </button>
        </div>

        <!-- Mobile Menu (Hidden by default) -->
        <div v-if="isMobileMenuOpen" class="md:hidden flex flex-col gap-2 mt-2 px-4 border-b">
            <ul class="space-y-2">
                <li>
                    <NuxtLink to="/dashboard"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsBoard class="hover:stroke-[#158E8E]" />
                        <span>Board</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/users"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsUser class="hover:stroke-[#158E8E]" />
                        <span>Users</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/template"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsTemplate class="hover:stroke-[#158E8E]" />
                        <span>Template</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/contracts"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsContract class="hover:stroke-[#158E8E]" />
                        <span>Contracts</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/validated"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsStamp class="hover:stroke-[#158E8E]" />
                        <span>Validated</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/reports"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsReport class="hover:stroke-[#158E8E]" />
                        <span>Reports</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/payslip"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsPayslip class="hover:stroke-[#158E8E]" />
                        <span>Payslip</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/settings"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-b-4 hover:border-[#158E8E]">
                        <IconsSettings class="hover:stroke-[#158E8E]" />
                        <span>Settings</span>
                    </NuxtLink>
                </li>
            </ul>
            <ul>
                <li>
                    <NuxtLink to="/login"
                        class="flex gap-1 items-center text-red-700 py-2 transition hover:bg-red-200 hover:border-b-4 hover:border-red-700">
                        <IconsLogout class="hover:stroke-[#158E8E]" />
                        <span>Logout</span>
                    </NuxtLink>
                </li>
            </ul>
        </div>

        <!-- Desktop Navigation (Sidebar) -->
        <div class="hidden md:flex md:flex-col md:justify-between mt-8 w-64">
            <header class="flex gap-2 justify-start items-center mb-4">
                <IconsLogo class="text-6xl ml-4" />
                <h2 class="text-xl font-semibold">Plato Consult Ltd</h2>
            </header>
            <ul class="space-y-2">
                <li>
                    <NuxtLink to="/dashboard"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsBoard class="hover:stroke-[#158E8E] ml-6" />
                        <span>Board</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/users"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsUser class="hover:stroke-[#158E8E] ml-6" />
                        <span>Users</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/template"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsTemplate class="hover:stroke-[#158E8E] ml-6" />
                        <span>Template</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/contracts"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsContract class="hover:stroke-[#158E8E] ml-6" />
                        <span>Contracts</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/validated"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsStamp class="hover:stroke-[#158E8E] ml-6" />
                        <span>Validated</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/reports"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsReport class="hover:stroke-[#158E8E] ml-6" />
                        <span>Reports</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/payslip"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsPayslip class="hover:stroke-[#158E8E] ml-6" />
                        <span>Payslip</span>
                    </NuxtLink>
                </li>
                <li>
                    <NuxtLink to="/dashboard/settings"
                        class="flex gap-1 items-center py-2 transition hover:bg-[#CEEEEE] hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                        <IconsSettings class="hover:stroke-[#158E8E] ml-6" />
                        <span>Settings</span>
                    </NuxtLink>
                </li>
            </ul>
        </div>
    </div>
</template>

<script setup>
import { ref } from 'vue';

const isMobileMenuOpen = ref(false);

const toggleMobileMenu = () => {
    isMobileMenuOpen.value = !isMobileMenuOpen.value;
};
</script>

<style scoped>
/* Add any custom styles here if needed */
</style>
