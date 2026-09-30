class BackendErrorParser {
  /// Parses backend error.detail strings, which can be either a plain
  /// message or a Python-dict-repr string like
  /// "{'code': ['x'], 'detail': ['message']}".
  static ({String? code, String message}) parse(String detail) {
    final codeMatch = RegExp(r"'code':\s*\['([^']+)'\]").firstMatch(detail);
    final detailMatch = RegExp(r"'detail':\s*\['([^']+)'\]").firstMatch(detail);

    if (codeMatch == null && detailMatch == null) {
      return (code: null, message: detail);
    }
    return (
      code: codeMatch?.group(1),
      message: detailMatch?.group(1) ?? detail,
    );
  }
}
