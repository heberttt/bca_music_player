class SearchResult {
  String trackName;
  String collectionName;
  String artistName;
  String thumbnailUrl;
  String songUrl;

  SearchResult({
    required this.trackName,
    required this.collectionName,
    required this.artistName,
    required this.thumbnailUrl,
    required this.songUrl,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      trackName: json["trackName"] ?? "",
      artistName: json["artistName"] ?? "",
      collectionName: json["collectionName"] ?? "",
      thumbnailUrl: json["artworkUrl100"] ?? "",
      songUrl: json["previewUrl"] ?? "",
    );
  }
}
