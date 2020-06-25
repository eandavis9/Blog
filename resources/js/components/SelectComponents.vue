<template>
    <select @change='sortBy' v-model='selected'>
        <option value='' disabled>Sort By</option>
        <option value='date-asc'>Sort By Date Asc</option>
        <option value=date-desc>Sort By Date Desc</option>>
        <option value=title-asc>Sort By Title Name Asc</option>
        <option value=title-desc>Sort By Title Name Desc</option>
    </select>
</template>

<script>
export default {
    data (){

        return{

            selected : ''
        }
    },

    methods : {

        sortBy(){
            this.$parent.fetchBlogs('',this.selected);
           // console.log(1)
        }
    }
}
</script>