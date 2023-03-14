SELECT
  *
FROM
  'airSensors'
WHERE
  time >= now() - interval '30 minutes'