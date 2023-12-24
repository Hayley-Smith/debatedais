import 'package:flutter/material.dart';

import 'homepage_section.dart';

class HomepageLarge extends StatelessWidget {
  const HomepageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple[100],

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
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    //flex: 3,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Card(
                          shadowColor: Colors.deepPurple,
                          elevation: 20,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: const Image(
                            image: AssetImage(
                              'assets/samplelogodd.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Divider(),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // decoration:  BoxDecoration(
                //   gradient: LinearGradient(
                //     colors: [
                //       Colors.white,
                //       Colors.deepPurple.shade100,
                //     ],
                //     begin: const FractionalOffset(0.0, 0.0),
                //     end: const FractionalOffset(0.0, 1.0),
                //     stops: const [0.0, 1.0],
                //     tileMode: TileMode.clamp,
                //   ),
                // ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HomePageSection(
                            text:
                                "Challenge ideas, refine arguments, and engage in the art of persuasion by arguing against assertions made by fellow users. Whether you're aiming to test the strength of your own convictions or foster constructive dialogue, Debate Dias provides a platform to articulate your counterarguments. Respectful discourse is the cornerstone of our community, so dive into the discussions and contribute to the intellectual growth of both yourself and others.",
                            path: '/open_debates',
                            buttonText: 'Join a Debate',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HomePageSection(
                            text:
                                "Have a perspective you're eager to share with the world?"
                                " Craft and present your own assertions. Encourage fellow users to critically analyze your viewpoint, fostering an environment where ideas are explored and refined. Whether your assertion sparks agreement or dissent, your contribution is a vital part of the dynamic discourse taking place on Debate Dias. Join the conversation and let your ideas resonate within our community.",
                            path: '/create_debate',
                            buttonText: 'Propose A Debate Topic',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                //color: Colors.deepPurple[100],
                child: const Row(
                  children: [
                    Expanded(
                      //flex: 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HomePageSection(
                            text:
                                "Explore a diverse array of debates. From politics to science, ethics to "
                                "entertainment, our platform hosts a rich tapestry"
                                " of intellectual exchange. Stay informed and "
                                "broaden your horizons as you read and absorb "
                                "the diverse viewpoints shared by our "
                                "community.",
                            path: '/closed_debates',
                            buttonText: 'Debate Collection',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HomePageSection(
                            text:
                                "Strengthen your argumentative prowess by deepening your understanding of logical fallacies. Our platform offers a dedicated space for you to enhance your critical thinking skills. Familiarize yourself with common pitfalls in reasoning and learn how to identify, avoid, and counteract logical fallacies. Empower yourself to engage in debates with a sharper mind and a more discerning eye. Explore our curated resources and elevate your ability to construct sound, compelling arguments within the realm of rational discourse.",
                            path: '/logical_fallacies',
                            buttonText: 'Learn About Logical Fallacies',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
