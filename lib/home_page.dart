// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
//   }
  
//   class _HomePageState extends State<HomePage>{
//     @override 
//     Widget build(BuildContext context) {
//       return Scaffold(
//         backgroundColor: Colors.white,
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.white,
//           unselectedFontSize: 0,
//           selectedFontSize: 0,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.navigation,
//                 color: Colors.black,
//                 ),
//               title: Text(""),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.bookmark,
//                 color: Colors.black54,
//                 ),
//               title: Text(""),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.supervised_user_circle,
//                 color: Colors.black54,
//                 ),
//               title: Text(""),
//             ),
//           ],
//         ),

//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[

//             Padding(
//               padding: EdgeInsets.only(
//                 top: MediaQuery.of(context).padding.top+kToolbarHeight,
//                 left: 40,

//               ),
//               child: Text("Find your purpose \nhere",
//               style: TextStyle(
//                 letterSpacing: 1.3,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//                 height: 1.3,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: PageViewWidget(),
//             )
//           ],
//         ),
//       );
//     }
// }

// class PageViewWidget extends StatefulWidget{
//   @override
//   _PageViewWidgetState createState() => _PageViewWidgetState();
//   }
//   class _PageViewWidgetState extends State<PageViewWidget>{
    
//   List<VacationBean> _list= VacationBean.generate();
  
  
  
  
//     @override
//     Widget build(BuildContext context) {
//       return PageView.builder(
//       itemBuilder: context,index){
//         return Container(
//           child: Image.asset(
//             _list[Index].url,
//             width: MediaQuery.of(context).size.width.
//             fit: BoxFit.cover,
//           )     
//         );
//       };
//       itemCount: _list.length,
//       );
//     }
//   }
   
// }

