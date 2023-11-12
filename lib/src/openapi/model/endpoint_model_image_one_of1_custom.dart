//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class EndpointModelImageOneOf1Custom {
  /// Returns a new [EndpointModelImageOneOf1Custom] instance.
  EndpointModelImageOneOf1Custom({
    this.credentials,
    this.env = const {},
    this.healthRoute,
    this.port = 80,
    required this.url,
  });

  EndpointImageCredentials? credentials;

  /// Container environment variables
  Map<String, String> env;

  /// Container health route
  String? healthRoute;

  /// Endpoint API port
  ///
  /// Minimum value: 0
  int? port;

  /// URL fo the container
  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointModelImageOneOf1Custom &&
          other.credentials == credentials &&
          other.env == env &&
          other.healthRoute == healthRoute &&
          other.port == port &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (credentials == null ? 0 : credentials!.hashCode) +
      (env.hashCode) +
      (healthRoute == null ? 0 : healthRoute!.hashCode) +
      (port == null ? 0 : port!.hashCode) +
      (url.hashCode);

  @override
  String toString() =>
      'EndpointModelImageOneOf1Custom[credentials=$credentials, env=$env, healthRoute=$healthRoute, port=$port, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (credentials != null) {
      json[r'credentials'] = credentials;
    } else {
      json[r'credentials'] = null;
    }
    json[r'env'] = env;
    if (healthRoute != null) {
      json[r'health_route'] = healthRoute;
    } else {
      json[r'health_route'] = null;
    }
    if (port != null) {
      json[r'port'] = port;
    } else {
      json[r'port'] = null;
    }
    json[r'url'] = url;
    return json;
  }

  /// Returns a new [EndpointModelImageOneOf1Custom] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointModelImageOneOf1Custom? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointModelImageOneOf1Custom[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointModelImageOneOf1Custom[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointModelImageOneOf1Custom(
        credentials: EndpointImageCredentials.fromJson(json[r'credentials']),
        env: mapCastOfType<String, String>(json, r'env') ?? const {},
        healthRoute: mapValueOfType<String>(json, r'health_route'),
        port: mapValueOfType<int>(json, r'port') ?? 80,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<EndpointModelImageOneOf1Custom> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointModelImageOneOf1Custom>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointModelImageOneOf1Custom.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointModelImageOneOf1Custom> mapFromJson(dynamic json) {
    final map = <String, EndpointModelImageOneOf1Custom>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointModelImageOneOf1Custom.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointModelImageOneOf1Custom-objects as value to a dart map
  static Map<String, List<EndpointModelImageOneOf1Custom>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointModelImageOneOf1Custom>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointModelImageOneOf1Custom.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}
