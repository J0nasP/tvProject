<template>
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">pax</th>
                <th scope="col">dato</th>
                <th scope="col">Tidspunkt</th>
                <th scope="col">Bemærkninger</th>
                <th scope="col">Antal besøg</th>
            </tr>
        </thead>
        <tbody>
            <tr 
                v-for="reservation in reservations"
                :key="reservation.id"
            > 
            <td>{{ reservation.id }}</td>
            <td>{{ reservation.pax }}</td>
            <td>{{ reservation.date }}</td>
            <td>{{ reservation.time }}</td>
            <td>{{ reservation.remarks }}</td>
            <td>{{ reservation.total_visits }}</td>
            </tr>
        </tbody>
    </table>
</template>
<script>

    export default {
        data() {
            return {
                reservations: []
            }
        },
        created() {
            axios.get('/api/reservations')
            .then(response => {
                this.reservations = response.data.data;
            } )
            .catch(error => {
                console.log("Error", error)
            })
        },
    }
</script>