<template>
    <!-- Desktop navigation -->
    <aside class="hidden w-64 bg-white text-[#544E4E] md:flex md:flex-col md:justify-between font-medium  ">
        <div class="mt-8">
            <header class="flex gap-2 justify-start items-center mb-4">
                <IconsLogo class="text-6xl ml-4" />
                <h2 class="text-xl font-semibold">Plato Consult Ltd</h2>
            </header>
            <ul class="space-y-2">
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
        </div>
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
    </aside>


</template>

<script setup>
import { ref } from 'vue';
// State for menu toggle
const menuOpen = ref(false);
const toggleMenu = () => {
    menuOpen.value = !menuOpen.value;
};
</script>