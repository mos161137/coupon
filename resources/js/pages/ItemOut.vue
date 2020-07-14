<template>
    <div>
        <div class="card">
            <div class="card-body">

                        <div class="row" v-for="u in user.data">
                            <div class="col-4">
                                <img v-bind:src="`http://10.22.43.189/beacon/public/pic_index/icon_user.jpg`" width="100px">
                                <br>รหัสพนักงาน : {{u.id}}
                                <br>ชื่อ : {{u.name}}                             
                                <br>ตำแหน่ง : {{u.position}}
                            </div>

                        <div class="col-8">

                        <div class="table-responsive">
                        <table class="table no-wrap p-table">
                                <tr>

                                    <th>อุปกรณ์</th>
                                    <th>mac</th>
                                    <th>aaa</th>
                                    <th>bbb</th>
                                    <th width="30px">คืน</th>
                                </tr>

                                <tr v-for="uit in userallitem.data">
                                    <td>{{uit.item_name}}</td>
                                    <td>{{uit.item_mac}}</td>
                                    <td>{{uit.macid}}</td>
                                    <td>{{uit.rssibeacon}}</td>
                                    <td>
                                        <div v-if="uit.rssibeacon < 60">
                                            <div v-if="uit.macid === '0001'">
                                                <button type="button" class="btn btn-success" @click="item_in(uit.item_id)">
                                                    คืน
                                                </button>
                                            </div>                                             
                                        </div>
                                    </td>      
                                </tr>
                            </table>
                        </div>
                        </div>




                        </div>





            </div>
        </div>

        <div class="card">
            <div class="card-body">

                        <div class="row">
                            <div class="col-12">
                                รายการสิ่งของ
                            </div>

                            
                        <div class="table-responsive">
                        <table class="table no-wrap p-table">
                                        <tr>
                                            <th>#</th>
                                            <th>อุปกรณ์</th>
                                            <th>mac</th>
                                            <th width="30px">เบิก</th>
                                        </tr>

                                        <tr v-for="it in item.data">
                                            <td>{{it.item_id}}</td>
                                            <td>{{it.item_name}}</td>
                                            <td>{{it.item_mac}}</td>
                                            <td>
                                                <button type="button" class="btn btn-success" @click="item_out(it.item_id)">
                                                    เบิก
                                                </button>                                               
                                            </td>      
                                        </tr>

                                    </table>
                                </div>

                    
                </div>
            </div>
        </div>
    </div>
</template>
 

<script>

    




    export default{
        mounted() { 
            //alert(this.$route.params.id);
            this.userdata(this.$route.params.id);
            this.itemall();
            this.user_getitem();
            this.startInterval();
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
            startInterval: function () {
               setInterval(() => {
                    this.user_getitem();
                    this.itemall();
               }, 3000)
            },

            userdata(uid){
                axios.post('http://10.22.43.189/beacon/public/api/user',{
                    event: 'userdata',
                    uid: uid,
                }).then(response=>{
                    this.user    = response.data; 
                });
            },
            itemall(){
                axios.post('http://10.22.43.189/beacon/public/api/user',{
                    event: 'itemall',
                }).then(response=>{
                    this.item    = response.data; 
                });
            }, 
            user_getitem(){
                axios.post('http://10.22.43.189/beacon/public/api/user',{
                    event: 'user_getitem',
                    uid: this.$route.params.id,
                }).then(response=>{
                    this.userallitem    = response.data;
                });
            },             
            item_out(itemID){

                axios.post('http://10.22.43.189/beacon/public/api/user',{
                    event: 'item_out',
                    itemID: itemID,
                    uid: this.$route.params.id,
                }).then(response=>{
                    this.itemall();
                    this.user_getitem();
                });
            },
            item_in(itemID){
                axios.post('http://10.22.43.189/beacon/public/api/user',{
                    event: 'item_in',
                    itemID: itemID,
                    uid: this.$route.params.id,
                }).then(response=>{
                    this.itemall();
                    this.user_getitem();
                });
            },  
        },

        data(){    
            return{
                user:{},
                item:{},
                userallitem:{},
            }
        }
    }
</script>