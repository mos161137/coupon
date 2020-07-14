require('./bootstrap');

import Vue from "vue";
import axios from "axios";
import router from "./router";

import App from "./components/App"; 

import VueSocketIO from 'vue-socket.io';

Vue.component('pagination', require('laravel-vue-pagination'));

Vue.use(require('vue-moment'));

Vue.use(new VueSocketIO({
    debug: true,
    connection: 'http://192.168.1.5:1311',
    vuex: {
        actionPrefix: 'SOCKET_',
        mutationPrefix: 'SOCKET_'
    },
    options: { path: "" } //Optional options
}))

new Vue({
    el: '#app',
    router,
    render: h => h(App)
}).$mount('#app')