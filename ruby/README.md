# Object Detector API - Ruby Gem

Object Detector finds the objects in an image, from people, cars and traffic lights to dogs, laptops and cups, and returns each one's label, a numeric confidence and its bounding box in pixels and as fractions of the image, plus a count per label. Filter by minimum confidence or by the labels you care about.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_objectdetector'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_objectdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_objectdetector'

# Initialize the client
client = APIVerve::Objectdetector::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  image: "http://images.cocodataset.org/val2017/000000039769.jpg",
  minConfidence: 0.5
})

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ image: "http://images.cocodataset.org/val2017/000000039769.jpg", minConfidence: 0.5 })
  puts response["data"]
rescue APIVerve::Objectdetector::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Objectdetector::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Objectdetector::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/objectdetector?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/objectdetector?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/objectdetector?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
