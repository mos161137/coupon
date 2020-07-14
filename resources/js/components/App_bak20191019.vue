<template>
        <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="row">
                <div class="col-6 divborder">
                <img src="pic_index/map.png" width="650">
                </div>

                <div class="col-6">
    

        <input v-model="mess" autocomplete="off" />
        <button class="btn btn-default" v-on:click="clickButton(mess)">Send</button>      



                    <h3 id="roomname"></h3>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    Name
                                </th>
                                <th>
                                    Position
                                </th>
                                <th>
                                    เวลา
                                </th>
                            </tr>
                        </thead>
                        <tbody id="showstaff">

            <tr>
                <td>
                    ssss
                </td>
                <td>
                    <a class="staff" staff="ddd">
                    bbb
                    </a>
                </td>
                <td>
                    aaa
                </td>
                <td>
                    <button 
                    class='btn btn-success'  
                    data-toggle='modal' 
                    data-target='#myModal' 
                    type='submit' 
                    staffname='ddd'
                    id='ddd'
                    >
                        จ่ายงาน
                    </button>
                </td>
            </tr>
                        </tbody>
                    </table>


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
        <nav>
            <ul>
                <li>
                    <router-link to="/">Home</router-link>
                </li>

                <li>
                    <router-link to="/about">About</router-link>
                </li>
            </ul>
        </nav>

        <main>
            <router-view></router-view>
        </main>



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
                //alert(this.host);   
                axios.get('http://27.254.59.19:8090/beacon/public/api/logbeacon?page=' + page)
                    .then(response => {
                    this.beacon    = response.data; 
                });
            },

            clickButton(data) {
                
                this.$socket.emit('chat message', data)
            },
            getUserData(){
                
                axios.get('http://27.254.59.19:8090/beacon/public/api/logbeacon?page=1')
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
