<template>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-12">





                <form class="form-inline row" @submit.prevent="signIn">
                    <div class="col-12">
                        <span>{{ someDate | moment("YYYY") }}</span>
                        <h5>รหัสพนักงาน : dddd</h5>
                        <input type="text" class="form-control" id="email" v-model="user_code">
                    </div>
                    
                    <!--
                    <div class="col-12">
                        <h5>รหัสผ่าน:</h5>
                        <input type="password" class="form-control" id="pwd">
                    </div>
                    -->

                    <div class="col-12">
                        <button type="submit" class="btn btn-success" @click="btn_login()">Submit</button>
                    </div>
                </form>










                    </div>
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
                
                axios.post('http://192.168.1.5/beacon/public/api/user',{

                    event: 'checkuser',
                    user_code: this.user_code,

                }).then(response=>{
                    

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
                axios.get('http://192.168.1.5/beacon/public/api/logbeacon?page=' + page)
                    .then(response => {
                    this.beacon    = response.data; 
                });
            },
            clickButton(data) {
                this.$socket.emit('chat message', data)
            },
            getUserData(){
                
                axios.get('http://192.168.1.5/beacon/public/api/logbeacon?page=1')
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
                user_code:"",
            }
        }
    }
</script>
