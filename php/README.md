# Object Detector API - PHP Package

Object Detector finds the objects in an image, from people, cars and traffic lights to dogs, laptops and cups, and returns each one's label, a numeric confidence and its bounding box in pixels and as fractions of the image, plus a count per label. Filter by minimum confidence or by the labels you care about.

## Installation

Install via Composer:

```bash
composer require apiverve/objectdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Objectdetector\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'image' => 'http://images.cocodataset.org/val2017/000000039769.jpg',
    'minConfidence' => 0.5
]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Objectdetector\Client;
use APIVerve\Objectdetector\Exceptions\APIException;
use APIVerve\Objectdetector\Exceptions\ValidationException;

try {
    $response = $client->execute(['image' => 'http://images.cocodataset.org/val2017/000000039769.jpg', 'minConfidence' => 0.5]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/objectdetector?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/objectdetector?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/objectdetector?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
