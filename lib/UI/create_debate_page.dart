import 'package:debatedais/domain/thesis_statement_entity.dart';
import 'package:debatedais/state/thesis_statement_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider

import '../domain/argument_entity.dart';
import '../domain/debate_entity.dart';
import '../state/debate_provider.dart';

class CreateDebatePage extends StatefulWidget {
  const CreateDebatePage({super.key});

  @override
  State<CreateDebatePage> createState() => _CreateDebatePageState();
}

class _CreateDebatePageState extends State<CreateDebatePage> {
  final TextEditingController _thesisStatementController =
      TextEditingController();

  // Add a variable to store the currently logged-in user's ID
  String? currentUserId;

  @override
  void initState() {
    super.initState();

    // Use Firebase Authentication to get the current user
    User? user = FirebaseAuth.instance.currentUser;

    // Check if a user is logged in
    if (user != null) {
      // Get the user's ID
      currentUserId = user.uid;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Debate'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.deepPurple.shade100,
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: const [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 600,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(height: 16),
                    TextField(
                      controller: _thesisStatementController,
                      decoration: const InputDecoration(
                          labelText: 'Craft your debate topic here'),
                    ),
                    const SizedBox(height: 80),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          //TODO: finish filling out this debate object
                          var debate = ThesisStatement(
                              openDebateId: currentUserId!,
                              topic: _thesisStatementController.text,
                              proposer: "currentlyloggedinuser");

                          // Use the provider to add the debate to list of debates
                          Provider.of<ThesisStatementProvider>(context,
                                  listen: false)
                              .addOpenDebate(debate);

                          // Navigate back to the previous screen or perform other actions
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: const Text('Create Debate'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Crafting a Compelling debate topic:",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Engaging in meaningful discussions begins with a well-crafted"
                        " debate topic. Here's some advice to help you shape topics "
                        "that inspire insightful conversations:",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    const ListTile(
                      title: Text("Clarity is key"),
                      subtitle: Text(
                        "Ensure your topic is clear, concise, and easy to understand."
                        " Ambiguous or overly complex topics can lead to confusion "
                        "and hinder productive discourse. Aim for clarity to spark"
                        " interest and invite participants to delve into the "
                        "heart of the matter.",
                      ),
                    ),
                    const ListTile(
                      title: Text("Balance and Neutrality:"),
                      subtitle: Text(
                          "Strive for balance in your topic to encourage a fair exchange of ideas. Avoid loaded language or bias that might alienate certain viewpoints. A neutral stance invites diverse perspectives, fostering a more inclusive and enriching debate environment."),
                    ),
                    const ListTile(
                      title: Text("Relevance to Your Audience:"),
                      subtitle: Text(
                        "Consider the interests and backgrounds of the Debate Dias community. Tailor your topic to resonate with a broad audience, ensuring its relevance across various fields and experiences. A topic with universal appeal can attract a wider range of participants.",
                      ),
                    ),
                    const ListTile(
                      title: Text("Open-Ended Nature:"),
                      subtitle: Text(
                        "Frame your topic in an open-ended manner to encourage exploration and nuanced discussion. Avoid yes/no questions and instead pose inquiries that invite participants to analyze, evaluate, and share their unique insights. An open-ended topic sparks curiosity and encourages depth in responses.",
                      ),
                    ),
                    const ListTile(
                      title: Text("Connection to Real-World Issues:"),
                      subtitle: Text(
                        "Make your topic relevant to current events or broader societal issues. Tying your debate topic to real-world concerns not only keeps the conversation timely but also encourages users to consider the practical implications of their arguments.",
                      ),
                    ),
                    const ListTile(
                      title: Text("Room for Divergence:"),
                      subtitle: Text(
                          "Construct your topic to allow for a range of perspectives. A good debate topic should invite disagreement and varied viewpoints, promoting a lively and intellectually stimulating exchange. Embrace the diversity of thought within the Debate Dias community."),
                    ),
                    const ListTile(
                      title: Text("Avoiding Overused Tropes:"),
                      subtitle: Text(
                        "Explore fresh and innovative topics to keep the discussions dynamic. Steer clear of clichés or overly common debates unless you can bring a unique angle to the table. Originality fosters engagement and captivates the interest of participants.",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up text controllers when the widget is disposed

    _thesisStatementController.dispose();
    super.dispose();
  }
}
