// import 'package:apiflut/Controller/home_controller.dart';
// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "Home",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: FutureBuilder(
//         future: getusers(),
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(snapshot.data [index].name),
//                   subtitle: Text(snapshot.data [index].email),
//                   trailing: Text(snapshot.data [index].phone),
//                 );
//               },
//             );
//           } else {
//             return const Center(child: CircularProgressIndicator(),);
//           }
//         },
//       ),
//     );
//   }
// }
import 'package:apiflut/Constants/colors.dart';
import 'package:apiflut/Controller/home_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({super.key});


  TextEditingController getCity = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.backgroundc,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           
           TextField(
            controller:getCity ,
           ),
    
            ElevatedButton(
              onPressed: () {
                getweather();
              },
              child: const Text('get constant'),
            ),
             ElevatedButton(
              onPressed: () {
                getweatherid(getCity.text);
              },
              child: const Text('get by id'),
            ),
          ],
        ),
      ),
    );
  }
}
