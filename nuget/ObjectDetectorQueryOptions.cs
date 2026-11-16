using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ObjectDetector
{
    /// <summary>
    /// Query options for the Object Detector API
    /// </summary>
    public class ObjectDetectorQueryOptions
    {
        /// <summary>
        /// The image file to analyse (JPG, PNG, GIF or WebP, up to 10 MB), or a public image URL
        /// </summary>
        [JsonProperty("image")]
        public string Image { get; set; }

        /// <summary>
        /// Lowest confidence to return, from 0.05 to 1
        /// </summary>
        [JsonProperty("minConfidence")]
        public double? MinConfidence { get; set; }

        /// <summary>
        /// Comma-separated object labels to keep, such as person,car,dog; all 80 labels when omitted
        /// </summary>
        [JsonProperty("labels")]
        public string Labels { get; set; }
    }
}
