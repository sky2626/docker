<template>
    <div class="flex gap-2 w-full items-center">
        <!-- Search -->
        <div class="w-full">
            <form class=" id='searh' flex rounded-lg bg-gray-50 hover:outline-grey-400">
                <button type="submit" class="p-3">
                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                    </svg>
                </button>
                <input type="search" class="p-3 rounded-lg text-sm text-gray-900 focus:outline-none w-full"
                    placeholder="Search..." required />
            </form>
        </div>


        <!-- Notifications -->
        <div class="flex items-center border-x-2 divider-[#544E4E] p-2">
            <div class="">
                <!-- Notification dot (animated) -->
                <span class="absolute ml-3 flex h-3 w-3">
                    <span
                        class="animate-ping absolute inline-flex h-full w-full rounded-full bg-[#A53636] opacity-75"></span>
                    <span class="relative inline-flex rounded-full h-3 w-3 bg-[#A53636]"></span>
                </span>
                <!-- Bell icon (IconsBell component) -->
                <IconsBell class="" />
            </div>
        </div>

        <!-- User profile -->
        <div class="flex items-center justify-center gap-3 px-1">
            <IconsProfile class="text-2xl text-[#544E4E]" />
            <div class="hidden md:block text-sm text-[#544E4E]">
                <p class="">John Adams</p>
                <p>johnadams@gmail.com</p>
                <p>Administrator</p>
            </div>
            <IconsDown class="hidden md:block " />
        </div>

    </div>
</template>