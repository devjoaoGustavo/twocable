App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    $('#content').val('');
    return $('#messages').append(this.addMessage(data));
  },

  addMessage: function(data) {
    return '<p><b>User: </b>'+data.message+'<p>';
  }
});

