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
      appBar: AppBar(
        title: const Text("Debate Dias"),
      ),
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
    return Center(
      child: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Get the lay of the land - read previous debates, test your skills at spotting logical fallacies, and weigh-in yourself",
                style: Theme.of(context).textTheme.titleMedium,
              ),
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
                child: Text('Read others\' debates'),
              ),
            ),
          ),



          const Divider(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Step up to the podium - Others have proposed debate topics, test your skills by refuting their claims",
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
                "Propose a debate topic of your own - make an assertion and see who challenges it.",
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
                "Logical fallacies are errors in reasoning or flawed arguments that undermine the validity and soundness of a logical structure. Learn to identify them",
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
      ),
    );
  }
}
