App.users = App.cable.subscriptions.create('UsersChannel', {
  received: function(data) {
    $('#username').val('');
    $('#login').hide();
    $('#chat').show();

    return $('#users').append(this.addUser(data.username));
  },

  addUser: function(data) {
    return '<p>'+data+'</p>';
  }
});
