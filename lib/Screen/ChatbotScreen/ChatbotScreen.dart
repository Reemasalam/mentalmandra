import 'package:flutter/material.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add({'message': _controller.text, 'type': 'user'});
        _messages.add({'message': _getBotResponse(_controller.text), 'type': 'bot'});
        _controller.clear();
      });
    }
  }

  String _getBotResponse(String message) {
    // Here you would add logic to generate a response from the chatbot.
    // For simplicity, we'll use a fixed response.
    return 'I\'m here to help you. How are you feeling today?';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Chatbot'),
        backgroundColor:Color(0xffDE6060),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessageItem(_messages[index]);
              },
            ),
          ),
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildMessageItem(Map<String, String> message) {
    bool isUserMessage = message['type'] == 'user';
    return Align(
      alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isUserMessage ? Color.fromARGB(255, 200, 221, 251) : Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message['message']!,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  Widget _buildInputArea() {
    return Padding(
      padding: const EdgeInsets.only(left:12,bottom:20),
      child: Row(
        children: [
          Spacer(), // Move the text field to the right
        Container(
          width: 320, // Set the desired width
          height: 50, // Set the desired height
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Type your message...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
          SizedBox(width: 8.0),
          IconButton(
            icon: Icon(Icons.send, color: Color(0xffDE6060), ),
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }
}
