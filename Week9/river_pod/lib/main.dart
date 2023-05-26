import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main(){
  runApp(ProviderScope(child:myapp()));
}
final counterProvider= StateProvider<int>((ref){
  return 0;
});
class myapp extends ConsumerWidget {
   const myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data = ref.watch(counterProvider);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text("Value:$data",style: Theme.of(context).textTheme.headlineMedium),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  elevation: 0,
                  onPressed: (){ref.read(counterProvider.state).state++;},
              child: const Icon(Icons.add)),
            ),
            FloatingActionButton(elevation: 0,
                onPressed: (){ref.read(counterProvider.state).state--;},
                child: const Icon(Icons.remove))
          ],

        ),
      ),
    );
  }
}
