import 'package:ewan/features/home/data/models/properties_model.dart';

enum PropertyStatusFilter { all, draft, pending, approved, rejected }

extension PropertyStatusFilterX on PropertyStatusFilter {
  String get label {
    switch (this) {
      case PropertyStatusFilter.all:
        return 'All';
      case PropertyStatusFilter.draft:
        return 'Draft';
      case PropertyStatusFilter.pending:
        return 'Pending';
      case PropertyStatusFilter.approved:
        return 'Approved';
      case PropertyStatusFilter.rejected:
        return 'Rejected';
    }
  }

  PropertyStatus? get apiValue {
    switch (this) {
      case PropertyStatusFilter.all:
        return null;
      case PropertyStatusFilter.draft:
        return PropertyStatus.draft;
      case PropertyStatusFilter.pending:
        return PropertyStatus.pending;
      case PropertyStatusFilter.approved:
        return PropertyStatus.approved;
      case PropertyStatusFilter.rejected:
        return PropertyStatus.rejected;
    }
  }
}
