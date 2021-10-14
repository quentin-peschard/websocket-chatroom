import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  console.log("It works...");
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    console.log("It still works...");
    consumer.subscriptions.create({ channel: "ChatroomChannel", chat_id: id }, {
      connected() {
        console.log("Hello from the channel!")
      },
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatroomCable };
