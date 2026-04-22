// Configuración centralizada de la API.
// La idea es que todas las URLs del backend estén aquí.
// Así, si en algún momento cambia la IP, el puerto o la ruta base,
// solo tendremos que modificar este archivo y no muchas pantallas.

class ApiConfig {
  /// URL para usar cuando ejecutamos la app en el emulador de Android Studio.
  ///
  /// 10.0.2.2 es una dirección especial que, desde el emulador Android,
  /// apunta al localhost de tu ordenador.
  static const String emulatorBaseUrl = 'http://10.0.2.2:8000';

  /// URL para usar en un móvil físico real.
  ///
  /// IMPORTANTE:
  /// - NO sirve 127.0.0.1 ni localhost.
  /// - Poner la IP local del ordenador en la red WiFi.
  /// - Ejemplo: http://192.168.1.134:8000
  /// - Pis: http://192.168.1.108:8000
  /// - Casa: http://192.168.1.134:8000
  static const String physicalDeviceBaseUrl = 'http://192.168.1.107:80';

  /// URL base activa de la aplicación.
  static const String baseUrl = physicalDeviceBaseUrl;

  // =========================
  // Auth endpoints
  // =========================
  static const String register = '$baseUrl/api/accounts/register/';
  static const String login = '$baseUrl/api/accounts/login/';
  static const String refresh = '$baseUrl/api/accounts/refresh/';
  static const String logout = '$baseUrl/api/accounts/logout/';
  static const String me = '$baseUrl/api/accounts/me/';

  // =========================
  // Building endpoints
  // =========================
  static const String carrersAutocomplete =
      '$baseUrl/api/buildings/carrers/autocomplete/';
  static const String localitzacions = '$baseUrl/api/buildings/localitzacions/';
  static const String crearEdifici = '$baseUrl/api/buildings/edificis/crear/';

  /// Helper comú per construir Uri amb query params.
  static Uri uri(String endpoint, {Map<String, dynamic>? queryParameters}) {
    return Uri.parse(endpoint).replace(
      queryParameters: queryParameters?.map(
        (key, value) => MapEntry(key, value?.toString()),
      ),
    );
  }
}
