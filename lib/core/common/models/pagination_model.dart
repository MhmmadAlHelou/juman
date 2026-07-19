class PaginationData {
  final int? count;
  final int? pagesCount;
  final dynamic next;
  final dynamic previous;

  PaginationData({this.count, this.pagesCount, this.next, this.previous});

  factory PaginationData.fromJson(Map<String, dynamic> json) => PaginationData(
    count: json["count"],
    pagesCount: json["pages_count"],
    next: json["next"],
    previous: json["previous"],
  );
}
