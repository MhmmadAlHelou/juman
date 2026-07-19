// import 'package:flutter/material.dart';
// import 'package:ewan/core/core.dart';
// import 'package:ewan/features/home/presentation/widgets/order_item_widget.dart';
// import 'package:ewan/features/home/presentation/widgets/shimmer_home_widgets.dart'
//     show RecentProjectsShimmer;

// import '../../../orders/bloc/orders_bloc.dart';
// import '../../../orders/data/models/orders_model.dart';

// import '../../home.dart' show ServiceResult;

// class ViewOrderSection extends StatefulWidget {
//   const ViewOrderSection({
//     super.key,
//     required this.serviceData,
//     this.isView = true,
//   });

//   final ServiceResult serviceData;
//   final bool isView;

//   @override
//   State<ViewOrderSection> createState() => _ViewOrderSectionState();
// }

// class _ViewOrderSectionState extends State<ViewOrderSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         // Row(
//         //   crossAxisAlignment: CrossAxisAlignment.center,
//         //   children: <Widget>[
//         //     Expanded(
//         //       child: Text(
//         //         widget.isView
//         //             ? widget.serviceData.descriptionToView ?? ""
//         //             : widget.serviceData.description ?? "",
//         //         maxLines: 2,
//         //         overflow: TextOverflow.ellipsis,
//         //         style: context.titleSmall?.copyWith(
//         //           fontWeight: FontWeight.w300,
//         //         ),
//         //       ),
//         //     ),
//         //     // TODO filter to show filter bottom sheet
//         //     // SvgPicture.asset(
//         //     //   AssetsManager.svg.filter.path,
//         //     //   height: 14,
//         //     //   width: 14,
//         //     //   colorFilter: ColorFilter.mode(
//         //     //     Palette.secondary.withValues(alpha: 0.5),
//         //     //     BlendMode.srcIn,
//         //     //   ),
//         //     // ),
//         //     // const SizedBox(width: 4),
//         //     // Text(
//         //     //   (LocaleKeys.filter.tr()),
//         //     //   style: context.bodySmall?.copyWith(
//         //     //     color: Palette.secondary.withValues(alpha: 0.5),
//         //     //   ),
//         //     // ),
//         //   ],
//         // ),
//         // const SizedBox(height: 32),
//         BlocBuilder<OrdersBloc, OrdersState>(
//           builder: (BuildContext context, OrdersState state) {
//             return state.maybeWhen(
//               loadingAllOrders: () => const RecentProjectsShimmer(itemCount: 8),
//               successAllOrders:
//                   (List<OrderResult> orders, bool hasNext, int page) {
//                     if (orders.isEmpty) {
//                       return const GlobalEmptyList();
//                     }
//                     return InfiniteListView.separated(
//                       hasNext: hasNext,
//                       shrinkWrap: true,
//                       itemBuilder: (BuildContext context, int index) {
//                         return OrderItemWidget(orderResult: orders[index]);
//                       },
//                       itemCount: orders.length,
//                       nextData: () {
//                         context.read<OrdersBloc>().add(
//                           OrdersEvent.getAllOrder(
//                             page: page + 1,
//                             serviceId: widget.serviceData.id,
//                           ),
//                         );
//                       },
//                       separatorBuilder: (BuildContext p0, int p1) {
//                         return const SizedBox(height: 15);
//                       },
//                     );
//                   },
//               failureAllOrders: (GeneralException? generalException) =>
//                   GlobalErrorWidget(
//                     generalException: generalException,
//                     onPressed: () {
//                       context.read<OrdersBloc>().add(
//                         OrdersEvent.getAllOrder(
//                           serviceId: widget.serviceData.id,
//                         ),
//                       );
//                     },
//                   ),
//               orElse: () => const SizedBox.shrink(),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
