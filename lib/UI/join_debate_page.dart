import 'package:debatedais/domain/thesis_statement_entity.dart';
import 'package:debatedais/state/thesis_statement_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JoinDebatePage extends StatefulWidget {
  const JoinDebatePage({
    super.key,
  });

  @override
  State<JoinDebatePage> createState() => _JoinDebatePageState();
}

class _JoinDebatePageState extends State<JoinDebatePage> {
  late ThesisStatement openDebate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join the Debate"),
      ),
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Consumer<ThesisStatementProvider>(
                      builder: (context, provider, child) {
                        openDebate = provider.selectedOpenDebate;
                        return Text(
                          provider.selectedOpenDebate.topic,
                          style: Theme.of(context).textTheme.headlineSmall,
                          // softWrap: true,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Choose a perspective",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/active_debate_affirmative');
                      },
                      child: Card(
                        elevation: 10,
                        color: Colors.deepPurple[200],
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Affirmative",
                                    softWrap: true,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Tap here to take the affirmative "
                                    "side of the debate, supporting the resolution "
                                    "or proposition.",
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/active_debate_affirmative');
                      },
                      child: Card(
                        elevation: 10,
                        color: Colors.deepPurple[200],
                        child: const SizedBox(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Negative",
                                      softWrap: true,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Tap here to take the negative side of the debate, opposing the resolution or proposition. ",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: AffirmativeCard(),
                    width: MediaQuery.of(context).size.width * .8,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: NegativeCard(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AffirmativeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Benefits of Going First:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '1. Setting the Tone: The first speaker has the opportunity to set the tone for the debate. They can establish a strong presence, capture the audience\'s attention, and frame the issues in a way that supports their position.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '2. Defining the Narrative: The first speaker gets to define the narrative and shape the debate\'s focus. They can present their arguments in a way that guides the audience\'s understanding and perception of the motion.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '3. Initiating the Argumentation: Going first allows a debater to present their strongest arguments without direct responses from the opposing side. This can be advantageous for introducing key points and evidence without immediate rebuttal.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class NegativeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Benefits of Going Second:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '1. Strategic Responses: The second speaker has the advantage of responding directly to the arguments presented by the first speaker. This allows for strategic counterarguments and the ability to address weaknesses in the opponent\'s case.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '2. Rebuttal Opportunities: Going second provides an opportunity to directly challenge the arguments made by the first speaker, offering counterpoints and undermining the opponent\'s position.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '3. Adaptability: The second speaker can adapt their strategy based on how the debate unfolds. They can adjust their arguments in response to the strengths and weaknesses of the opposing case presented in the first round.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
