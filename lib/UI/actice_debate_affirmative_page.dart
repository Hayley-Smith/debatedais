import 'package:flutter/material.dart';

class ActiveDebateAffirmativePage extends StatefulWidget {
  const ActiveDebateAffirmativePage({super.key});

  @override
  State<ActiveDebateAffirmativePage> createState() =>
      _ActiveDebateAffirmativePageState();
}

class _ActiveDebateAffirmativePageState
    extends State<ActiveDebateAffirmativePage> {
  final double thresholdWidth = 800;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        double currentWidth = constraints.maxWidth;

        if (currentWidth < thresholdWidth) {
          return const ActiveDebateAffirmativeMobile();
        } else {
          return const ActiveDebateAffirmativeDesktop();
        }
      }),
    );
  }
}

class ActiveDebateAffirmativeMobile extends StatelessWidget {
  const ActiveDebateAffirmativeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADA mobile"),
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
        child: Center(
          child: ListView(
            children: [
              ListTile(title: TextFormField(minLines: 4, maxLines: 8,), trailing: const Icon(Icons.arrow_circle_right_outlined),),
              ListTile(
                title: Text(
                  "Start Strong: Tips for crafting an affirmative argument",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const ListTile(
                title: Text(
                  "Define the motion clearly and align your stance with it.",
                ),
              ),
              const ListTile(
                title: Text(
                  "Capture attention with a strong opening statement.",
                ),
              ),
              const ListTile(
                title: Text(
                  "Present persuasive and well-reasoned points.",
                ),
              ),
              const ListTile(
                title: Text(
                  "Anticipate and address potential counterarguments.",
                ),
              ),
              const ListTile(
                title: Text(
                  "Establish the significance of your case.",
                ),
              ),
              const ListTile(
                title: Text(
                  "Speak with confidence and clarity to make a lasting impression.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActiveDebateAffirmativeDesktop extends StatelessWidget {
  const ActiveDebateAffirmativeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADA Desktop"),
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
        child: const Center(
          child: Column(
            children: [
              Text(
                "Body",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
