import 'package:mashael_al_qasr_5/utils/constants.dart';
// ignore: depend_on_referenced_packages, library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketIo {
  late final IO.Socket _instance;

  SocketIo() {
    _instance = IO.io(socketUrl, <String, dynamic>{
      "transports": ["websocket"],
    });
  }

  void onConnect(Function(dynamic) callback) {
    _instance.onConnect(callback);
  }

  void on(String event, Function(dynamic) callback) {
    _instance.on(event, callback);
  }

  void emit(String event, dynamic data) {
    _instance.emit(event, data);
  }
}

class SocketIoHandler {
  SocketIo socket = SocketIo();

  void onConnectReceiveIp({Function()? callback}) {
    socket.onConnect((_) {
      socket.on('vps: send ip', (data) {
        apiUrl = data["apiUrl"];
        print("apiUrl: $apiUrl");
        if (callback != null) callback();
      });
    });
  }

  void requestIp() {
    socket.emit("client: send ip", null);
  }
}
