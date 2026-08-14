abstract class FileUploadService {
  /// upload list of Files local paths and return their links after upload
  Future<List<String>> uploadFiles(List<String> localPaths);
}

class MockFileUploadService implements FileUploadService {
  @override
  Future<List<String>> uploadFiles(List<String> localPaths) async {
    // simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));

    // temporary: return the same local paths as if they were "links"
    // later: this will be an actual file upload (multipart request) and will return real links from the server
    return localPaths;
  }
}
