# [Object Detector API](https://apiverve.com/marketplace/objectdetector?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Object Detector finds the objects in an image, from people, cars and traffic lights to dogs, laptops and cups, and returns each one&#x27;s label, a numeric confidence and its bounding box in pixels and as fractions of the image, plus a count per label. Filter by minimum confidence or by the labels you care about.

The Object Detector API provides a simple, reliable way to integrate object detector functionality into your applications. Built for developers who need production-ready object detector capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/objectdetector?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/objectdetector?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/objectdetector)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.ObjectDetector)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-objectdetector/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_objectdetector)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/objectdetector)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_objectdetector)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callObjectDetectorAPI() {
    try {
        const requestBody = {
    "image": "http://images.cocodataset.org/val2017/000000039769.jpg",
    "minConfidence": 0.5
};

        const response = await fetch('https://api.apiverve.com/v1/objectdetector', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callObjectDetectorAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/objectdetector" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -F "image=@/path/to/your-file"
# Accepted formats: .jpg, .jpeg, .png, .gif, .webp (max 10MB)
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/objectdetector
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/objectdetector) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.ObjectDetector
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.ObjectDetector) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-objectdetector
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-objectdetector/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_objectdetector
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_objectdetector) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/objectdetector
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/objectdetector) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_objectdetector
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_objectdetector) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:objectdetector-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/objectdetector-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Object Detector API](https://apiverve.com/marketplace/objectdetector?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/objectdetector](https://docs.apiverve.com/ref/objectdetector)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Object Detector API is commonly used for:

- **Web Applications** - Add object detector features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with object detector capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Object Detector API:

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

---

## Support & Community

- 🏠 **API Home**: [Object Detector API](https://apiverve.com/marketplace/objectdetector?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
