import 'package:classmodelprovider/mymodel.dart';
import 'package:classmodelprovider/mymodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mymodel.dart';
import 'mymodel.dart';
import 'mymodel.dart';

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
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("provider"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => myModel(),
        child: Center(
          child: Column(
            children: [
              widget1(),
              widget2()

              // myname(),
              // mynumber(),
              // muber2()
            ],
          ),
        ),
      ),
    );
  }
}

// class mynameWidget extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//
// var del=Provider.of<myModel>(context,listen: false);
//     return  Text(del.name) ;
//   }
// }
// class myname extends StatefulWidget {
//   const myname({super.key});
//
//   @override
//   State<myname> createState() => _mynameState();
// }
//
// class _mynameState extends State<myname> {
//   late myModel namemodel;
//
//   @override
//   void initState() {
//     namemodel = context.read<myModel>();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(namemodel.name);
//   }
// }

// class mynumber extends StatefulWidget {
//   const mynumber({super.key});
//
//   @override
//   State<mynumber> createState() => _mynumberState();
// }
//
// class _mynumberState extends State<mynumber> {
//   late myModel nummodel;
//
//   @override
//   void initState() {
//     nummodel = context.read<myModel>();
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var m = context.watch<myModel>();
//     return Column(
//       children: [
//         Text(m.number.toString() + ""),
//         IconButton(
//             onPressed: () {
//               m.inc();
//             },
//             icon: Icon(Icons.add))
//       ],
//     );
//   }
// }
// class mynumber extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//
// class mynumber extends StatefulWidget {
//   const mynumber({super.key});
//
//   @override
//   State<mynumber> createState() => _mynumberState();
// }
//
// class _mynumberState extends State<mynumber> {
//   @override
//
//   @override
//   Widget build(BuildContext context) {
//     var m = context.watch<myModel>();
//
//     // var m = Provider.of<myModel>(context);
//     return Column(
//       children: [
//         Text(m.number.toString() + ""),
//         IconButton(
//             onPressed: () {
//               m.inc();
//             },
//             icon: Icon(Icons.add))
//       ],
//     );
//   }
// }
// class muber2 extends StatelessWidget {
//   const muber2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // var m = context.watch<myModel>();
//
//     var m = Provider.of<myModel>(context);
//     return Column(
//       children: [
//         Text(m.number.toString() + ""),
//         IconButton(
//             onPressed: () {
//               m.inc();
//             },
//             icon: Icon(Icons.add))
//       ],
//     );
//   }
// }
//
//
class widget1 extends StatelessWidget {
  const widget1({super.key});

  @override
  Widget build(BuildContext context) {
    var model=context.select((myModel mymodel) => mymodel.number);
    print("number");
    return

      Column(
        children: [
          Text(model.toString()),
          IconButton(onPressed: (){
            Provider.of<myModel>(context,listen: false).inc();



          }, icon: Icon(Icons.add))




    ],
      );
  }
}

class widget2 extends StatelessWidget {
  const widget2({super.key});

  @override
  Widget build(BuildContext context) {
    print("name");
    return Text("Widget 2");
  }
}
