data {
  int<lower=0> N ;
  int mutations[N] ;
  vector[N] AF ;
}
parameters {
  real n0 ;
  real beta ;
  real p0 ;
  real gamma ;
}
model {
  mutations ~ binomial_logit(poisson_log(n0 + beta*AF), p0 + gamma*AF) ;
}

