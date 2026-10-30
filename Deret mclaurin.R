bisection <- function(f, a, b, tol = 0.000001) {
  
  hasil <- data.frame(
    Iterasi = integer(),
    a = numeric(),
    b = numeric(),
    xr = numeric(),
    f_xr = numeric(),
    Error = numeric()
  )
  
  for (i in 1:100) {
    
    xr <- (a + b) / 2
    fxr <- f(xr)
    
    if (i == 1) {
      error <- NA
    } else {
      error <- abs(xr - hasil$xr[i - 1])
    }
    hasil <- rbind(
      hasil,
      data.frame(
        Iterasi = i,
        a = a,
        b = b,
        xr = xr,
        f_xr = fxr,
        Error = error
      )
    )
    
    if (abs(fxr) < tol) {
      break
    }
    
    if (f(a) * fxr < 0) {
      b <- xr
    } else {
      a <- xr
    }
  }
  return(hasil)
}


hasil_bisection <- bisection(
  f,
  1,
  2
)


print(hasil_bisection)