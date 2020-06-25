require('./bootstrap');

//import router from './router.js';
window.Vue = require('vue');


//Vue.use(VueRouter);

Vue.component('main-app',require('./components/MainApp.vue').default);
Vue.component('blogs',require('./components/Blogs.vue').default);
Vue.component('deleted', require('./components/DeletedBlogs.vue').default);
Vue.component('navbar', require('./components/Navbar.vue').default);

Vue.component('selection', require('./components/SelectComponents.vue').default);


const app = new Vue({

	el : '#app'
	//router : router
});