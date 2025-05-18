// import 'dart:ui';
// import 'package:flutter/material.dart';
//
// class MealsByAreaPage extends StatelessWidget {
//   const MealsByAreaPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           GridView.builder(
//             padding: EdgeInsets.only(
//               top: context.width * 0.3,
//               left: 8,
//               right: 8,
//               bottom: 120,
//             ),
//             gridDelegate:
//             const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.75,
//               crossAxisSpacing: 8,
//               mainAxisSpacing: 8,
//             ),
//             itemCount: state.meals.length,
//             itemBuilder: (context, index) {
//               final meal = state.meals[index];
//               return GestureDetector(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(16),
//                   child: BackdropFilter(
//                     filter:
//                     ImageFilter.blur(sigmaX: 58, sigmaY: 58),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.black.withOpacity(0.24),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Column(
//                         crossAxisAlignment:
//                         CrossAxisAlignment.center,
//                         children: [
//                           Image.network(
//                             meal.thumbnail,
//                             height: 100,
//                             width: double.infinity,
//                             fit: BoxFit.cover,
//                           ),
//                           const SizedBox(height: 8),
//                           Text(
//                             meal.name,
//                             overflow: TextOverflow.ellipsis,
//                             maxLines: 2,
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               fontSize: 16,
//                               color: Colors.white,
//                             ),
//                           ),
//                           const Spacer(),
//                           ElevatedButton.icon(
//                             onPressed: () {
//                               // context
//                               //     .read<BasketBloc>()
//                               //     .add(BasketEvent.addMeal(meal));
//                             },
//                             icon: const Icon(Icons.add),
//                             label: Text(
//                                 '${meal.price.formatPrice()} монет'),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor:
//                               Colors.grey.shade800,
//                               foregroundColor: Colors.white,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius:
//                                 BorderRadius.circular(8),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
