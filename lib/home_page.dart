import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomepageBody(),
    );
  }
}

class HomepageBody extends StatelessWidget {
  const HomepageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [

            Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                "Welcome to Debate Dias! ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),]
        ),
        Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Explore a diverse array of debates. From politics to science, ethics to "
              "entertainment, our platform hosts a rich tapestry"
              " of intellectual exchange. Stay informed and "
              "broaden your horizons as you read and absorb "
              "the diverse viewpoints shared by our "
              "community.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/closed_debates');
            },
            child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Debate Collection'),
            ),
          ),
        ),
        const Divider(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Challenge ideas, refine arguments, and engage in the art of persuasion by arguing against assertions made by fellow users. Whether you're aiming to test the strength of your own convictions or foster constructive dialogue, Debate Dias provides a platform to articulate your counterarguments. Respectful discourse is the cornerstone of our community, so dive into the discussions and contribute to the intellectual growth of both yourself and others.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/open_debates');
            },
            child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Join a debate'),
            ),
          ),
        ),
        const Divider(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Have a perspective you're eager to share with the world?"
              " Craft and present your own assertions. Encourage fellow users to critically analyze your viewpoint, fostering an environment where ideas are explored and refined. Whether your assertion sparks agreement or dissent, your contribution is a vital part of the dynamic discourse taking place on Debate Dias. Join the conversation and let your ideas resonate within our community.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/create_debate');
            },
            child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Propose A Debate Topic",
              ),
            ),
          ),
        ),
        const Divider(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Strengthen your argumentative prowess by deepening your understanding of logical fallacies. Our platform offers a dedicated space for you to enhance your critical thinking skills. Familiarize yourself with common pitfalls in reasoning and learn how to identify, avoid, and counteract logical fallacies. Empower yourself to engage in debates with a sharper mind and a more discerning eye. Explore our curated resources and elevate your ability to construct sound, compelling arguments within the realm of rational discourse.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/logical_fallacies');
            },
            child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Learn About Logical Fallacies'),
            ),
          ),
        ),
      ],
    );
  }
}
