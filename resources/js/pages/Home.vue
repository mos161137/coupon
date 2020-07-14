<template>

    <!--
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-12">

                    </div>
                </div>
            </div>
        </div>
    </div>
    -->
        <div class="row">

                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">ยืม-คืนอุปกรณ์</h5>
                                    <div class="card-body p-0">






                <form class="form-inline row" @submit.prevent="signIn">
                    <div class="col-12"><br></div>
                    <div class="col-1"></div>
                    <div class="col-10" align="center">
                        <input type="text" style="width: 100%;" class="form-control" placeholder="username" v-model="username" width="100%">
                    </div>
                    <div class="col-1"></div>



                    <div class="col-1"></div>
                    <div class="col-10" align="center">
                        <input type="text" style="width: 100%;" class="form-control" placeholder="password" v-model="password" width="100%">
                    </div>
                    <div class="col-1"></div>

                    <!--
                    <div class="col-12">
                        <h5>รหัสผ่าน:</h5>
                        <input type="password" class="form-control" id="pwd">
                    </div>
                    -->
                    <div class="col-1"></div>
                    <div class="col-10">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="submit" class="btn btn-success btn-block" @click="btn_login()">Submit</button>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <div class="col-1"></div>
                </form>



                                        <!--
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0">#</th>
                                                        <th class="border-0">Image</th>
                                                        <th class="border-0">Product Name</th>
                                                        <th class="border-0">Product Id</th>
                                                        <th class="border-0">Quantity</th>
                                                        <th class="border-0">Price</th>
                                                        <th class="border-0">Order Time</th>
                                                        <th class="border-0">Customer</th>
                                                        <th class="border-0">Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="assets/images/product-pic.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #1 </td>
                                                        <td>id000001 </td>
                                                        <td>20</td>
                                                        <td>$80.00</td>
                                                        <td>27-08-2018 01:22:12</td>
                                                        <td>Patricia J. King </td>
                                                        <td><span class="badge-dot badge-brand mr-1"></span>InTransit </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="assets/images/product-pic-2.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #2 </td>
                                                        <td>id000002 </td>
                                                        <td>12</td>
                                                        <td>$180.00</td>
                                                        <td>25-08-2018 21:12:56</td>
                                                        <td>Rachel J. Wicker </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="assets/images/product-pic-3.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #3 </td>
                                                        <td>id000003 </td>
                                                        <td>23</td>
                                                        <td>$820.00</td>
                                                        <td>24-08-2018 14:12:77</td>
                                                        <td>Michael K. Ledford </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="assets/images/product-pic-4.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #4 </td>
                                                        <td>id000004 </td>
                                                        <td>34</td>
                                                        <td>$340.00</td>
                                                        <td>23-08-2018 09:12:35</td>
                                                        <td>Michael K. Ledford </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="9"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        -->




                                    </div>
                                </div>
                            </div>






    </div>






</template>


<script>
    export default{
        mounted() {
            this.getResults();
            


            // ห้ามลบ เดี๊ยวลืม
            // this.sockets.subscribe('viewbeacon', (data) => { 
            //     //$('#mos').append($('<li>').text(data));
            //     this.getUserData(); 
            // })
        },

        sockets: {
            connect() {
                console.log('socket connected');
            },
            customEmit(data) {
                console.log('this method was fired by the socket server. eg: io.emit("customEmit", data)')
            },
        },
        methods: {

            signIn(){

            },

            btn_login(){
                

                alert( this.username +' กกก '+ this.password)

                axios.post('coupon/public/api/user',{

                    event: 'checkuser',
                    username: this.username,
                    password: this.password,

                }).then(response=>{
                    
                    alert(response.data);

                    if(response.data==0){
                        alert('ไม่มีรหัสพนักงานนี้ในระบบ');
                    }else{
                        //alert('สำเร็จ');
                        //router.push("itemout");
                        //router.go("/lendreport");
                        this.$router.push('itemout/'+this.user_code);
                    }
                    // this.itemall();
                    // this.user_getitem();
                });




            },
            randomNumber(){
                return Math.floor(Math.random() * (10 - 1 + 1)) + 1;
            },
            getResults(page = 1) {
                axios.get('http://10.22.43.189/beacon/public/api/logbeacon?page=' + page)
                    .then(response => {
                    this.beacon    = response.data; 
                });
            },
            clickButton(data) {
                this.$socket.emit('chat message', data)
            },
            getUserData(){
                
                axios.get('http://10.22.43.189/beacon/public/api/logbeacon?page=1')
                .then(response=>{
                    //alert(JSON.stringify(response.data));  
                    this.beacon    = response.data; 
                });
            },
        },

        data(){    
            return{
                beacon:{},
                mess: "",
                username:"", 
                password:"",
            }
        }
    }
</script>
