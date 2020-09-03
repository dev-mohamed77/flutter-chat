import 'package:chat/models/user_model.dart';

class Message{
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread
     });
}

// YOU-CURRENT USER
final User currentUser = User(
  id: 0,
  name: "current user",
  imageUrl: "assets/images/greg.jpg"
);

// USERS
final User mohamed = User(
  id: 1,
  name: "mohamed",
  imageUrl: "assets/images/greg.jpg",
);
final User ali = User(
  id: 2,
  name: "Ali",
  imageUrl: "assets/images/james.jpg",
);
final User mahmoud = User(
  id: 3,
  name: "Mahmoud",
  imageUrl: "assets/images/john.jpg",
);
final User aya = User(
  id: 4,
  name: "Aya",
  imageUrl: "assets/images/olivia.jpg",
);
final User asmaa = User(
  id: 5,
  name: "Asmaa",
  imageUrl: "assets/images/sam.jpg",
);
final User fatma = User(
  id: 6,
  name: "Fatma",
  imageUrl: "assets/images/sophia.jpg",
);
final User emad = User(
  id: 7,
  name: "Emad",
  imageUrl: "assets/images/steven.jpg",
);

// FAVORITE CONTACTS

List <User> favorite = [ali , asmaa , emad , mahmoud , fatma];


// EXAMPLE CHATS ON HOME SCREEN

List <Message> chats =[
  Message(
    sender: mohamed,
    time: "5.30 PM",
    text: "السلام عليكم , عامل ايه",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: asmaa,
    time: '4:30 PM',
    text: " السلام عليكم , عامل ايه , بتعمل ايه النهارده؟",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: emad,
    time: '3:30 PM',
    text: 'السلام عليكم , عامل ايه , بتعمل ايه النهارده؟',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: fatma,
    time: '2:30 PM',
    text: 'السلام عليكم , عامل ايه , بتعمل ايه النهارده؟',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mahmoud,
    time: '1:30 PM',
    text: 'السلام عليكم , عامل ايه , بتعمل ايه النهارده؟',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: aya,
    time: '12:30 PM',
    text: 'السلام عليكم , عامل ايه , بتعمل ايه النهارده؟',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ali,
    time: '11:30 AM',
    text: 'السلام عليكم , عامل ايه , بتعمل ايه النهارده؟',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE CHATS IN CHAT SCREEN

List <Message> messages = [
  Message(
    sender: mohamed,
    time: "5.30 PM",
    text: "السلام عليكم , عامل ايه",
    isLiked: true,
    unread: true
  ),
  Message(
    sender: currentUser,
    time: "5.35 PM",
    text: "وعليكم السلام , تمام الحمد لله",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: mohamed,
    time: "5:40 PM",
    text: "بتعمل ايه دلوقت؟",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mohamed,
    time: "5:45 PM",
    text: "ماتيجى نروح النادى نلعب كوره",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: "5:50 PM",
    text: "تمام , انا بقالى فتره ملعبتش كوره خمس دقايق واكون عندك",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mohamed,
    time: "5:55 PM",
    text: "خلاص تمام , هستناك",
    isLiked: false,
    unread: true,
  ),
];