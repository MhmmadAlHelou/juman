// import 'package:tallebplus_app/core/core.dart';
// import 'package:flutter/material.dart';

// /// A Widget that displays a Bottom Navigation Bar with smooth animation.
// /// It is a wrapper around [BottomNavigationBar]
// /// [CustomTabBar] is a widget that displays a horizontal row of tabs, one tab at a time.
// /// The tabs are individually titled and, when tapped, switch to that tab.
// class CustomTabBar extends StatelessWidget {
//   const CustomTabBar({
//     super.key,
//     required this.items,
//     this.currentIndex = 0,
//     this.onTap,
//     this.itemShape = const StadiumBorder(),
//     this.margin = const EdgeInsets.all(8),
//     this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//     this.duration = const Duration(milliseconds: 500),
//     this.curve = Curves.easeOutQuint,
//   });

//   /// A list of tabs to display, ie `Home`, `Likes`, etc
//   final List<CustomTabBarItem> items;

//   /// The tab to display.
//   final int currentIndex;

//   /// Returns the index of the tab that was tapped.
//   final Function(int)? onTap;

//   /// The border shape of each item.
//   final ShapeBorder itemShape;

//   /// A convenience field for the margin surrounding the entire widget.
//   final EdgeInsets margin;

//   /// The padding of each item.
//   final EdgeInsets itemPadding;

//   /// The transition duration
//   final Duration duration;

//   /// The transition curve
//   final Curve curve;

//   @override
//   Widget build(BuildContext context) {
//     return ColoredBox(
//       color: Colors.transparent,
//       child: SafeArea(
//         minimum: margin,
//         child: Container(
//           height: 50,
//           margin: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 8),
//           padding: const EdgeInsets.all(4),
//           decoration: BoxDecoration(
//             color: context.colorScheme.surface,
//             borderRadius: BorderRadius.circular(40),
//             boxShadow: const <BoxShadow>[
//               BoxShadow(
//                 color: Color.fromRGBO(91, 82, 75, 0.25),
//                 offset: Offset(0, 1),
//                 blurRadius: 4,
//                 spreadRadius: 0,
//               ),
//             ],
//           ),
//           child: Row(
//             /// Using a different alignment when there are 2 items or less
//             /// so it behaves the same as BottomNavigationBar.
//             mainAxisAlignment:
//                 items.length <= 2
//                     ? MainAxisAlignment.spaceEvenly
//                     : MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               for (CustomTabBarItem item in items)
//                 TweenAnimationBuilder<double>(
//                   tween: Tween<double>(
//                     end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
//                   ),
//                   curve: curve,
//                   duration: duration,
//                   builder: (BuildContext context, double t, _) {
//                     final Color selectedColor = context.colorScheme.surface;

//                     final Color unselectedColor = context.colorScheme.primary;

//                     return Material(
//                       color: Color.lerp(selectedColor, unselectedColor, t),
//                       shape: itemShape,
//                       child: InkWell(
//                         onTap: () => onTap?.call(items.indexOf(item)),

//                         customBorder: itemShape,
//                         focusColor: selectedColor.withValues(alpha: 0.1),
//                         highlightColor: selectedColor.withValues(alpha: 0.1),
//                         splashColor: selectedColor.withValues(alpha: 0.1),
//                         hoverColor: selectedColor.withValues(alpha: 0.1),
//                         child: Padding(
//                           padding: const EdgeInsetsDirectional.symmetric(
//                             horizontal: 17,
//                           ),

//                           child: Row(
//                             spacing: 4,
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               items.indexOf(item) == currentIndex
//                                   ? item.activeIcon
//                                   : item.icon,

//                               ClipRect(
//                                 clipBehavior: Clip.antiAlias,
//                                 child: Align(
//                                   alignment: const Alignment(-0.2, 0.0),
//                                   widthFactor: t,
//                                   child: SizedBox(
//                                     width:
//                                         MediaQuery.sizeOf(context).width * 0.15,
//                                     child: Text(
//                                       item.title,
//                                       maxLines: 1,
//                                       overflow: TextOverflow.ellipsis,
//                                       style: context.bodySmall?.copyWith(
//                                         color: Color.lerp(
//                                           unselectedColor,
//                                           selectedColor,
//                                           t,
//                                         ),
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// /// A tab to display in a [CustomTabBar]
// class CustomTabBarItem {
//   /// An icon to display.
//   final SvgPicture icon;

//   /// An icon to display when this tab bar is active.
//   final SvgPicture activeIcon;

//   /// Text to display, ie `Home`
//   final String title;

//   /// A primary color to use for this tab.
//   final Color? selectedColor;

//   /// The color to display when this tab is not selected.
//   final Color? unselectedColor;

//   CustomTabBarItem({
//     required this.icon,
//     required this.title,
//     this.selectedColor,
//     this.unselectedColor,
//     required this.activeIcon,
//   });
// }
