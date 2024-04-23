<template>
    <div>
        <tr>
            <th
                v-for="(header, i) in headers"
                :key="`${header}${i}`"
                class="header-item"
                >
                {{ header }}
            </th>
        </tr>
        <tr
            v-for="entity in data"
            :key="`entity-${entity.name}`"
            class="table-rows"
        >   
            <td
                v-for="(header, i ) in headers"
                :key="`${header}-${i}`"
            ></td>
            <slot :name="`columns${i}`" :entity="entity" ></slot>
        </tr>
    </div>
</template>

<script>
import Vue from 'vue'

export default Vue.extend({
    name: "Table",
    props: {
        headers: {
            type: Array,
            required: true,
        },
        data:{
            type: Array,
            required: true,
        },
    },
})
</script>