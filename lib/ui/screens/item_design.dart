//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final controller = PageController(viewportFraction: 0.8, keepPage: true);
//
//   @override
//   Widget build(BuildContext context) {
//     final pages = List.generate(
//         2,
//         (index) => Container(
//           width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//
//                 color: Colors.grey.shade300,
//               ),
//               child:
//               DataTable(
//                 columns: [
//                   DataColumn(label: Text('Name')),
//                   DataColumn(label: Text('Account')),
//                   DataColumn(label: Text(' Type')),
//                   DataColumn(label: Text('Status')),
//                   DataColumn(label: Text('Time')),
//                   DataColumn(label: Text('Operation')),
//
//                 ],
//                 rows: [
//                   DataRow(cells: [
//                     DataCell(Text('145')),
//                     DataCell(Text('60000')),
//                     DataCell(Text('Standard Account A')),
//                     DataCell(Text('Normal')),
//                     DataCell(Text('2016-10-19 09:41:37')),
//                     DataCell(Text('View')),
//
//                   ]),
//
//                 ],
//               ),
//             )
//               // Container(
//               //   height: 280,
//               //   child: Center(
//               //       child: Text(
//               //     "Page $index",
//               //     style: TextStyle(color: Colors.indigo),
//               //   )),
//               // ),
//             );
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 220),
//             child: SmoothPageIndicator(
//               controller: controller,
//               count: pages.length,
//               effect: WormEffect(
//                 dotHeight: 10,
//                 dotWidth: 10,
//                 type: WormType.thin,
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//             child: Padding(padding: EdgeInsets.fromLTRB(5, 120, 0, 0),
//                 child: Container(
//                   width: 500,
//                   height: 200,
//                   child: PageView.builder(
//                     controller: controller,
//                     itemCount: 2,
//                       itemBuilder: (_ ,  index)
//                           {
//
//                             return
//                               DataTable(
//
//                                 columns: [
//                                   DataColumn(
//                                       label: Text(
//                                           'S.no',
//                                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
//                                       )),
//                                   DataColumn(label: Text(
//                                       'Code',
//                                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
//                                   )),
//                                   DataColumn(label: Text(
//                                       'Name',
//                                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
//                                   )),
//
//
//                                 ],
//                                 rows: [
//                                   DataRow(cells: [
//                                     DataCell(Container(width:20,child:Text('1'))),
//                                     DataCell(Text('ENG-010')),
//                                     DataCell(Text('abc')),
//
//
//                                   ]),
//                                   DataRow(cells: [
//                                     DataCell(Text('2')),
//                                     DataCell(Text('ENG-011')),
//                                     DataCell(Text('abc')),
//
//
//                                   ]),
//
//                                 ] );
//
//
//                           }
//                   ),
//                 )
//
//
//     )
//     ),
//         ],
//       )
//     );
//   }
// }
//
// final colors = const [
//   Colors.red,
//   Colors.green,
//   Colors.greenAccent,
//   Colors.amberAccent,
//   Colors.blue,
//   Colors.amber,
// ];




import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'bloc.dart';

class favouriteItem_design extends StatefulWidget {
  String Column1Name;
  String Column2Name;
  String Column3Name;

  favouriteItem_design(
      {required this.Column1Name,
        required this.Column2Name,
        required this.Column3Name,
});

  @override
  _favouriteItem_design createState() => _favouriteItem_design();
}

class _favouriteItem_design extends State<favouriteItem_design> {
  //note : i have to make the width with mediaquery
  favourite_bloc favourite_bloccc =  favourite_bloc() ;

  double _width = 600;
  double _heigh = 200;
  bool isExpand = true;
  int wordscount = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:   DataTable(
                columns: [
                  DataColumn(label: Text(widget.Column1Name,style: TextStyle(color: Colors.blue),)),
                  DataColumn(label: Text(widget.Column2Name,style: TextStyle(color: Colors.blue),)),
                  DataColumn(label: Text(widget.Column3Name,style: TextStyle(color: Colors.blue),)),


                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),        DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),
                  DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),
                  DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),
                  DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),
                  DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),        DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),        DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),     DataRow(cells: [
                    DataCell(Text('145')),
                    DataCell(Text('60000')),
                    DataCell(Text('60000')),
                  ]
                  ),




















                ],
              ),
            );
    // TODO: implement build
    throw UnimplementedError();
  }
}