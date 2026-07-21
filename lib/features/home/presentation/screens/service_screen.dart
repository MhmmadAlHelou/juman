import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:nested/nested.dart';
import 'package:ewan/core/core.dart';
// import '../../../orders/bloc/orders_bloc.dart';
import '../../home.dart';

@RoutePage()
class ServiceScreen extends StatelessWidget {
  const ServiceScreen({
    super.key,
    required this.serviceData,
    required this.isView,
  });

  final ServiceResult serviceData;
  final bool isView;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => getIt<HomeBloc>(),
        ),
        // BlocProvider<OrdersBloc>(
        //   create: (BuildContext context) => getIt<OrdersBloc>(),
        // ),
      ],
      child: ServiceView(serviceData: serviceData, isView: isView),
    );
  }
}

class ServiceView extends StatefulWidget {
  const ServiceView({
    super.key,
    required this.serviceData,
    required this.isView,
  });

  final ServiceResult serviceData;
  final bool isView;

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> with HomeHelper {
  late HomeBloc _homeBloc;

  @override
  void initState() {
    _homeBloc = context.read<HomeBloc>();

    // if (widget.isView && widget.serviceData.form != null) {
    //   context.read<OrdersBloc>().add(
    //     OrdersEvent.getAllOrder(serviceId: widget.serviceData.id),
    //   );
    //   return;
    // }
    context.read<HomeBloc>().add(
      HomeEvent.getSubServices(serviceId: widget.serviceData.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        title:
            (!widget.isView ? (LocaleKeys.add).tr() : "") +
            widget.serviceData.name,
        backButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Builder(
              builder: (BuildContext context) {
                // final ItemResult? popAds = widget.serviceData.popAds;
                // if (popAds != null &&
                if (widget.isView && widget.serviceData.form != null) {
                  return Container(
                    height: 267,
                    width: double.infinity,
                    decoration: AppDecorations.rounded(radius: 12),
                    margin: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 32),
                    child: GestureDetector(
                      // onTap: () => clickOnAds(
                      //   homeBloc: _homeBloc,
                      //   context: context,
                      //   itemResult: popAds,
                      // ),
                      child: NetworkImageWidget(
                        url: "",
                        // url: popAds.image ?? "",
                        width: double.infinity,
                        radius: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
                return Container();
              },
            ),
            Builder(
              builder: (BuildContext context) {
                // if (widget.isView && widget.serviceData.form != null) {
                //   // return the list of accepted orders from last level service
                //   return Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 24),
                //     child: ViewOrderSection(
                //       serviceData: widget.serviceData,
                //       isView: widget.isView,
                //     ),
                //   );
                // }
                if (widget.serviceData.form != null) {
                  // view the form of last level service
                  return FormSection(serviceResult: widget.serviceData);
                }
                // view the inherited sub services of the service
                return BlocBuilder<HomeBloc, HomeState>(
                  buildWhen: (HomeState previous, HomeState current) =>
                      current.runtimeType ==
                          const HomeState.loadingSubServices().runtimeType ||
                      current.runtimeType ==
                          const HomeState.failureSubServices().runtimeType ||
                      current.runtimeType ==
                          const HomeState.successSubServices().runtimeType,
                  builder: (BuildContext context, HomeState state) {
                    return state.maybeWhen(
                      successSubServices: (ServiceResult? result) =>
                          GridServicesWidget(
                            servicesList: result?.children ?? <ServiceResult>[],
                            isView: widget.isView,
                          ),
                      loadingSubServices: () => const GridListShimmer(),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 23),
          ],
        ),
      ),
    );
  }
}
