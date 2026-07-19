// import 'package:cached_network_svg_image/cached_network_svg_image.dart';
// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import 'package:ewan/features/favourites/bloc/favourites_bloc.dart';
// import '../../data/models/items_model.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../../../orders/data/models/orders_model.dart';

// class OrderItemWidget extends StatelessWidget {
//   final OrderResult orderResult;
//   const OrderItemWidget({super.key, required this.orderResult});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<FavouritesBloc>(
//       create: (BuildContext context) => getIt<FavouritesBloc>(),
//       child: OrderItemWidgetView(orderResult: orderResult),
//     );
//   }
// }

// class OrderItemWidgetView extends StatefulWidget {
//   final OrderResult orderResult;
//   const OrderItemWidgetView({super.key, required this.orderResult});

//   @override
//   State<OrderItemWidgetView> createState() => _OrderItemWidgetViewState();
// }

// class _OrderItemWidgetViewState extends State<OrderItemWidgetView> {
//   /// Utility function to detect if the text likely contains RTL content (e.g., Arabic).
//   bool isRtl(String text) {
//     if (text.isEmpty) {
//       return false; // Default to LTR if empty
//     }

//     // Check for characters in the Arabic Unicode block (U+0600 to U+06FF)
//     for (int i = 0; i < text.length; i++) {
//       int charCode = text.codeUnitAt(i);
//       // 0x0600 and 0x06FF are the start/end of the Arabic block
//       if (charCode >= 0x0600 && charCode <= 0x06FF) {
//         return true;
//       }
//     }
//     return false;
//   }

//   List<String> tagList = <String>[];
//   Map<String, bool> checkBoxList = <String, bool>{};
//   bool isFavourite = false;

//   @override
//   void initState() {
//     setState(() {
//       isFavourite = widget.orderResult.isFavourite ?? false;
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       decoration: AppDecorations.card,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             width: 64,
//             height: 64,
//             decoration: AppDecorations.rounded(radius: 12),
//             child: Center(
//               child: CachedNetworkSVGImage(
//                 widget.orderResult.subService?.svgIcon ?? "",
//                 width: 40,
//                 height: 40,
//                 fit: BoxFit.fitHeight,
//                 placeholder: const Center(child: CircularProgressIndicator()),
//                 colorFilter: const ColorFilter.mode(
//                   Palette.secondary,
//                   BlendMode.srcIn,
//                 ),
//                 errorWidget: const Icon(
//                   Icons.code,
//                   color: Palette.secondary,
//                   size: 24,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: GestureDetector(
//               onTap: () {
//                 if (widget.orderResult.id != null) {
//                   context.pushRoute(
//                     OrderRoute(
//                       orderId: widget.orderResult.id!,
//                       isMyOrder: false,
//                     ),
//                   );
//                 }
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     widget.orderResult.title ?? "-",
//                     style: context.titleSmall?.copyWith(color: Palette.text),
//                   ),
//                   ...?widget.orderResult.submissionForList?.fields?.map((
//                     SubmissionField submittedField,
//                   ) {
//                     final Object fieldType =
//                         submittedField.field?.fieldType ?? FieldType.text;

//                     String value = '';
//                     bool isTag = false;

//                     switch (fieldType) {
//                       case FieldType.text:
//                         value = submittedField.text ?? '-';
//                         break;
//                       case FieldType.longText:
//                         value = submittedField.text ?? '-';
//                         break;
//                       case FieldType.link:
//                         value = submittedField.text ?? '-';
//                         break;
//                       case FieldType.number:
//                         value = submittedField.number ?? '-';
//                         break;
//                       case FieldType.date:
//                         if (submittedField.date != null) {
//                           value = submittedField.date != null
//                               ? DateFormat(
//                                   'dd MMM, yyyy',
//                                 ).format(submittedField.date!)
//                               : submittedField.date!.toString();
//                         } else {
//                           value = '-';
//                         }
//                         break;
//                       case FieldType.time:
//                         value = submittedField.time ?? '-';
//                         break;
//                       case FieldType.dropDown:
//                       case FieldType.radio:
//                         isTag = true;
//                         value = submittedField.options?.isNotEmpty ?? false
//                             ? submittedField.options!
//                                   .map((OptionData e) => e.value)
//                                   .join(', ')
//                             : '-';
//                         if (value != '-') tagList.add(value);
//                         break;
//                       case FieldType.checkbox:
//                         isTag = true;
//                         value = submittedField.boolean.toString().toUpperCase();
//                         checkBoxList[submittedField.field?.label ?? ""] =
//                             value.toLowerCase() == "true" ? true : false;
//                         break;
//                       case FieldType.file:
//                         if (submittedField.file != null &&
//                             submittedField.file!.isNotEmpty) {
//                           final String fileUrl = submittedField.file!;

//                           final bool isImage =
//                               fileUrl.endsWith('.jpg') ||
//                               fileUrl.endsWith('.jpeg') ||
//                               fileUrl.endsWith('.png') ||
//                               fileUrl.endsWith('.gif');

//                           return Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               const SizedBox(height: 10),

//                               Container(
//                                 child: isImage
//                                     ? ClipRRect(
//                                         borderRadius: BorderRadius.circular(25),
//                                         child: Image.network(
//                                           fileUrl,
//                                           height: 200,
//                                           width: double.infinity,
//                                           fit: BoxFit.cover,
//                                         ),
//                                       )
//                                     : InkWell(
//                                         onTap: () async {
//                                           if (await canLaunchUrl(
//                                             Uri.parse(fileUrl),
//                                           )) {
//                                             await launchUrl(Uri.parse(fileUrl));
//                                           } else {
//                                             if (context.mounted) {
//                                               showSnackBar(
//                                                 context: context,
//                                                 message: 'Could not open file',
//                                                 isError: true,
//                                               );
//                                             }
//                                           }
//                                         },
//                                         child: Row(
//                                           children: <Widget>[
//                                             const Icon(
//                                               Icons.file_present_outlined,
//                                               size: 28,
//                                             ),
//                                             const SizedBox(width: 10),
//                                             Expanded(
//                                               child: Text(
//                                                 fileUrl.split('/').last,
//                                                 style: context.bodySmall
//                                                     ?.copyWith(
//                                                       fontWeight:
//                                                           FontWeight.w500,
//                                                     ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                               ),
//                             ],
//                           );
//                         } else {
//                           return const Text('-');
//                         }
//                       default:
//                         value = '-';
//                     }

//                     return isTag
//                         ? Container()
//                         : (value == '-')
//                         ? Container()
//                         : itemText(value);
//                   }),
//                   if (tagList.isNotEmpty) ...<Widget>[itemTag(tagList)],
//                   if (checkBoxList.isNotEmpty) ...<Widget>[
//                     itemCheckBox(checkBoxList),
//                   ],
//                 ],
//               ),
//             ),
//           ),

//           Builder(
//             builder: (BuildContext context) {
//               if (isFavourite) {
//                 return GestureDetector(
//                   onTap: () {
//                     if (PrefData.isSignedIn) {
//                       context.read<FavouritesBloc>().add(
//                         FavouritesEvent.deleteFavourite(
//                           orderId: widget.orderResult.id ?? "",
//                         ),
//                       );
//                       setState(() {
//                         isFavourite = false;
//                       });
//                       GlobalNotifiers.favouriteNotifier.value =
//                           !GlobalNotifiers.favouriteNotifier.value;
//                     }
//                   },
//                   child: Icon(
//                     Icons.bookmark,
//                     color: Palette.secondary.withValues(alpha: 0.8),
//                   ),
//                 );
//               } else {
//                 return GestureDetector(
//                   onTap: () {
//                     if (PrefData.isSignedIn) {
//                       context.read<FavouritesBloc>().add(
//                         FavouritesEvent.createFavourite(
//                           orderId: widget.orderResult.id ?? "",
//                         ),
//                       );
//                       setState(() {
//                         isFavourite = true;
//                       });
//                       GlobalNotifiers.favouriteNotifier.value =
//                           !GlobalNotifiers.favouriteNotifier.value;
//                     } else {
//                       context.pushRoute(LoginRoute());
//                     }
//                   },
//                   child: Icon(
//                     Icons.bookmark_border,
//                     color: Palette.secondary.withValues(alpha: 0.5),
//                   ),
//                 );
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget itemText(String value) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 3),
//       child: Text(
//         value,
//         maxLines: 2,
//         textDirection: isRtl(value) ? TextDirection.rtl : TextDirection.ltr,
//         overflow: TextOverflow.ellipsis,
//         style: context.labelLarge?.copyWith(
//           color: Palette.darkGray,
//           fontWeight: FontWeight.w300,
//         ),
//       ),
//     );
//   }

//   Widget itemTag(List<String> value) {
//     return Wrap(
//       spacing: 3,
//       runSpacing: 3,
//       children: value
//           .map(
//             (String tag) => Container(
//               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//               margin: const EdgeInsets.only(bottom: 3),
//               decoration: AppDecorations.rounded(
//                 color: Palette.gray.withValues(alpha: 0.5),
//                 radius: 6,
//               ),
//               child: Text(
//                 tag.toUpperCase(),
//                 style: context.labelMedium?.copyWith(
//                   color: context.colorScheme.secondary.withValues(alpha: 0.7),
//                   fontWeight: FontWeight.w300,
//                 ),
//               ),
//             ),
//           )
//           .toList(),
//     );
//   }

//   Widget itemCheckBox(Map<String, bool>? value) {
//     return Wrap(
//       spacing: 3,
//       runSpacing: 3,
//       children:
//           value?.entries
//               .map(
//                 (MapEntry<String, bool> entry) => Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 8,
//                     vertical: 8,
//                   ),
//                   decoration: AppDecorations.rounded(
//                     color: Palette.gray.withValues(alpha: 0.5),
//                     radius: 6,
//                   ),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Icon(
//                         entry.value ? Icons.check : Icons.close,
//                         size: 16,
//                         color: entry.value
//                             ? context.colorScheme.primary
//                             : Palette.darkGray,
//                       ),
//                       const SizedBox(width: 4),
//                       Text(
//                         entry.key.toUpperCase(),
//                         style: context.labelMedium?.copyWith(
//                           color: context.colorScheme.secondary.withValues(
//                             alpha: 0.7,
//                           ),
//                           fontWeight: FontWeight.w300,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//               .toList() ??
//           <Widget>[],
//     );
//   }
// }
