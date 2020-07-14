<template>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-12">

                            <div v-for="bea in beacon.data">
                                <div>
                                    <img v-bind:src="`http://10.22.43.189/beacon/public/pic_index/users/avatar0${bea.id}.png`"> 
                                </div>
                                <div>รหัสพนักงาน : {{bea.id}}</div>
                                <div>ชื่อ : {{bea.name}}</div>                                
                                <div>ตำแหน่ง : {{bea.position}}</div>
                                <div>Beacon : {{bea.macbecon}}</div>
                                <div>
                                    <router-link :to="'/itemout/' + bea.id"  class="btn btn-info">
                                        เข้าระบบ
                                    </router-link>
                                </div>
                            </div>
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

            this.sockets.subscribe('viewbeacon', (data) => { 
                //$('#mos').append($('<li>').text(data));
                this.getUserData(); 
            })
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
            }
        }
    }
</script>
