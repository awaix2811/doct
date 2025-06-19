import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  // Sample messages (You can replace this with dynamic data from a database)
  final List<Map<String, String>> messages = [
    {"sender": "doctor", "message": "Hello! How can I assist you today?"},
    {"sender": "user", "message": "Hi, I have a question about my symptoms."},
    {"sender": "doctor", "message": "Sure, tell me more about your symptoms."},
  ];

  // Placeholder image paths for doctor and user
  final String doctorImage = 'assets/images/g1.png'; // Replace with actual path
  final String userImage = 'assets/images/img1.png'; // Replace with actual path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat with Doctor"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Message List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isUser = message["sender"] == "user";
                final messageText = message["message"] ?? ""; // Fallback to empty string if null

                // Determine the image based on the sender
                final imagePath = isUser ? userImage : doctorImage;

                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                      color: isUser ? Colors.blueAccent : Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // CircleAvatar for sender's picture
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(imagePath),
                        ),
                        const SizedBox(width: 10),
                        // Message Text
                        Expanded(
                          child: Text(
                            messageText,
                            style: TextStyle(
                              color: isUser ? Colors.white : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Message Input Section
          Padding(
            padding: const EdgeInsets.only(bottom: 30,left: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: IconButton(
                    icon: const Icon(Icons.send),
                    color: Colors.green,
                    onPressed: () {
                      // Add logic to send message here
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
