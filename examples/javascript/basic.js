/**
 * Object Detector API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Object Detector API.
 * API Documentation: https://docs.apiverve.com/ref/objectdetector
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/objectdetector';

/**
 * Make a POST request to the Object Detector API
 */
async function callObjectDetectorAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;image&quot;: &quot;http://images.cocodataset.org/val2017/000000039769.jpg&quot;,
    &quot;minConfidence&quot;: 0.5
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callObjectDetectorAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
