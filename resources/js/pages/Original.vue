<template>
        <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="row">
                <div class="col-12">
    
        <input v-model="mess" autocomplete="off" />
        <button class="btn btn-default" v-on:click="clickButton(mess)">Send</button>

        <table class="table table-striped">
            <tr>
                <th>H.N.</th>
                <th>ชื่อ</th>
                <th>นามสกุล</th>
                <th>ชื่อเล่น</th>
                <th>เพศ</th>
            </tr>
            <tr v-for="bea in beacon.data">
                <td>{{bea.id}}</td>
                <td>{{bea.macid}}</td>
                <td>{{bea.macbecon}}</td>
                <td>{{bea.rssibeacon}}</td>
                <td>{{bea.datetime}}</td>
            </tr>
        </table>
        <ul id="mos"></ul>
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
            }
        }
    }
</script>
