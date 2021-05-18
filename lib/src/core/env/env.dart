enum EnvMode {
  production,
  sandbox,
  local,
}

class Env {
  final EnvMode m;

  Env(this.m);

  static final String _apiProduction = "https://imaginamos.myvtex.com/api";
  static final String _apiSandbox = "https://imaginamos.myvtex.com/api";
  static final String _apiLocal = "https://imaginamos.myvtex.com/api";
  static final String xVtexApiAppKey = "vtexappkey-imaginamos-LSWTYU";
  static final String xVtexApiAppToken = "COANIUVEJYPGFKBLJONNJOZUZFPJUXKSDMUPGLEHREXFALNUVCNBZQEOOFNDEMKLNWCSPLFYJGVFQUUNRUORJJSNIGABXBCFTLRDJUFJXPRTVYXTKALKXTBEEPKIKEAI";

  String get api {
    switch (m) {
      case EnvMode.production:
        return _apiProduction;
        break;
      case EnvMode.sandbox:
        return _apiSandbox;
        break;
      case EnvMode.local:
        return _apiLocal;
        break;
      default:
        return null;
    }
  }
}
