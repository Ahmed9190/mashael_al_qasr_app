import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/models/server_config/server_config.dart';
import 'package:mashael_al_qasr_5/providers/user_provider.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:provider/provider.dart';

class ConfigProviderContainer extends StatefulWidget {
  final Widget child;
  const ConfigProviderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<ConfigProviderContainer> createState() =>
      _ConfigProviderContainerState();
}

class _ConfigProviderContainerState extends State<ConfigProviderContainer> {
  final ConfigProvider _configProvider = ConfigProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _configProvider,
      child: widget.child,
    );
  }
}

class ConfigProvider extends ChangeNotifier {
  ConfigProvider() {
    fetch().then((value) {
      notifyListeners();
    });
  }

  static BaseOptions dioOptions = BaseOptions(
    baseUrl: apiUrl,
    headers: {
      "Accept": "application/json",
    },
  );

  static void appendBearerToken() {
    dioOptions.headers["Authorization"] = "Bearer ${UserProvider.user!.token}";
  }

  static ServerConfig? _serverConfig;
  static ServerConfig? get serverConfig => _serverConfig;

  void setServerConfig(ServerConfig config) {
    _serverConfig = config;
    notifyListeners();
  }

  static ServerConfig? _localConfig;
  static ServerConfig? get localConfig => _localConfig;
  void setlocalConfig(ServerConfig config) {
    _serverConfig = config;
    notifyListeners();
  }

  ApiStatus _status = ApiStatus.initial;
  ApiStatus get status => _status;
  set status(ApiStatus status) {
    if (status == _status) return;
    _status = status;
    Future.delayed(Duration.zero, notifyListeners);
  }

  Future<void> fetch() async {
    try {
      status = ApiStatus.loading;
      var configs = await Api.get("/config", fromJson: ServerConfig.fromJson);
      setServerConfig(configs);
      status = ApiStatus.loaded;
    } catch (e) {
      status = ApiStatus.error;
      rethrow;
    }
  }
}
