/*import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/src/client/http2_connection.dart'
    show Http2ClientConnection;

class StatedClientChannel extends ClientChannel {
  final void Function(ConnectionState state) onStateChanged;
  StatedClientChannel(host,
      {port = 443, options = const ChannelOptions(), this.onStateChanged})
      : super(host, port: port, options: options);

  @override
  ClientConnection createConnection() {
    var connection = Http2ClientConnection(host, port, options);
    connection.onStateChanged = (connection) {
      print(connection.state);
      if (onStateChanged != null) {
        this.onStateChanged(connection.state);
      }
    };
    return connection;
  }
}*/
