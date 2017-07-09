edebug =
function(expr, env = globalenv())
{
    e = substitute(expr)
    eval(substitute(debug(x), list(x = e[[1]])), env)
    
    x = substitute(undebug(x), list(x = e[[1]]))
    on.exit(eval(x))

    eval(expr, env)
}



