<template>
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">name</th>
                <th scope="col">Email</th>
                <th scope="col">Updated</th>
                <th scope="col">Created at</th>
            </tr>
        </thead>
        <tbody>
            <tr 
                v-for="user in users"
                :key="user.id"
            > 

            </tr>
        </tbody>
    </table>
</template>
<script>
    export default {
        data() {
            return {
                users: []
            }
        },
        created() {
            // TODO AJAX request
        },
    }
</script>