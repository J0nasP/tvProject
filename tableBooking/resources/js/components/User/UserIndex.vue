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
            <td>{{ index + 1 }}</td>
            <td>{{ user.name }}</td>
            <td>{{ user.email }}</td>
            <td>{{ user.updated_at }}</td>
            <td>{{ user.created_at }}</td>
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
            axios.get('/api/user')
            .then(response => {
                this.users = response.data.data;
            } )
            .catch(error => {
                console.log("Error", error)
            })
        },
    }
</script>