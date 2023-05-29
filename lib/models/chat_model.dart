
class ChatModel {
  final String name;
  final bool online;
  final bool story;
  final String image;

  ChatModel({required this.name, required this.online, required this.story, required this.image});
}





 List<ChatModel>chats = [
  ChatModel(
    image: "https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/333447932_549671063631140_3746730517902871524_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=pKL18stN9DMAX-536CC&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDS2LHQFm9QnUZKpl0aN9cCk9xLhHvlGp_BLaUqZVuixA&oe=6479E466",
    name: "Rojan Parajuli",
    online: true,
    story: true,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Rondeau",
    online: true,
    story: false,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Valerie",
    online: true,
    story: true,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Mary",
    online: false,
    story: false,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Angie",
    online: true,
    story: true,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Anne",
    online: false,
    story: true,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Fineas",
    online: true,
    story: false,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Atikh",
    online: true,
    story: true,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Campbell",
    online: false,
    story: true,
  ),
  ChatModel(
    image: "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    name: "Maya",
    online: false,
    story: true,
  ),
];

// users message list
List userMessages = [
  {
    "id": 1,
    "name": "Rojan Parajuli",
    "img": "https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/333447932_549671063631140_3746730517902871524_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=pKL18stN9DMAX-536CC&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDS2LHQFm9QnUZKpl0aN9cCk9xLhHvlGp_BLaUqZVuixA&oe=6479E466",
    "online": true,
    "story": true,
    "message": "How are you doing?",
    "created_at": "1:00 pm"
  },
  {
    "name": "Rondeau",
    "img": "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    "online": true,
    "story": false,
    "message": "Long time no see!!",
    "created_at": "12:00 am"
  },
  {
    "id": 3,
    "name": "Valerie",
    "img": "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    "online": true,
    "story": true,
    "message": "Glad to know you in person!",
    "created_at": "3:30 pm"
  },
  {
    "id": 4,
    "name": "Anne",
    "img": "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    "online": false,
    "story": false,
    "message": "I'm doing fine and how about you?",
    "created_at": "9:00 am"
  },
  {
    "id": 5,
    "name": "Fineas",
    "img": "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    "online": true,
    "story": false,
    "message": "What is your real name?",
    "created_at": "11:25 am"
  },
  {
    "id": 6,
    "name": "Maya",
    "img": "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80",
    "online": false,
    "story": true,
    "message": "I'm happy to be your friend",
    "created_at": "10:00 am"
  },
];