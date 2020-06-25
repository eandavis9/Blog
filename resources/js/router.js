import Vue from 'vue'
import Router from 'vue-router'
Vue.use(Router)

import blog from './components/Blogs.vue'
import main from './components/MainApp.vue';
//import main from './components/MainApp.vue'
import anotherPage from './components/DeletedBlogs.vue'


const routes = [
    {

        path : '/',
        name : 'home',
        component : main
    },
{

    path : '/deleted',
    name : 'deleted_blogs',
	component : anotherPage
}

];

export default new Router({

	mode : 'history', 
	routes
})