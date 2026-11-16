/// Response models for the Object Detector API.

/// API Response wrapper.
class ObjectdetectorResponse {
  final String status;
  final dynamic error;
  final ObjectdetectorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ObjectdetectorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ObjectdetectorResponse.fromJson(Map<String, dynamic> json) => ObjectdetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ObjectdetectorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Object Detector API.

class ObjectdetectorData {
  num? imageWidth;
  num? imageHeight;
  num? objectCount;
  ObjectdetectorDataCounts? counts;
  List<ObjectdetectorDataObjectsItem>? objects;
  num? minConfidence;
  dynamic labels;

  ObjectdetectorData({
    this.imageWidth,
    this.imageHeight,
    this.objectCount,
    this.counts,
    this.objects,
    this.minConfidence,
    this.labels,
  });

  factory ObjectdetectorData.fromJson(Map<String, dynamic> json) => ObjectdetectorData(
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
      objectCount: json['objectCount'],
      counts: json['counts'] != null ? ObjectdetectorDataCounts.fromJson(json['counts']) : null,
      objects: (json['objects'] as List?)?.map((e) => ObjectdetectorDataObjectsItem.fromJson(e)).toList(),
      minConfidence: json['minConfidence'],
      labels: json['labels'],
    );
}

class ObjectdetectorDataCounts {
  num? cat;
  num? remote;
  num? couch;

  ObjectdetectorDataCounts({
    this.cat,
    this.remote,
    this.couch,
  });

  factory ObjectdetectorDataCounts.fromJson(Map<String, dynamic> json) => ObjectdetectorDataCounts(
      cat: json['cat'],
      remote: json['remote'],
      couch: json['couch'],
    );
}

class ObjectdetectorDataObjectsItem {
  String? label;
  num? confidence;
  ObjectdetectorDataObjectsItemBox? box;
  ObjectdetectorDataObjectsItemNormalizedbox? normalizedBox;

  ObjectdetectorDataObjectsItem({
    this.label,
    this.confidence,
    this.box,
    this.normalizedBox,
  });

  factory ObjectdetectorDataObjectsItem.fromJson(Map<String, dynamic> json) => ObjectdetectorDataObjectsItem(
      label: json['label'],
      confidence: json['confidence'],
      box: json['box'] != null ? ObjectdetectorDataObjectsItemBox.fromJson(json['box']) : null,
      normalizedBox: json['normalizedBox'] != null ? ObjectdetectorDataObjectsItemNormalizedbox.fromJson(json['normalizedBox']) : null,
    );
}

class ObjectdetectorDataObjectsItemBox {
  num? x;
  num? y;
  num? width;
  num? height;

  ObjectdetectorDataObjectsItemBox({
    this.x,
    this.y,
    this.width,
    this.height,
  });

  factory ObjectdetectorDataObjectsItemBox.fromJson(Map<String, dynamic> json) => ObjectdetectorDataObjectsItemBox(
      x: json['x'],
      y: json['y'],
      width: json['width'],
      height: json['height'],
    );
}

class ObjectdetectorDataObjectsItemNormalizedbox {
  num? x;
  num? y;
  num? width;
  num? height;

  ObjectdetectorDataObjectsItemNormalizedbox({
    this.x,
    this.y,
    this.width,
    this.height,
  });

  factory ObjectdetectorDataObjectsItemNormalizedbox.fromJson(Map<String, dynamic> json) => ObjectdetectorDataObjectsItemNormalizedbox(
      x: json['x'],
      y: json['y'],
      width: json['width'],
      height: json['height'],
    );
}

class ObjectdetectorRequest {
  String? image;
  num? minConfidence;

  ObjectdetectorRequest({
    this.image,
    this.minConfidence,
  });

  Map<String, dynamic> toJson() => {
      if (image != null) 'image': image,
      if (minConfidence != null) 'minConfidence': minConfidence,
    };
}
