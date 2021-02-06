# special-barnacle

### The Goal

Right now, we want to be able to press a button and go and get the avalanche forecast rose for every station that does it in America that is on the avalanche.org map. Yes, I know they have an API with the map-layer but the data that is there is actually too simplistic. I believe there is better data in that comes from the NAC and we just need to find it. The Washington scraper is a good one to start with because we were able to find the NAC source and look at the JSON data that is much better than what the map layer has from avalanche.org even though it is the same API.

As an example,
 [This](https://api.avalanche.org/v2/public/product?type=forecast&center_id=NWAC&zone_id=148) is the the NWAC zone ID 148 from the forecast section of the API
 ```
 "148": {
    "id": 95716,
    "published_time": "2021-02-05T02:20:00+00:00",
    "expires_time": "2021-02-06T02:00:00+00:00",
    "created_at": "2021-02-05T00:03:00+00:00",
    "updated_at": "2021-02-05T02:31:34+00:00",
    "author": "Robert Hahn",
    "product_type": "forecast",
    "bottom_line": "<p>&nbsp;You can easily trigger a large and dangerous wind slab in near and above treeline terrain. Given the strong to extreme winds through Friday morning, you may find these slabs extending well below their typical start zones.&nbsp; Give these slabs some respect by avoiding wind-loaded terrain steeper than 35 degrees.&nbsp;</p>",
    "hazard_discussion": "<p><span style=\"font-weight: 400;\">Mt Hood Meadows Pro Patrol reported a stabilizing upper snowpack on Thursday. The only avalanche activity involved Wet Loose on south-facing slopes due to warming and partial sunshine on the east side of Mt. Hood. You may find a thin temperature or light \"mist\" crust on southerly aspects extending up to 7000 ft. This thin crust may be a plane of failure for avalanche activity in some areas on Friday.&nbsp;</span></p>\n<p><span style=\"font-weight: 400;\">The stout mid-January crust is considered the new \"ground\" with a strong snowpack structure in place below this layer. Weak and faceted snow just above the stout rain crust was responsible for a number of avalanches Thursday-Saturday, but no new evidence of avalanches on this interface suggests these facets are gaining strength.&nbsp;</span></p>\n<p><strong>During the ongoing Covid-19 pandemic, continue to follow the latest guidance from local, state, and federal health officials. Avoid unnecessary risks that could impact first responders and stress medical resources.&nbsp; Wear a mask when appropriate, practice social distancing, and consider recreating closer to home.</strong></p>",
    "weather_discussion": null,
    "announcement": null,
    "status": "published",
    "media": [
      {
        "id": 1,
        "url": {
          "large": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg",
          "medium": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg",
          "original": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg",
          "thumbnail": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg"
        },
        "type": "image",
        "caption": "Blowing snow, firm and textured snow, and cornice formation are all evidence that wind slabs are likely to be forming on lee slopes."
      },
      {
        "id": 2,
        "url": {
          "large": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/IMG_4806_60038907033cf.jpg",
          "medium": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/IMG_4806_60038907033cf.jpg",
          "original": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/IMG_4806_60038907033cf.jpg",
          "thumbnail": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/IMG_4806_60038907033cf.jpg"
        },
        "type": "image",
        "caption": "(1/16/21) Tilley Jane trail: At lower elevations, travel hazards may be lurking under the new snow. "
      },
      {
        "id": 3,
        "url": {
          "large": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/newton1-17-21_60076fe335cb4.jpg",
          "medium": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/newton1-17-21_60076fe335cb4.jpg",
          "original": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/newton1-17-21_60076fe335cb4.jpg",
          "thumbnail": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/newton1-17-21_60076fe335cb4.jpg"
        },
        "type": "image",
        "caption": "(1/17/2021) Prior to the new snow, slopes like the one pictured here in Newton Canyon were deceptively icy. Debris from a very large (D3) wet avalanche last week can be seen in the valley bottom."
      }
    ],
    "weather_data": null,
    "json_data": null,
    "avalanche_center": {
      "id": "NWAC",
      "name": "Northwest Avalanche Center",
      "url": "https://www.nwac.us/",
      "city": "Seattle",
      "state": "WA"
    },
    "forecast_avalanche_problems": [
      {
        "id": 24678,
        "forecast_id": 95716,
        "avalanche_problem_id": 3,
        "rank": 1,
        "likelihood": "likely",
        "discussion": "<p>You can trigger large and dangerous wind slabs near and above treeline. We expect 10-12\" of snow to be transported by strong to extreme winds, wind-stripping or loading most slopes near and above treeline. Snow may deposit on mid-slope terrain features and where you don't expect them. Slabs are likely to be large, firm, and difficult to escape in exposed terrain. Seek wind-sheltered terrain where possible. Avoid areas of active snow transport and wind-loading. Pay attention to cracking snow surfaces and firm, punchy layering. Avoid all wind-loaded slopes steeper than 35 degrees.</p>\n<p>Below treeline, slabs may be smaller, softer and easier to steer around if you can identify the subtle, stiffer slab or find 8\" of fresh snow. In either case, keep your slope angle below 35 degrees and avoid convex rollovers.</p>\n<p>&nbsp;</p>",
        "media": {
          "url": {
            "large": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg",
            "medium": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg",
            "original": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg",
            "thumbnail": "https://avalanche-org-media.s3.us-west-2.amazonaws.com/DG%20wind%20transport%20and%20texture_5fbdac45a3231.jpg"
          },
          "type": "image",
          "caption": "Blowing snow, firm and textured snow, and cornice formation are all evidence that wind slabs are likely to be forming on lee slopes."
        },
        "location": [
          "north upper",
          "northeast upper",
          "east upper",
          "southeast upper",
          "south upper",
          "southwest upper",
          "west upper",
          "northwest upper",
          "north middle",
          "northeast middle",
          "east middle",
          "southeast middle",
          "south middle",
          "southwest middle",
          "west middle",
          "northwest middle",
          "north lower",
          "northeast lower",
          "east lower",
          "southeast lower",
          "south lower",
          "southwest lower",
          "west lower",
"northwest lower"
        ],
        "size": [
          "2",
"2"
        ],
        "name": "Wind Slab",
        "problem_description": "Wind Slab avalanches are the release of a cohesive layer of snow (a slab) formed by the wind. Wind typically transports snow from the upwind sides of terrain features and deposits snow on the downwind side. Wind slabs are often smooth and rounded and sometimes sound hollow, and can range from soft to hard. Wind slabs that form over a persistent weak layer (surface hoar, depth hoar, or near-surface facets) may be termed Persistent Slabs or may develop into Persistent Slabs.",
        "icon": "http://api.avalanche.org/img/avalanche_problems/WindSlab.png"
      }
    ],
    "danger": [
      {
        "lower": 2,
        "upper": 3,
        "middle": 3,
        "valid_day": "current"
      },
      {
        "lower": 2,
        "upper": 3,
        "middle": 2,
        "valid_day": "tomorrow"
      }
    ],
    "forecast_zone": [
      {
        "id": 148,
        "name": "Mt Hood",
        "url": "http://www.nwac.us/avalanche-forecast/#/mt-hood\n",
        "state": "OR"
      }
    ]
  }
 ```

 And [this](https://api.avalanche.org/v2/public/products/map-layer/NWAC) is the data we get from NWAC zone ID 148 from the map layers API
 ```
 {
  "type": "Feature",
  "id": 148,
  "properties": {
    "name": "Mt Hood",
    "center": "Northwest Avalanche Center",
    "timezone": "America/Los_Angeles",
    "state": "WA",
    "rating": 3,
    "travel_advice": "Dangerous avalanche conditions. Careful snowpack evaluation, cautious route-finding and conservative decision-making essential.",
    "danger": "considerable",
    "danger_level": 3,
    "color": "#ff9933",
    "stroke": "#484848",
    "font_color": "#ffffff",
    "link": "http://www.nwac.us/avalanche-forecast/#/mt-hood\n",
    "start_date": "2021-02-05T02:20:00",
    "end_date": "2021-02-06T02:00:00",
    "warning": {
      "product": null,
      "start_date": null,
      "end_date": null,
      "reason": null
    }
  },
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [
          -121.9298,
45.2792
        ],
        [
          -121.952,
45.326
        ],
        [
          -121.9315,
45.3659
        ],
        [
          -121.8805,
45.4445
        ],
        [
          -121.8473,
45.4646
        ],
        [
          -121.8032,
45.4794
        ],
        [
          -121.7216,
45.4921
        ],
        [
          -121.6435,
45.4839
        ],
        [
          -121.5219,
45.4578
        ],
        [
          -121.431,
45.3475
        ],
        [
          -121.477,
45.2279
        ],
        [
          -121.5565,
45.2055
        ],
        [
          -121.623,
45.1939
        ],
        [
          -121.7035,
45.1916
        ],
        [
          -121.8579,
45.2292
        ],
        [
          -121.92,
45.2646
        ],
        [
          -121.9298,
45.2792
        ]
      ]
    ]
  }
}
 ```

### TODOs
**[Project TODO List](project.todo)**
- [X] Get a list of every forecast station in the US
  - Regions
    - Alaska
      - [Eastern Alaska Range](https://alaskasnow.org/eastern-alaska/)
        - The site has lots of others too
      - [Hatcher Pass](https://hpavalanche.org/forecast/hatcherpass/)
      - [Chugach State Park](https://www.cnfaic.org/forecast/turnagain/)
    - Washington
      - [Olympics](https://nwac.us/avalanche-forecast/#/olympics)
        - NAC does the whole state it seems
    - Oregon
      - [Wallowa](https://www.wallowaavalanchecenter.org/forecasts/#/northern-wallowas)
      - [Central Cascades](https://www.coavalanche.org/avalanche-forecast#/all)
    - Idaho
      - [Kootenai](https://www.idahopanhandleavalanche.org/forecasts/#/kootenai)
      - [Sawtooths](https://www.sawtoothavalanche.com/forecasts/#/sawtooth-&-western-smoky-mtns)
      - [Payette](https://payetteavalanche.org/forecasts/#/pac-advisory-area)
    - Montana
      - [Flatheads](https://flatheadavalanche.org/avalanche-forecast#/whitefish-range)
        - [Example area of avalanche.org API showing good data](https://api.avalanche.org/v2/public/product/95730)
      - [Gallatin](https://www.mtavalanche.com/forecast/bridgers)
    - Wyoming
      - [Bridger-Teton](http://jhavalanche.org/viewOther?area=tog)
    - Utah
      - [Utah Avalanche Center](https://utahavalanchecenter.org/forecast/logan)
    - California
      - [Shasta](https://www.shastaavalanche.org/#/all)
      - [Sierra Avy](https://www.sierraavalanchecenter.org/forecasts/#/central-sierra-nevada)
      - [Bridgeport](https://www.bridgeportavalanchecenter.org/bwra-snowpack-summary)
      - [Eastern Sierra Avy](https://www.esavalanche.org/advisory)
    - Colorado
      - [Colorado Avalanche Information Center](https://www.avalanche.state.co.us/forecasts/backcountry-avalanche/steamboat-flat-tops/)
    - New Mexico
      - [Taos](https://taosavalanchecenter.org/advisory/)
    - Arizona
      - [San Francisco Range](https://kachinapeaks.org/snowpack)
    - New Hampshire
      - [Mount Washington](https://mountwashingtonavalanchecenter.org/advisory/)

- [ ] Build a scraper for each one which pulls the main roses for each subregion and stores them neatly for the day
- [ ] Build a main script to trigger each one and do the image storage (locally for now)
