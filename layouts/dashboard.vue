<template>
    <div class="flex min-h-screen bg-[#EEEEEE] ">

        <!-- Sidebar for Dashboard -->
        <Menu />

        <!-- Main Content Area -->
        <div class="flex-1 p-2 md:p-6">
            <!-- Mobile menu navigation -->

            <div class="flex justify-between items-center p-2 shadow-sm mb-2 md:hidden">
                <div>
                    <IconsLogo />
                </div>
                <div>
                    <button @click="toggleMenu" class="block md:hidden text-white focus:outline-none">
                        <IconsMenuico v-if="!menuOpen" class="text-[#158E8E] font-bold text-2xl" />
                        <IconsClose v-else class="text-blue-600 font-bold text-xl" />
                    </button>
                </div>

            </div>

            <div :class="menuOpen ? 'max-h-60' : 'max-h-0'"
                class="w-full md:flex md:items-center md:w-auto overflow-hidden transition-max-height duration-300 ease-in-out">
                <ul class="">
                    <li>
                        <NuxtLink to="/dashboard"
                            class="flex gap-1 items-center py-2 transition  hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsBoard class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Board
                            </span>
                        </NuxtLink>
                    </li>
                    <li>
                        <NuxtLink to="/dashboard/users"
                            class="flex gap-1 items-center py-2  transition hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsUser class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Users
                            </span>
                        </NuxtLink>
                    </li>
                    <li>
                        <NuxtLink to="/dashboard/template"
                            class="flex gap-1 items-center py-2  transition hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsTemplate class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Template
                            </span>
                        </NuxtLink>
                    </li>
                    <li>
                        <NuxtLink to="/dashboard/contracts"
                            class="flex gap-1 items-center py-2  transition hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsContract class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Contracts
                            </span>
                        </NuxtLink>
                    </li>
                    <li>
                        <NuxtLink to="/dashboard/validated"
                            class="flex gap-1 items-center py-2  transition hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsStamp class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Validated
                            </span>
                        </NuxtLink>
                    </li>
                    <li>
                        <NuxtLink to="/dashboard/reports"
                            class="flex gap-1 items-center py-2  transition hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsReport class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Reports
                            </span>
                        </NuxtLink>
                    </li>
                    <li>
                        <NuxtLink to="/dashboard/payslip"
                            class="flex gap-1 items-center py-2  transition hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsPayslip class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Payslip
                            </span>
                        </NuxtLink>
                    </li>
                    <li>
                        <NuxtLink to="/dashboard/settings"
                            class="flex gap-1 items-center py-2  transition hover:bg-[#CEEEEE]  hover:text-[#158E8E] hover:border-r-4 hover:border-[#158E8E]">
                            <IconsSettings class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Settings
                            </span>
                        </NuxtLink>
                    </li>
                </ul>
                <ul>
                    <li>
                        <NuxtLink to="/login"
                            class="flex gap-1 items-center text-red-700 py-2  transition hover:bg-red-200 hover:border-r-4 hover:border-red-700 mb-12">
                            <IconsLogout class="hover:stroke-[#158E8E] ml-6" />
                            <span>
                                Logout
                            </span>
                        </NuxtLink>
                    </li>
                </ul>
            </div>


            <Search />
            <header class="text-3xl font-semibold text-gray-900 mb-6">Dashboard</header>
            <div class="bg-white p-5  transition shadow-md">
                <slot />
            </div>
        </div>
    </div>
</template>

<script lang="ts" setup>
defineProps({
    layout: {
        type: String,
        default: 'dashboard', // Set default layout to dashboard
    },
})


import { ref } from 'vue';
// State for menu toggle
const menuOpen = ref(false);
const toggleMenu = () => {
    menuOpen.value = !menuOpen.value;
};


</script>
