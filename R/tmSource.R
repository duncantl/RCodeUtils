tmsource =
function(file, local = globalenv(), ...)
{
    e = parse(file)
    times = lapply(e, function(x) system.time( eval( e, local) ))
    names(times) = lapply(e, function(x) paste(deparse(x), collapse = " "))
    times
}
