<template lang="html">
  <div class="">
    <form @submit.prevent="todoEvent">
      <div class="row">
        <div class="col-sm-7" style="margin-left: 25%">
          <input type="text" name="task" placeholder="Add a task" class="form-control input-field" v-model="newTodo">
        </div>
      </div>
    </form>
    <div class="to-dos">
      <ul>
        <li v-for="(todo, key) in todos">{{ todo }}
            <button class="my-btn-icon completed" @click="done(key)">
              <i class="fas fa-times-circle" style="color:#0B9ED5"></i>
            </button>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      newTodo: '',
      clicked: false,
      todos: []
    }
  },
  methods: {
    todoEvent: function () {
      this.todos.push(this.newTodo)
      this.newTodo = '';
    },
    done: function(key){
      this.todos.splice(key, 1)
    }
  },
  watch: {
    todos: {
      handler() {
        localStorage.setItem('todos', JSON.stringify(this.todos));
      }
    }
  },
  mounted() {
    if (localStorage.getItem('todos')) this.todos = JSON.parse(localStorage.getItem('todos'));
  }
}
</script>

<style>
.to-dos{
  height: 180px;
  overflow-y: scroll;
}

</style>
