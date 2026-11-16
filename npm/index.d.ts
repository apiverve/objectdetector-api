declare module '@apiverve/objectdetector' {
  export interface objectdetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface objectdetectorResponse {
    status: string;
    error: string | null;
    data: ObjectDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ObjectDetectorData {
      imageWidth:    number | null;
      imageHeight:   number | null;
      objectCount:   number | null;
      counts:        Counts;
      objects:       Object[];
      minConfidence: number | null;
      labels:        null;
  }
  
  interface Counts {
      cat:    number | null;
      remote: number | null;
      couch:  number | null;
  }
  
  interface Object {
      label:         null | string;
      confidence:    number | null;
      box:           Box;
      normalizedBox: Box;
  }
  
  interface Box {
      x:      number | null;
      y:      number | null;
      width:  number | null;
      height: number | null;
  }

  export default class objectdetectorWrapper {
    constructor(options: objectdetectorOptions);

    execute(callback: (error: any, data: objectdetectorResponse | null) => void): Promise<objectdetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: objectdetectorResponse | null) => void): Promise<objectdetectorResponse>;
    execute(query?: Record<string, any>): Promise<objectdetectorResponse>;
  }
}
