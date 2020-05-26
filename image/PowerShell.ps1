
""
" ---> Creating powershell PerformanceCounter object"
$ms = (Measure-Command { $counter = (Get-Counter -Counter "\Memory\Available MBytes") }).TotalMilliseconds
" ---: Create took $ms ms ---"
""
" ---> Getting RawValue"
$ms = (Measure-Command {$counter[0].CounterSamples.RawValue | Out-Default }).TotalMilliseconds
" ---: Get took    $ms ms ----"
