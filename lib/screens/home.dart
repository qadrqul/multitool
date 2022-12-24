import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:multitool/screens/register.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
        );
      },
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Startup Name Generator"),
        ),
        drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(userName),
                  accountEmail: Text(userEmail),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/originals/af/29/b9/af29b942852b1311fc5d44737fbfe7e1.jpg"),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.ads_click ),
                  title: const Text('Tasbih'),
                  onTap: () => Navigator.pushNamed(context, '/tasbih'),
                ),
                ListTile(
                  leading: const Icon(Icons.timer),
                  title: const Text('Timer'),
                  onTap: () => Navigator.pushNamed(context, '/timer'),
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Exit'),
                  onTap: () => Navigator.pushNamed(context, '/'),
                ),
              ],
            )
        ),
        body: const Center(                     // Add the const
        child: RandomWords(),                 // ...this line
    ),
    );
  }
}
