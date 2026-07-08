// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:ewam/core/core.dart';
// import 'package:ewan/features/auth/data/models/city_model.dart';

// class SearchableDDL<T> extends StatefulWidget {
//   const SearchableDDL({
//     super.key,
//     required this.hintText,
//     this.asyncItems,
//     this.selectedItem,
//     this.showSearchBox = false,
//     this.onChanged,
//     this.validator,
//     this.autoValidateMode,
//     this.borderColor,
//     required this.focusNode,
//     this.borderRadius = 12,
//     this.vertical,
//     this.prefixIconConstraints,
//     this.prefixText,
//     this.fontColor,
//     required this.isEmpty,
//     this.prefixSvgPathIcon,
//     this.fontSize,
//     this.suffixText,
//     this.prefixPadding,
//     this.nextFocusNode,
//   });

//   final String hintText;
//   final T? selectedItem;
//   final String? suffixText;
//   final void Function(T? value)? onChanged;
//   final Future<List<T>> Function(String filter, LoadProps? loadProps)?
//   asyncItems;
//   final bool showSearchBox;
//   final String? Function(T?)? validator;
//   final AutovalidateMode? autoValidateMode;
//   final Color? borderColor;

//   final FocusNode focusNode;
//   final double borderRadius;
//   final double? vertical;
//   final BoxConstraints? prefixIconConstraints;
//   final String? prefixText;
//   final bool isEmpty;
//   final Color? fontColor;
//   final String? prefixSvgPathIcon;
//   final double? fontSize;
//   final Widget? prefixPadding;
//   final FocusNode? nextFocusNode;

//   @override
//   State<SearchableDDL<T>> createState() => _SearchableDDLState<T>();
// }

// class _SearchableDDLState<T> extends State<SearchableDDL<T>> {
//   late Color fillColor;
//   late Color borderColor;
//   late BorderRadius borderRadius;

//   @override
//   void initState() {
//     super.initState();
//     fillColor = Palette.white;
//     borderColor = widget.borderColor ?? const Color.fromRGBO(241, 245, 249, 1);
//     borderRadius = BorderRadius.all(Radius.circular(widget.borderRadius));
//     widget.focusNode.addListener(_handleFocusChange);
//   }

//   void _handleFocusChange() {
//     if (widget.focusNode.hasFocus) {
//       setState(() {
//         borderColor = Palette.primary;
//       });
//     } else if (widget.isEmpty) {
//       setState(() {
//         borderColor = widget.borderColor ?? Colors.transparent;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     widget.focusNode.removeListener(_handleFocusChange);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<T>(
//       autoValidateMode: widget.autoValidateMode,
//       compareFn: (T item1, T item2) {
//         return item1 == item2;
//       },
//       suffixProps: DropdownSuffixProps(
//         dropdownButtonProps: DropdownButtonProps(
//           color: context.colorScheme.primary,
//         ),
//       ),
//       popupProps: PopupProps<T>.menu(
//         showSearchBox: widget.showSearchBox,
//         showSelectedItems: true,
//         itemBuilder: (
//           BuildContext context,
//           T item,
//           bool isDisabled,
//           bool isSelected,
//         ) {
//           String? text;
//           if (item.runtimeType == CityResult) {
//             text = (item as CityResult).name ?? "";
//           }
//           return Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Text(
//               text ?? item.toString(),
//               style: context.bodySmall?.copyWith(
//                 fontWeight: FontWeight.w400,
//                 color:
//                     isSelected
//                         ? context.colorScheme.secondary
//                         : Palette.text,
//               ),
//             ),
//           );
//         },
//         menuProps: MenuProps(borderRadius: BorderRadius.circular(12), backgroundColor: Palette.white),
//         searchFieldProps: TextFieldProps(
//           style: context.bodySmall?.copyWith(fontWeight: FontWeight.w500),
//           decoration: const InputDecoration(
//             constraints: BoxConstraints(maxHeight: 46),
//             border: OutlineInputBorder(),
//           ),
//         ),
//         scrollbarProps: ScrollbarProps(
//           thumbColor: Theme.of(context).primaryColor,
//           trackRadius: const Radius.circular(12),
//           trackVisibility: true,
//           thumbVisibility: true,
//           radius: const Radius.circular(12),
//           thickness: 2,
//           interactive: true,
//           padding: const EdgeInsets.all(2),
//         ),
//         constraints: const BoxConstraints(maxHeight: 300),
//         fit: FlexFit.loose,
//       ),
//       decoratorProps: DropDownDecoratorProps(
//         baseStyle: context.bodySmall?.copyWith(fontWeight: FontWeight.w500),
//         decoration: InputDecoration(
//           fillColor: fillColor,
//           alignLabelWithHint: true,
//           contentPadding: EdgeInsets.symmetric(
//             horizontal: 16,
//             vertical: widget.vertical ?? 12,
//           ),
//           prefixIconConstraints: widget.prefixIconConstraints,
//           isDense: true,
//           prefixText: widget.prefixText,
//           prefixStyle: context.bodySmall?.copyWith(
//             color:
//                 !widget.isEmpty
//                     ? widget.fontColor ?? context.colorScheme.onSurface
//                     : context.theme.hintColor,
//             fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
//           ),
//           prefixIcon:
//               widget.prefixSvgPathIcon != null
//                   ? Container(
//                     padding: const EdgeInsetsDirectional.only(
//                       top: 7,
//                       bottom: 7,
//                       start: 5,
//                       end: 5,
//                     ),
//                     margin: const EdgeInsets.all(5),
//                     child: SvgPicture.asset(
//                       widget.prefixSvgPathIcon!,
//                       colorFilter: ColorFilter.mode(
//                         !widget.isEmpty
//                             ? context.theme.primaryColor
//                             : context.theme.hintColor,
//                         BlendMode.srcIn,
//                       ),
//                     ),
//                   )
//                   : widget.prefixPadding,
//           suffixText: widget.suffixText,
//           suffixStyle: context.bodySmall?.copyWith(
//             fontWeight: FontWeight.w500,
//             fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
//           ),
//           // suffixIcon: suffixIconCondition(context),
//           hintText: widget.hintText,
//           hintStyle: context.bodySmall?.copyWith(
//             fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
//             fontWeight: FontWeight.w400,
//             color: widget.fontColor ?? context.theme.hintColor,
//           ),
//           hintTextDirection:
//               context.locale.isRTL ? TextDirection.rtl : TextDirection.ltr,
//           hintMaxLines: 3,
//           labelText: widget.hintText,
//           labelStyle: context.bodySmall?.copyWith(
//             fontSize: widget.fontSize ?? context.bodySmall?.fontSize ?? 0.0,
//             fontWeight: FontWeight.w600,
//             color: widget.fontColor ?? context.theme.hintColor,
//           ),
//           filled: true,
//           focusedBorder: OutlineInputBorder(
//             borderRadius: borderRadius,
//             borderSide: BorderSide(color: borderColor),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: borderRadius,
//             borderSide: BorderSide(color: borderColor),
//           ),
//           disabledBorder: OutlineInputBorder(
//             borderRadius: borderRadius,
//             borderSide: BorderSide(color: borderColor),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: borderRadius,
//             borderSide: BorderSide(color: context.colorScheme.error),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderRadius: borderRadius,
//             borderSide: BorderSide(color: context.colorScheme.error),
//           ),
//           errorStyle: TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: context.labelLarge?.fontSize ?? 12,
//             color: context.colorScheme.error,
//             height: 0,
//           ),
//           errorMaxLines: 10,
//         ),
//       ),
//       items: widget.asyncItems,
//       onChanged: widget.onChanged,
//       selectedItem: widget.selectedItem,
//       clickProps: ClickProps(
//         focusNode: widget.focusNode,
//         onTapUp: (TapUpDetails t) {
//           fieldFocusChange(
//             context: context,
//             focusNode: widget.focusNode,
//             nextFocusNode: widget.nextFocusNode,
//           );
//         },
//       ),
//       validator: widget.validator,
//       itemAsString: (T item) {
//         if (item.runtimeType == CityResult) {
//           return (item as CityResult).name ?? "";
//         }
//         return "";
//       },
//     );
//   }
// }
