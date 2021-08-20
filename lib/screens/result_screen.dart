import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lns_service_cost_calculator/providers/auth.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';

class ResultScreen extends StatefulWidget {
  static const routeName = 'result-screen';

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {

    // final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    // final appProvider = Provider.of<AppProvider>(context);

    // final loadedServiceType = appProvider.findById(serviceTypeId);

    return Scaffold(
      appBar: AppBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
        title: Text(
          'RESULT',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: BoxButton(
            title: 'Submit Quote Request',
            onTap: () {
              Provider.of<Auth>(context, listen: false).signOut();
            },
          ),
          // body: Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Text('Designer Days'),
          //         Text('Fetched Data'),
          //       ],
          //     ),
          //     TextButton.icon(
          //       onPressed: () {
          //         setState(() {
          //           isExpand = !isExpand;
          //         });
          //       },
          //       icon: Icon(
          //         isExpand ? Icons.expand_more : Icons.expand_less,
          //         color: Colors.black45,
          //       ),
          //       label: Text(
          //         'Click to show calculations',
          //         style: TextStyle(color: Colors.black45),
          //       ),
          //     ),
          //     if (isExpand)
          //       //TODO: Refactor to make the code short! Average fps 42 (must optimize)
          //       Expanded(
          //         child: ListView.builder(
          //           shrinkWrap: true,
          //           itemCount: entries.length,
          //           itemBuilder: (BuildContext context, int index) {
          //             return Container(
          //               margin: EdgeInsets.all(20),
          //               height: 200,
          //               child: Card(
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(20),
          //                   child: Column(
          //                     children: [
          //                       Text('${entries[index]}'),
          //                       SizedBox(
          //                         height: 130,
          //                         child: GridView.builder(
          //                           gridDelegate:
          //                               const SliverGridDelegateWithFixedCrossAxisCount(
          //                             crossAxisCount: 3,
          //                             crossAxisSpacing: 10,
          //                             mainAxisSpacing: 10,
          //                             childAspectRatio: 3 / 4,
          //                           ),
          //                           itemCount:
          //                               loadedServiceType.appCategory!.length,
          //                           itemBuilder: (BuildContext context, int index) {
          //                             return ChangeNotifierProvider.value(
          //                               value:
          //                                   loadedServiceType.appCategory![index],
          //                               child: Consumer<AppTypeModel>(
          //                                 builder: (_, bar, __) => InkWell(
          //                                   onTap: () {},
          //                                   child: Card(
          //                                     color: bar.isSelected!
          //                                         ? kcSecondaryColor
          //                                         : Colors.white,
          //                                     child: Column(
          //                                       mainAxisSize: MainAxisSize.min,
          //                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                                       children: [
          //                                         Icon(
          //                                           loadedServiceType
          //                                               .appCategory![index].icon,
          //                                           color: bar.isSelected!
          //                                               ? Colors.white
          //                                               : Colors.black,
          //                                         ),
          //                                         Text(
          //                                           '${loadedServiceType.appCategory![index].title}',
          //                                           textAlign: TextAlign.center,
          //                                           style: TextStyle(
          //                                               color: bar.isSelected!
          //                                                   ? Colors.white
          //                                                   : Colors.black),
          //                                         ),
          //                                       ],
          //                                     ),
          //                                   ),
          //                                 ),
          //                               ),
          //                             );
          //                           },
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             );
          //           },
          //         ),
          //       ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

            // SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         elevation: 4,
            //         child: Container(
            //           height: 200,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               Text('1. What type of app are you building?'),
            //               SizedBox(
            //                 height: 150,
            //                 child: GridView.builder(
            //                   gridDelegate:
            //                       const SliverGridDelegateWithFixedCrossAxisCount(
            //                     crossAxisCount: 3,
            //                     crossAxisSpacing: 10,
            //                     mainAxisSpacing: 10,
            //                     childAspectRatio: 3 / 4,
            //                   ),
            //                   itemCount: loadedServiceType.appType!.length,
            //                   itemBuilder: (ctx, i) =>
            //                       ChangeNotifierProvider.value(
            //                     value: loadedServiceType.appType![i],
            //                     child: Consumer<AppTypeModel>(
            //                       builder: (_, bar, __) => Card(
            //                         color:
            //                             //set the background color of the button when it is selected/ not selected
            //                             bar.isSelected
            //                                 ? kcSecondaryColor
            //                                 : Colors.white,
            //                         shape: RoundedRectangleBorder(
            //                           borderRadius: BorderRadius.circular(20),
            //                         ),
            //                         child: Column(
            //                           mainAxisAlignment: MainAxisAlignment.center,
            //                           children: [
            //                             Icon(
            //                               loadedServiceType.appType![i].icon,
            //                               color: bar.isSelected
            //                                   ? Colors.white
            //                                   : Colors.black,
            //                             ),
            //                             verticalSpaceRegular,
            //                             BoxText.caption(
            //                               '${loadedServiceType.appType![i].title}',
            //                               align: TextAlign.center,
            //                               color: bar.isSelected
            //                                   ? Colors.white
            //                                   : Colors.black,
            //                             ),
            //                             verticalSpaceSmall,
            //                             Chip(
            //                               backgroundColor: bar.isSelected
            //                                   ? Colors.white
            //                                   : kcSecondaryColor,
            //                               label: Text(
            //                                 '${loadedServiceType.appType![i].description}',
            //                                 style: TextStyle(
            //                                     color: bar.isSelected
            //                                         ? Colors.black
            //                                         : Colors.white),
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         elevation: 4,
            //         child: Container(
            //           height: 200,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               Text('1. What type of app are you building?'),
            //               SizedBox(
            //                 height: 150,
            //                 child: GridView.builder(
            //                   gridDelegate:
            //                       const SliverGridDelegateWithFixedCrossAxisCount(
            //                     crossAxisCount: 3,
            //                     crossAxisSpacing: 10,
            //                     mainAxisSpacing: 10,
            //                     childAspectRatio: 3 / 4,
            //                   ),
            //                   itemCount: loadedServiceType.appType!.length,
            //                   itemBuilder: (ctx, i) =>
            //                       ChangeNotifierProvider.value(
            //                     value: loadedServiceType.appType![i],
            //                     child: Consumer<AppTypeModel>(
            //                       builder: (_, bar, __) => Card(
            //                         color:
            //                             //set the background color of the button when it is selected/ not selected
            //                             bar.isSelected
            //                                 ? kcSecondaryColor
            //                                 : Colors.white,
            //                         shape: RoundedRectangleBorder(
            //                           borderRadius: BorderRadius.circular(20),
            //                         ),
            //                         child: Column(
            //                           mainAxisAlignment: MainAxisAlignment.center,
            //                           children: [
            //                             Icon(
            //                               loadedServiceType.appType![i].icon,
            //                               color: bar.isSelected
            //                                   ? Colors.white
            //                                   : Colors.black,
            //                             ),
            //                             verticalSpaceRegular,
            //                             BoxText.caption(
            //                               '${loadedServiceType.appType![i].title}',
            //                               align: TextAlign.center,
            //                               color: bar.isSelected
            //                                   ? Colors.white
            //                                   : Colors.black,
            //                             ),
            //                             verticalSpaceSmall,
            //                             Chip(
            //                               backgroundColor: bar.isSelected
            //                                   ? Colors.white
            //                                   : kcSecondaryColor,
            //                               label: Text(
            //                                 '${loadedServiceType.appType![i].description}',
            //                                 style: TextStyle(
            //                                     color: bar.isSelected
            //                                         ? Colors.black
            //                                         : Colors.white),
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         elevation: 4,
            //         child: Container(
            //           height: 200,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               Text('1. What type of app are you building?'),
            //               SizedBox(
            //                 height: 150,
            //                 child: GridView.builder(
            //                   gridDelegate:
            //                       const SliverGridDelegateWithFixedCrossAxisCount(
            //                     crossAxisCount: 3,
            //                     crossAxisSpacing: 10,
            //                     mainAxisSpacing: 10,
            //                     childAspectRatio: 3 / 4,
            //                   ),
            //                   itemCount: loadedServiceType.appType!.length,
            //                   itemBuilder: (ctx, i) =>
            //                       ChangeNotifierProvider.value(
            //                     value: loadedServiceType.appType![i],
            //                     child: Consumer<AppTypeModel>(
            //                       builder: (_, bar, __) => Card(
            //                         color:
            //                             //set the background color of the button when it is selected/ not selected
            //                             bar.isSelected
            //                                 ? kcSecondaryColor
            //                                 : Colors.white,
            //                         shape: RoundedRectangleBorder(
            //                           borderRadius: BorderRadius.circular(20),
            //                         ),
            //                         child: Column(
            //                           mainAxisAlignment: MainAxisAlignment.center,
            //                           children: [
            //                             Icon(
            //                               loadedServiceType.appType![i].icon,
            //                               color: bar.isSelected
            //                                   ? Colors.white
            //                                   : Colors.black,
            //                             ),
            //                             verticalSpaceRegular,
            //                             BoxText.caption(
            //                               '${loadedServiceType.appType![i].title}',
            //                               align: TextAlign.center,
            //                               color: bar.isSelected
            //                                   ? Colors.white
            //                                   : Colors.black,
            //                             ),
            //                             verticalSpaceSmall,
            //                             Chip(
            //                               backgroundColor: bar.isSelected
            //                                   ? Colors.white
            //                                   : kcSecondaryColor,
            //                               label: Text(
            //                                 '${loadedServiceType.appType![i].description}',
            //                                 style: TextStyle(
            //                                     color: bar.isSelected
            //                                         ? Colors.black
            //                                         : Colors.white),
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
