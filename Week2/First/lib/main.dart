import 'dart:io';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  void getNext(){
    current= WordPair.random();
    notifyListeners();
  }
  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  var selectedindex=0;
  Widget build(BuildContext context) {
    Widget page;
    switch(selectedindex){
      case 0:
        page= GeneratorPage();
        break;
      case 1:
        page= fvrtpage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedindex');
    }

    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('Favorites'),
                    ),

                  ],
                  selectedIndex: selectedindex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedindex=value;
                    });
                  },

                ),
              ),

              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
                    ],
                  ),
                );
      }
    );
  }
}


class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: SafeArea(
              child: IconButton(
                  onPressed: ()=>_dialogBuilder(context),
                  icon: Icon(Icons.exit_to_app_rounded)),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: BigCard(pair: pair),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class BigCard extends StatelessWidget {
  const BigCard({
    Key key,
    @required this.pair,
  }) : super(key: key);

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    final style = theme.textTheme.displayMedium.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Text(
          pair.asLowerCase,
          semanticsLabel: "${pair.first} ${pair.second}",
        style: style,
        ),
      ),
    );
  }
}
class fvrtpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var appstate=context.watch<MyAppState>();
    var favs=appstate.favorites.length;
    if(appstate.favorites.isEmpty){
      Center(child: Text("No Favourites Yet"),);}
    return ListView(
      children: [
        Padding(padding: EdgeInsets.all(10),
        child: Text("You have $favs Favourites"),),
        for(var pair in appstate.favorites)
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text("$pair"),

    ),
      ],
    );
  }
}
Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Exit'),
        content: const Text('Do you want to exit?',style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Yes'),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

