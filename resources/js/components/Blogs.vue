<template>
<div>
 <h2>What's Happening?</h2><hr>

<form @submit.prevent='searchBlogs'>
<div class="input-group mb-3">
  <input type="text" class="form-control" name='search' placeholder="Search for keywords" v-model='search'>
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="submit">Search</button>
  </div>
  
</div>
</form>
<!--<router-link :to="{name : 'deleted_blogs'}">Deleted Blogs</router-link>-->
<form class='mb-3' @submit.prevent="submitBlog" enctype="multipart/form-data"> 

    <div class='form-group'>
        <input type="text" class="form-control" name='title' placeholder='Title' v-model='blog.title' />
        <textarea class="form-control" name='body' placeholder='Body' v-model= "blog.body"></textarea>
        <input type='file' @change='onFileSelected($event)' name='file' ref="fileInput" accept="image/*">
        <div class='card card-body' v-if='blog.filepath'>
        <img v-bind:src="blog.filepath">
        </div>
        <button type='submit' class='btn btn-light btn-block'>Submit</button>
    </div>

</form>
<div class='form-group'>
</div>
<nav>
    <div><button class='btn btn-primary' v-if="show_deleted ===false" @click='showDeleted()'>Show Deleted Blogs</button>
    <button class='btn btn-primary' v-if='show_deleted === true' @click='fetchBlogs()'>Show Blogs</button>
    </div>
  <selection @change='fetchBlogs()'></selection>
  <ul class="pagination">
    <li v-bind:class="[{disabled : !pagination.prev_page_url}]" 
    class="page-item" @click='fetchBlogs(pagination.prev_page_url)'>
        <a class="page-link" href="#">Previous</a>
    </li>
    <li>
        <a class='page-link text-dark'>Page {{pagination.current_page}} of {{pagination.last_page}}</a>
    </li>
    <li v-bind:class="[{disabled : !pagination.next_page_url}]" class="page-item"
    @click='fetchBlogs(pagination.next_page_url)'>
        <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

 <div class='card card-body' v-for="blog in blogs" v-bind:key='blog.id'>
     <h3>{{blog.title}}</h3>
     <p>{{blog.body}}</p><hr>
        <div class='card card-body' v-if='blog.filepath'>
        <img v-bind:src="blog.filepath">
        </div>
     <button v-if="blog.is_deleted ==0" class='btn btn-warning mb-2' @click='editBlog(blog)'>Edit</button>
     <button v-if="blog.is_deleted==0" class='btn btn-danger' @click='deleteBlog(blog.id)'>Delete</button>
     <button v-if="blog.is_deleted==1" class='btn btn-warning' @click='restoreBlog(blog.id)'>Restore</button>
</div>
</div>

</template>

<script>
import axios from 'axios';

export default {
    
    data () {

        return {

            blogs : [],
            blog : {

                id : '',
                title :'',
                body : '',
                filepath : '',
                blog_id : '',
                is_deleted : ''
            },
            
            pagination : {},
            edit : false,
            search : '',
            file : null,
            show_deleted : false,
            deleted_blogs : []
           // fileImage : ''
        }
    },

    created() {

        this.fetchBlogs();
    },

    methods : {

        fetchBlogs(page_url, sortBy=''){

            //console.log(sortBy)
           let vm = this;
            page_url = page_url || '/api'

            axios.get(page_url, {

                params : {

                    sortBy: sortBy
                }
            })
            .then(res =>  {

                //console.log(res)
                this.show_deleted = false;
                this.blogs = res.data.data;
                vm.makePagination(res.data.meta, res.data.links);

            })
        },

        makePagination(meta, links){

             let pagination = {

                 current_page : meta.current_page,
                 last_page : meta.last_page,
                 next_page_url : links.next,
                 prev_page_url : links.prev
             };

             this.pagination = pagination;
        },

        onFileSelected (event){

            this.file = event.target.files[0];
            //console.log(this.file)
        },
        submitBlog(){

             let fd = new FormData();
             fd.append('file', this.file);
             fd.append('title', this.blog.title);
             fd.append('body', this.blog.body);

            // console.log(fd)

            if(this.edit === false){//add   

                if(confirm('Are you sure you want to add this?')){
                
                    axios.post('/api', fd, {

                      //  headers : {'Content-Type' : 'multipart/form-data'}
                    })
                    .then(res =>{

                        this.$refs.fileInput.value='';
                        //input.type = 'file';
                        console.log(res.data)
                        this.blog.title='';
                        this.blog.body='';
                        
                        alert('Blog Added Successfully');
                        this.fetchBlogs();
                    })
                }

            }else{ //update

                fd.append('blog_id', this.blog.id);
                fd.append('_method', 'PUT');
                
                if(confirm('Are you sure you want to update this?')){

                   axios.post('/api', fd, {
                        //headers : {'Content-Type' : 'multipart/form-data'}
                    })
                    .then(res =>{

                        //console.log(res.data)
                        this.blog.title='';
                        this.blog.body='';
                        this.blog.filepath = '';
                        this.$refs.fileInput.value='';
                        
                        alert('Blog Updated Successfully');
                        this.fetchBlogs();
                    })
                }

            }
        },
        deleteBlog(id){

            if(confirm('Are You Sure? ')){

                axios.delete(`api/${id}`)
                .then(res =>{

                    
                    alert('Blog Deleted Successfully');
                    this.fetchBlogs();
                });
                /*fetch(`/api/${id}`, {

                    method : 'delete'
                })
                .then(res => res.json())
                .then(data => {

                    alert('Blog Deleted Successfully');
                    this.fetchBlogs();
                })
                .catch(err=> console.log('error'))*/
            }
        },
        editBlog(blog){

            this.edit = true;
            this.blog.id = blog.id;
            this.blog.title = blog.title;
            this.blog.body = blog.body;
            this.blog.filepath = blog.filepath;
            this.blog.blog_id = blog.id;

        },

        searchBlogs(){

            let vm = this;
            axios.post('/api/filter', {

                headers : {'Content-Type' : 'application/json'},
                search : this.search

            })
            .then(res =>{

                console.log(res.data.data)
                this.blogs = res.data.data;
               vm.makePagination(res.data.meta, res.data.links);
            })
        },

        showDeleted(page_url){

            
            let vm = this;
            page_url = page_url || '/api/show_deleted'

            axios.get(page_url)
            .then(res =>  {
                this.show_deleted = true;
               // console.log(res)

                if(res){
                
                this.blogs = res.data.data;
                vm.makePagination(res.data.meta, res.data.links);

                }

            })
        },

        restoreBlog(id){
            console.log(id)

            if(confirm('Restore?')){
                axios.put(`/api/restore/${id}`, {

                headers : {'Content-Type' : 'application/json'}

            })
            .then(res =>{
                alert('Successfully Restored');
                this.showDeleted();

            })
            }
            
        }
    }
}
</script>