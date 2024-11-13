// import 'package:flutter/material.dart';
// import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
// import 'package:torri_cantine_app/app/routing/main_navigation.dart';
//
// class NotificationPage extends StatefulWidget {
//   const NotificationPage({Key? key}) : super(key: key);
//
//   @override
//   _NotificationPageState createState() => _NotificationPageState();
// }
//
// class _NotificationPageState extends State<NotificationPage> {
//   final List<Map<String, dynamic>> notifications = [
//     {
//       'title': 'Titolo notifica',
//       'date': '24 Febbraio 2023',
//       'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
//       'read': false,
//     },
//     {
//       'title': 'Titolo notifica',
//       'date': '25 Febbraio 2023',
//       'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
//       'read': false,
//     },
//     {
//       'title': 'Titolo notifica',
//       'date': '26 Febbraio 2023',
//       'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
//       'read': true,
//     },
//   ]
//       .map((notification) => {
//             ...notification,
//             'read': notification['read'] ?? false,
//           })
//       .toList();
//
//   @override
//   Widget build(BuildContext context) {
//
//     return PopScope(
//         canPop: false,
//         onPopInvoked: (didPop) {
//           print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
//           MainNavigation.pop(context);
//           //return;
//         },
//         child:Scaffold(
//           appBar: AppBar(
//             leading: const BackButton(
//               color: Colors.grey,
//             ),
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "NOTIFICHE",
//                   style:
//                   TCTypography.of(context).text_14.copyWith(color: Colors.grey),
//                 ),
//                 TextButton.icon(
//                   onPressed: () {
//                     //TODO funzionalità dell'icona "ingranaggio" - Gestione notifiche
//                   },
//                   icon: const Icon(
//                     Icons.settings,
//                     color: Colors.grey,
//                   ),
//                   label: const Text(
//                     '',
//                   ),
//                 ),
//               ],
//             ),
//             backgroundColor: Colors.white,
//           ),
//           body: ListView.builder(
//             itemCount: notifications.length,
//             itemBuilder: (BuildContext context, int index) {
//               final bool isRead = notifications[index]['read']!;
//               return Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                     child: ListTile(
//                       leading: Padding(
//                         padding: const EdgeInsets.only(top: 5.0),
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 15.0),
//                           child: Icon(
//                             Icons.circle,
//                             size: 10,
//                             color: isRead ? Colors.grey : Colors.blue,
//                           ),
//                         ),
//                       ),
//                       title: Padding(
//                         padding: const EdgeInsets.only(top: 13.0, bottom: 3.0),
//                         child: Text(notifications[index]['title']!,
//                             style: TCTypography.of(context).text_16_bold),
//                       ),
//                       subtitle: Text(notifications[index]['text']!,
//                           style: TCTypography.of(context)
//                               .text_14_bold
//                               .copyWith(color: Colors.grey)),
//                       trailing: Padding(
//                         padding: const EdgeInsets.only(top: 2.0),
//                         child: Text(notifications[index]['date']!,
//                             style: TCTypography.of(context)
//                                 .text_14_bold
//                                 .copyWith(color: Colors.grey)),
//                       ),
//                       onTap: () {},
//                     ),
//                   ),
//                   const Divider(
//                     color: Color.fromARGB(255, 138, 137, 137),
//                     height: 1,
//                     indent: 30,
//                     endIndent: 20,
//                   ),
//                 ],
//               );
//             },
//           ),
//         )
//
//     );
//
//
//   }
// }
