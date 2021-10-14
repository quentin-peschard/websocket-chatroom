import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  console.log(document)
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    console.log(channel)
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatroomCable };
