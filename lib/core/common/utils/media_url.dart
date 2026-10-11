String resolveMediaUrl(String path) {
  if (path.startsWith('http')) return path;
  return 'https://api-ewan.tallebplus.com$path';
}
