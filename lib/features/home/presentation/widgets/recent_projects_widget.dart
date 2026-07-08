// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:ewan/features/orders/bloc/orders_bloc.dart';
// import 'package:ewan/features/orders/data/models/orders_model.dart';

// import '../../../../core/core.dart';
// import '../../home.dart';

// class RecentProjectsWidget extends StatefulWidget {
//   const RecentProjectsWidget({super.key, this.isView = true});

//   final bool isView;

//   @override
//   State<RecentProjectsWidget> createState() => _RecentProjectsWidgetState();
// }

// class _RecentProjectsWidgetState extends State<RecentProjectsWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<OrdersBloc, OrdersState>(
//       buildWhen: (OrdersState previous, OrdersState current) =>
//           current.runtimeType == const OrdersState.failureOrder().runtimeType ||
//           current.runtimeType ==
//               const OrdersState.loadingAllOrders().runtimeType ||
//           current.runtimeType ==
//               const OrdersState.successAllOrders().runtimeType,
//       builder: (BuildContext context, OrdersState state) {
//         return state.maybeWhen(
//           failureOrder: (GeneralException? generalException) =>
//               GlobalErrorWidget(
//                 generalException: generalException,
//                 onPressed: () {
//                   if (widget.isView) {
//                     context.read<OrdersBloc>().add(
//                       const OrdersEvent.getAllOrder(page: 1, serviceId: null),
//                     );
//                   } else {
//                     context.read<OrdersBloc>().add(
//                       const OrdersEvent.getAllOrder(page: 1, serviceId: null),
//                     );
//                   }
//                 },
//               ),
//           loadingAllOrders: () => const RecentProjectsShimmer(),
//           successAllOrders:
//               (List<OrderResult> orders, bool hasNext, int page) => SizedBox(
//                 height: 200,
//                 child: ListView.separated(
//                   physics: const NeverScrollableScrollPhysics(),
//                   padding: EdgeInsets.zero,
//                   shrinkWrap: true,
//                   itemCount: min(2, orders.length),
//                   separatorBuilder: (_, __) {
//                     return const SizedBox(height: 12);
//                   },
//                   // todo api recent project
//                   itemBuilder: (BuildContext context, int index) {
//                     final OrderResult result = orders[index];
//                     return GestureDetector(
//                       behavior: HitTestBehavior.opaque,
//                       onTap: () {
//                         if (result.id != null) {
//                           context.pushRoute(
//                             OrderRoute(orderId: result.id!, isMyOrder: false),
//                           );
//                         }
//                       },
//                       child: Container(
//                         padding: const EdgeInsets.all(16.0),
//                         decoration: AppDecorations.card,
//                         child: Row(
//                           children: <Widget>[
//                             Container(
//                               width: 48,
//                               height: 48,
//                               decoration: AppDecorations.rounded(radius: 12),
//                               child: const Icon(
//                                 Icons.cloud_done,
//                                 color: Palette.secondary,
//                               ),
//                             ),
//                             const SizedBox(width: 16),
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Text(
//                                     result.title ?? "",
//                                     style: context.bodySmall?.copyWith(
//                                       fontWeight: FontWeight.w500,
//                                       color: Palette.black,
//                                     ),
//                                   ),
//                                   Text(
//                                     result.subService?.name.toUpperCase() ?? '',
//                                     style: context.labelMedium?.copyWith(
//                                       letterSpacing: -0.2,
//                                       color: Palette.hint,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const Icon(
//                               Icons.chevron_right,
//                               color: Palette.semiGray,
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),

//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }
// }
