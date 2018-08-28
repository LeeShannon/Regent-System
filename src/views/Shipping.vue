<template>
  <div>
    <v-toolbar flat color="white">
      <v-toolbar-title>Shipping</v-toolbar-title>
      <v-divider
        class="mx-2"
        inset
        vertical
      ></v-divider>
      <v-spacer></v-spacer>
      <v-dialog v-model="dialog" max-width="500px">
        <v-btn slot="activator" color="primary" dark class="mb-2">New Item</v-btn>
        <v-card>
          <v-card-title>
            <span class="headline">{{ formTitle }}</span>
          </v-card-title>

          <v-card-text>
            <v-container grid-list-md>
              <v-layout wrap>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.id" label="ID"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.commodity" label="Commodity"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.quantity" label="quantity"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.cost" label="cost"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.supplier" label="supplier"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.buyer" label="buyer"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.destination" label="destination"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.departure" label="departure"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.arrival" label="arrival"></v-text-field>
                </v-flex>
                <v-flex xs12 sm6 md4>
                  <v-text-field v-model="editedItem.status" label="status"></v-text-field>
                </v-flex>
              </v-layout>
            </v-container>
          </v-card-text>

          <v-card-actions>
            <v-spacer></v-spacer>
            <v-btn color="blue darken-1" flat @click.native="close">Cancel</v-btn>
            <v-btn color="blue darken-1" flat @click.native="save">Save</v-btn>
          </v-card-actions>
        </v-card>
      </v-dialog>
    </v-toolbar>
    <v-data-table
      :headers="headers"
      :items="shipping"
      hide-actions
      class="elevation-1"
    >
      <template slot="items" slot-scope="props">
        <td>{{ props.item.name }}</td>
        <td class="text-xs-right">{{ props.item.commodity }}</td>
        <td class="text-xs-right">{{ props.item.quantity }}</td>
        <td class="text-xs-right">{{ props.item.cost }}</td>
        <td class="text-xs-right">{{ props.item.supplier }}</td>
        <td class="text-xs-right">{{ props.item.buyer }}</td>
        <td class="text-xs-right">{{ props.item.destination }}</td>
        <td class="text-xs-right">{{ props.item.departure }}</td>
        <td class="text-xs-right">{{ props.item.arrival }}</td>
        <td class="text-xs-right">{{ props.item.status }}</td>
        <td class="justify-center layout px-0">
          <v-icon
            small
            class="mr-2"
            @click="editItem(props.item)"
          >
            edit
          </v-icon>
          <v-icon
            small
            @click="deleteItem(props.item)"
          >
            delete
          </v-icon>
        </td>
      </template>
      <template slot="no-data">
        <v-btn color="primary" @click="initialize">Reset</v-btn>
      </template>
    </v-data-table>
  </div>
</template>

<script>
  export default {
    data: () => ({
      dialog: false,
      headers: [
        {
          text: 'ID',
          align: 'left',
          sortable: true,
          value: 'id'
        },
        { text: 'Commodity', value: 'commodity' },
        { text: 'Quantity', value: 'quantity' },
        { text: 'Cost', value: 'cost' },
        { text: 'Supplier', value: 'supplier' },
        { text: 'Buyer', value: 'buyer'},
        { text: 'Destination', value: 'destination'},
        { text: 'Departure', value: 'departure'},
        { text: 'Arrival', value: 'arrival'},
        { text: 'Status', value: 'status'}
      ],
      shipping: [],
      editedIndex: -1,
      editedItem: {
        id: '',
        commodity: '',
        quantity: 0,
        cost: '',
        supplier: '',
        buyer: '',
        destination: '',
        departure: '',
        arrival: '',
        status: ''
      },
      defaultItem: {
        id: '',
        commodity: '',
        quantity: 0,
        cost: '',
        supplier: '',
        buyer: '',
        destination: '',
        departure: '',
        arrival: '',
        status: ''
      }
    }),

    computed: {
      formTitle () {
        return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
      }
    },

    watch: {
      dialog (val) {
        val || this.close()
      }
    },

    created () {
      this.initialize()
    },

    methods: {
      initialize () {
        this.shipping = [
          {
            id: '001',
            commodity: 'Apple',
            quantity: 1000,
            cost: 'R 5000',
            supplier: 'Apple Inc',
            buyer: 'Produce Ltd',
            destination: 'Russia',
            departure: 'Cape Town',
            arrival: '10/10/2018',
            status: 'Delayed'
          },
          {
            id: '002',
            commodity: 'Apple',
            quantity: 1000,
            cost: 'R 5000',
            supplier: 'Apple Inc',
            buyer: 'Produce Ltd',
            destination: 'Russia',
            departure: 'Cape Town',
            arrival: '10/10/2018',
            status: 'Delayed'
          }
        ]
      },

      editItem (item) {
        this.editedIndex = this.shipping.indexOf(item)
        this.editedItem = Object.assign({}, item)
        this.dialog = true
      },

      deleteItem (item) {
        const index = this.shipping.indexOf(item)
        confirm('Are you sure you want to delete this item?') && this.shipping.splice(index, 1)
      },

      close () {
        this.dialog = false
        setTimeout(() => {
          this.editedItem = Object.assign({}, this.defaultItem)
          this.editedIndex = -1
        }, 300)
      },

      save () {
        if (this.editedIndex > -1) {
          Object.assign(this.shipping[this.editedIndex], this.editedItem)
        } else {
          this.shipping.push(this.editedItem)
        }
        this.close()
      }
    }
  }
</script>
