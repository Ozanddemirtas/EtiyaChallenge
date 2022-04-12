import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:nbastatsetiya/models/stat_model.dart';
import 'package:nbastatsetiya/services/response_types.dart';

import '../config/api_config.dart';

class NbaRankingService {
  Dio dio = Dio();

  Future<ListApiResponse<NbaStatModel>?> getNbaRankings({
    int season = 2021,
    int team = 1,
    Function(double)? receiveCallback,
    Function(String)? errorCallback,
  }) async {
    try {
      String endpoint = "${ApiConfig.mainEndpoint}/players";
      var response = await dio.get(
        endpoint,
        queryParameters: {
          "team": team,
          "season": season,
        },
        options: Options(
          headers: ApiConfig.getHeaders,
        ),
        onReceiveProgress: (p0, p1) => receiveCallback?.call((p1 / p0) * 100),
      );
      if (response.statusCode != 200) {
        errorCallback?.call(response.statusMessage ?? "");
        return null;
      }
      var dataMap = response.data['response'];
      List<NbaStatModel> list = [];
      for (var data in dataMap) {
        list.add(NbaStatModel.fromJson(data));
      }
      return ListApiResponse<NbaStatModel>(
        data: list,
        message: "Success",
        statusCode: response.statusCode!,
        totalCount: list.length,
      );
    } catch (e) {
      Logger().e(e);
      return null;
    }
  }
}
