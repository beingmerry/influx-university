import "experimental/csv"

relativeToNow = (tables=<-) => tables
    |> elapsed()
    |> sort(columns: ["_time"], desc: true)
    |> cumulativeSum(columns: ["elapsed"])
    |> map(fn: (r) => ({r with _time: time(v: int(v: now()) - r.elapsed * 1000000000)}))csv.from(url: "https://influx-testdata.s3.amazonaws.com/noaa.csv")
    |> relativeToNow()
    |> limit(n: 100)
    |> to(bucket: "noaa")