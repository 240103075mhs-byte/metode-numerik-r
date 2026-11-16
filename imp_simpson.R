simpson13_comp <- function(f, a, b, n){
  if(n <= 0 || n %% 2 != 0){
    stop("n harus berupa bilangan bulat positif dan genap.")
  }
  
  h <- (b-a)/n
  x <- seq(a, b, length.out = n+1)
  
  sum_odd <- sum(f(x[seq(2, n, by = 2)]))
  
  sum_even <- if(n >= 4){
    sum(f(x[seq(3, n - 1, by = 2)]))
  } else {
    0
  }
  
  (h/3) * (
    f(a) + f(b) +
    4 * sum_odd +
    2 * sum_even
  )
}
simpson13_comp(f, 0, 2, 4)