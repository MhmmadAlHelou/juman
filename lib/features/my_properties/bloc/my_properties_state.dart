part of 'my_properties_cubit.dart';

class MyPropertiesState extends Equatable {
  const MyPropertiesState({
    this.allItems = const <MyPropertyModel>[],
    this.filter = PropertyStatusFilter.all,
    this.isLoading = false,
    this.errorMessage,
    this.deletingId,
  });

  final List<MyPropertyModel> allItems;
  final PropertyStatusFilter filter;
  final bool isLoading;
  final String? errorMessage;
  final String? deletingId;

  List<MyPropertyModel> get filteredItems {
    if (filter == PropertyStatusFilter.all) return allItems;
    return allItems
        .where((MyPropertyModel i) => i.status == filter.apiValue)
        .toList();
  }

  MyPropertiesState copyWith({
    List<MyPropertyModel>? allItems,
    PropertyStatusFilter? filter,
    bool? isLoading,
    String? errorMessage,
    String? deletingId,
    bool clearError = false,
    bool clearDeletingId = false,
  }) {
    return MyPropertiesState(
      allItems: allItems ?? this.allItems,
      filter: filter ?? this.filter,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      deletingId: clearDeletingId ? null : (deletingId ?? this.deletingId),
    );
  }

  @override
  List<Object?> get props => <Object?>[
    allItems,
    filter,
    isLoading,
    errorMessage,
    deletingId,
  ];
}
