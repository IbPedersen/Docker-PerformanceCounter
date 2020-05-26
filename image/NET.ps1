
""
" ---> Creating .NET PerformanceCounter object ---"
$ms = (Measure-Command { $pc = New-Object System.Diagnostics.PerformanceCounter("Memory", "Available MBytes", $true) }).TotalMilliseconds
" ---: Create took $ms ms ---"
""
" ---> Getting RawValue ---"
$ms = (Measure-Command { $pc.RawValue | Out-Default }).TotalMilliseconds
" ---: Get took    $ms ms ---"
