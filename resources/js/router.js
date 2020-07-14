import Vue          from "vue";
import VueRouter    from "vue-router";
import PageHome     from "./pages/Home";
import PageAbout    from "./pages/About";
import Original     from "./pages/Original";
import ItemOut      from "./pages/ItemOut";
import Station      from "./pages/Station";
import LendReport   from "./pages/LendReport";

Vue.use(VueRouter);

const router = new VueRouter({
    mode: "history",
    routes: [
        {path: "/",component: PageHome},
        {path: "/about",component: PageAbout},
        {path: "/original",component: Original},
        {path: "/itemout/:id",component: ItemOut},   
        {path: "/station",component: Station},     
        {path: "/lendreport",component: LendReport},      
    ]
});
   
export default router;