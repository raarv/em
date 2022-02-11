# Ejercicio 1

valores <- c(1:12)

n_factorial <- factorial(valores)

Stirling_Aprox <- function(n){
	result <- sqrt(2 * pi * n) * (n / exp(1)) ^ n
	return(result)
}

Sn <- c(Stirling_Aprox(valores))

Dn <- n_factorial - Sn

Dn_rel <- Dn/n_factorial

# Ejercicio 2

set.seed(20220118)
N <- 20000
x <- rgamma(N,shape=2,scale=1)
out <- hist(x, xlab="observaciones", ylab="frecuencia", main="Distribución Gamma")
