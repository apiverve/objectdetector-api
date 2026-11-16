# Object Detector API - Dart/Flutter Client

Object Detector finds the objects in an image, from people, cars and traffic lights to dogs, laptops and cups, and returns each one's label, a numeric confidence and its bounding box in pixels and as fractions of the image, plus a count per label. Filter by minimum confidence or by the labels you care about.

[![pub package](https://img.shields.io/pub/v/apiverve_objectdetector.svg)](https://pub.dev/packages/apiverve_objectdetector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Object Detector API](https://apiverve.com/marketplace/objectdetector?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_objectdetector: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_objectdetector/apiverve_objectdetector.dart';

void main() async {
  final client = ObjectdetectorClient('YOUR_API_KEY');

  try {
    // This API requires a file upload — a JSON body is rejected with a 400.
    final response = await client.executeWithFile('/path/to/your-file');

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "imageWidth": 640,
    "imageHeight": 480,
    "objectCount": 5,
    "counts": {
      "cat": 2,
      "remote": 2,
      "couch": 1
    },
    "objects": [
      {
        "label": "cat",
        "confidence": 0.999,
        "box": {
          "x": 4,
          "y": 51,
          "width": 320,
          "height": 417
        },
        "normalizedBox": {
          "x": 0.0063,
          "y": 0.1062,
          "width": 0.5,
          "height": 0.8688
        }
      },
      {
        "label": "cat",
        "confidence": 0.9987,
        "box": {
          "x": 331,
          "y": 20,
          "width": 309,
          "height": 350
        },
        "normalizedBox": {
          "x": 0.5172,
          "y": 0.0417,
          "width": 0.4828,
          "height": 0.7292
        }
      },
      {
        "label": "remote",
        "confidence": 0.9984,
        "box": {
          "x": 329,
          "y": 67,
          "width": 42,
          "height": 128
        },
        "normalizedBox": {
          "x": 0.5141,
          "y": 0.1396,
          "width": 0.0656,
          "height": 0.2667
        }
      },
      {
        "label": "remote",
        "confidence": 0.9975,
        "box": {
          "x": 29,
          "y": 68,
          "width": 160,
          "height": 50
        },
        "normalizedBox": {
          "x": 0.0453,
          "y": 0.1417,
          "width": 0.25,
          "height": 0.1042
        }
      },
      {
        "label": "couch",
        "confidence": 0.9961,
        "box": {
          "x": 0,
          "y": 0,
          "width": 636,
          "height": 472
        },
        "normalizedBox": {
          "x": 0,
          "y": 0,
          "width": 0.9938,
          "height": 0.9833
        }
      }
    ],
    "minConfidence": 0.5,
    "labels": null
  }
}
```

## API Reference

- **API Home:** [Object Detector API](https://apiverve.com/marketplace/objectdetector?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/objectdetector](https://docs.apiverve.com/ref/objectdetector?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
