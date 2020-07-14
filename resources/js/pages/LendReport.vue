<template>        
        <div class="card">
            <div class="card-body">
                <div class="row">

                    <div class="col-12">
                        รายการยืมคืนอุปกรณ์
                    </div>

                    <div class="table-responsive">
                        <table class="table no-wrap p-table">
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
</template>



<script>
    export default{
        mounted() {
            //this.lenditemall();
        },

        methods: {
            lenditemall(){
                axios.post('coupon/public/api/user',{
                    event: 'lenditemall',
                }).then(response=>{
                    this.item    = response.data; 
                });
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