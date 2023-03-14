rfc3339startTime = 2023-03-07T00:00:00Z
rfc3339stopTime = 2023-03-07T01:00:00Z

from(bucket: "noaa")
  |> range(start: rfc3339startTime, stop: rfc3339stopTime)
  