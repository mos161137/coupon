<template>
    <div>
        <nav>
            <div class="row">
                <div class="col-12">
                    <router-link to="/">Home</router-link>                      &nbsp;&nbsp;&nbsp;
                    <router-link to="/about">เบิก-ยืมอุปกรณ์</router-link>          &nbsp;&nbsp;&nbsp;
                    <a href="http://192.168.1.5/beacon/public/station">ติดตามสถานะ</a>            &nbsp;&nbsp;&nbsp;
                    <router-link to="/lendreport">รายการยืมอุปกรณ์</router-link>    &nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </nav>
        <main>
            <router-view>
            




            </router-view>
        </main>




    </div>
</template>


