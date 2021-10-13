import consumer from "./consumer"

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const name = messagesContainer.dataset.chatroomName;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: name }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatroomCable };
