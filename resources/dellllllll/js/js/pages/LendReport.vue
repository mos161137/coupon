<template>        
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-12">
                                รายการสิ่งของ
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <table border="1">
                                        <tr>
                                            <th>#</th>
                                            <th>พนักงาน</th>
                                            <th>อุปกรณ์</th>
                                            <th>เวลาเบิก</th>
                                            <th>เวลาคืน</th>
                                        </tr>

                                        <tr v-for="it in item.data">
                                            <td>{{it.lend_id}}</td>
                                            <td>{{it.name}}</td>
                                            <td>{{it.item_name}}</td>
                                            <td>{{it.lend_timeout}}</td>
                                            <td>{{it.lend_timein}}</td>    
                                        </tr>

                                    </table>
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
            this.lenditemall();
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
            lenditemall(){
                axios.post('http://192.168.1.5/beacon/public/api/user',{
                    event: 'lenditemall',
                }).then(response=>{
                    this.item    = response.data; 
                });
            }, 
            clickButton(data) {
                this.$socket.emit('chat message', data)
            },
        },

        data(){    
            return{
                item:{},
                mess: "",
            }
        }
    }
</script>