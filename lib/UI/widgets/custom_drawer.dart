
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              'Navigation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home_page');
            },
          ),  ListTile(
            leading: const Icon(Icons.start),
            title: const Text('intro'),
            onTap: () {
              Navigator.pushNamed(context, '/fallacy_intro');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Create Debate'),
            onTap: () {
              Navigator.pushNamed(context, '/create_debate');
            },
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Login'),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text('Sign Up'),
            onTap: () {
              Navigator.pushNamed(context, '/signup');
            },
          ),
          ListTile(
            leading: const Icon(Icons.format_list_bulleted),
            title: const Text('Open Debates'),
            onTap: () {
              Navigator.pushNamed(context, '/open_debates');
            },
          ),
          ListTile(
            leading: const Icon(Icons.details),
            title: const Text('Debate Details'),
            onTap: () {
              Navigator.pushNamed(context, '/open_debate_detail');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_comment),
            title: const Text('Create Argument'),
            onTap: () {
              Navigator.pushNamed(context, '/create_argument');
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Cite Source'),
            onTap: () {
              Navigator.pushNamed(context, '/cite_source');
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Closed Debates'),
            onTap: () {
              Navigator.pushNamed(context, '/closed_debates');
            },
          ),
          ListTile(
            leading: const Icon(Icons.warning),
            title: const Text('Logical Fallacies'),
            onTap: () {
              Navigator.pushNamed(context, '/logical_fallacies');
            },
          ),
          ListTile(
            leading: const Icon(Icons.how_to_vote),
            title: const Text('Weigh In'),
            onTap: () {
              Navigator.pushNamed(context, '/weigh_in');
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock_reset),
            title: const Text('Forgot Password'),
            onTap: () {
              Navigator.pushNamed(context, '/forgot_password');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('User Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/user_profile');
            },
          ),
          ListTile(
            leading: const Icon(Icons.thumbs_up_down),
            title: const Text('Active Debate Affirmative'),
            onTap: () {
              Navigator.pushNamed(context, '/active_debate_affirmative');
            },
          ),
          ListTile(
            leading: const Icon(Icons.group_add),
            title: const Text('Join Debate'),
            onTap: () {
              Navigator.pushNamed(context, '/join_debate');
            },
          ),
        ],
      ),
    );
  }
}