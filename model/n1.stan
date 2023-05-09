functions {
  real dirichlet_multinomial_lpmf(int[] y, vector alpha) {
    real alpha_plus = sum(alpha);
    return lgamma(alpha_plus) + sum(lgamma(alpha + to_vector(y)))
                - lgamma(alpha_plus+sum(y)) - sum(lgamma(alpha));
  }
}
data {
  int<lower = 1> N  ;       // # of mutations
  int<lower = 1> S  ;       // # of spectra of mutations
  int<lower = 1> B  ;       // # of branches
  int<lower = 0, upper=1> Y[N, S]  ; // mutation spectra presence or absence for each genomic position
  vector<lower = 0, upper=1>[N] light ; // light or shadow branch
  int<lower = 0, upper=B> branch[N]  ; // branch
}
parameters {
  vector[S] mu ; // intercept
  vector[S] alpha ; // light effect
}
model {
  mu ~ normal(0,1) ;  
  alpha ~ normal(0,1) ;
  for (n in 1:N)
    Y[n] ~ dirichlet_multinomial(softmax(mu + alpha * light[n]))  ; // likelihood
}
