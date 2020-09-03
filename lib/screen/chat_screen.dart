import 'package:chat/models/message_model.dart';
import 'package:chat/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(Message message , bool isMe) {
    final Container myMessage = Container(
          margin: isMe ?  EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: 80,
          ) : EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 17),
          width: MediaQuery.of(context).size.width *0.75,
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe ? BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ) : BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message.time,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              ),
              Text(message.text,
              style: TextStyle(
                // color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        );
      if(isMe){
        return myMessage;
      }  
    return Row(
      children: [
        myMessage,
        IconButton(
                icon: message.isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.red,
                onPressed: () {}), 
      ],
    );
  }

_buildMessageComposer(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8),
    height: 70,
    color: Colors.white,
    child: Row(
      children: [
        IconButton(
          icon: Icon(Icons.photo),
          iconSize: 25,
          color: Theme.of(context).primaryColor,
          onPressed: (){}),
        Expanded(
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value){},
            decoration: InputDecoration.collapsed(
              hintText: "Send a Message ......."
            ),
          )
        ),
        IconButton(
          icon: Icon(Icons.send),
          iconSize: 25,
          color: Theme.of(context).primaryColor,
          onPressed: (){}),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.user.name,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
            IconButton(
                icon: Icon(Icons.more_horiz),
                iconSize: 30,
                color: Colors.white,
                onPressed: () {}),
          ],
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: ListView.builder(
                    // reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context , int index){
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message , isMe);
                    }),
                ),
              ),
            ),
            _buildMessageComposer()
          ],
        ),
      ),
      
    );
  }
}