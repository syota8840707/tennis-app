import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<p>${data.username}  :  ${data.content.message}</p>`;
    const messages = document.getElementById('messages');
    const newMessage = document.getElementById('content');
    console.log(newMessage.value)
    messages.insertAdjacentHTML('afterbegin', html);
    newMessage.value='';
  }
});
