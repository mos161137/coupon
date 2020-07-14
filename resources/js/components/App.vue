<template>


    <div>



                        <div class="row">
                            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <router-link to="/">
                                        <h5 class="text-muted">เบิก-คืนอุปกรณ์</h5>
                                            <div class="metric-value d-inline-block">
                                                <img src="pic_index/aaa.png" width="100px">
                                            </div>
                                        </router-link>
                                    </div>
                                    <div id="sparkline-revenue"></div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <a href="http://192.168.1.5/beacon/public/station">
                                        <h5 class="text-muted">ติดตามสถานะ</h5>
                                        <div class="metric-value d-inline-block">
                                            <img src="pic_index/seo.png" width="100px">
                                        </div>
                                    </a>
                                    </div>
                                    <div id="sparkline-revenue2"></div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <router-link to="/lendreport">
                                            <h5 class="text-muted">รายการยืมอุปกรณ์</h5>
                                            <div class="metric-value d-inline-block">
                                                <img src="pic_index/p2p.png" width="100px">
                                            </div>
                                        </router-link>
                                    </div>
                                    <div id="sparkline-revenue3"></div>
                                </div>
                            </div>
                        </div>
                        
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->


                    <main>
                        <router-view>
                        </router-view>
                    </main>



                        


                    <br><br><br><br><br><br><br><br><br><br><br>



    </div>



 



</template>

<script>
    export default{
        mounted() {

            //this.$router.push('../../');
        },
        methods: {

        },

        data(){    
            return{
                beacon:{},
                mess: "",
                user_code:"", 
            }
        }
    }
</script>

