import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,


      home: const FirstWidget(),

    );
  }
}


class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

//   @override
//   State<FirstWidget> createState() => _FirstWidgetState();
// }
//
// class _FirstWidgetState extends State<FirstWidget> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          MyListTile(),

          Text(
            AppLocalizations.of(context).helloWorld,
            style: const TextStyle(color: Colors.red, fontSize: 50),
          ),
          const Text(
              "wdwd",style:  TextStyle(color: Colors.red, fontSize: 50),
          )



        ]
      ),

    );
  }
}

class MyListTile extends StatefulWidget {
   MyListTile({
    super.key,
  });

   bool checkboxValue = false;

  @override
  State<MyListTile> createState() => _MyListTileState();
}


class _MyListTileState extends State<MyListTile>{

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (value) => setState((){
          widget.checkboxValue = value ?? false;
        }),
        value: widget.checkboxValue,
      ),
      title: const Text('jakie zadanie'),
      subtitle: const Text('subtitle Wazne zadanie'),
      trailing:  const Icon(Icons.train),
      style: ListTileStyle.list


      );
  }


}
