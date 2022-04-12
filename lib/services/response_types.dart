class SingleApiResponse<T> {
  int statusCode;
  String message;
  T data;
  SingleApiResponse({
    required this.statusCode,
    required this.message,
    required this.data,
  });
}

class ListApiResponse<T> {
  int statusCode;
  String message;
  List<T> data;
  int totalCount;

  ListApiResponse({
    required this.statusCode,
    required this.message,
    required this.data,
    required this.totalCount,
  });
}
