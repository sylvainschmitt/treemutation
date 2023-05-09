functions {
  real dirichlet_multinomial_lpmf(int[] y, vector alpha) {
    real alpha_plus = sum(alpha);
    return lgamma(alpha_plus) + sum(lgamma(alpha + to_vector(y)))
                - lgamma(alpha_plus+sum(y)) - sum(lgamma(alpha));
  }
}
data {
  int<lower = 1> N  ;       // # of mutations
  int<lower = 1> S  ;       // # of type of mutations
  int<lower = 1> B  ;       // # of branches
  int<lower = 0, upper=1> Y[N, S]  ; // mutation type presence or absence for each genomic position
  vector<lower = 0, upper=1>[N] light ; // light or shadow branch
  vector[N] transmittance ; // transmittance
  int<lower = 0, upper=B> branch[N]  ; // branch
  int<lower=0> N_pred ;
  vector[N_pred] transmittance_pred ; 
}
parameters {
  vector[S] mu ; // intercept
  vector[S] alpha ; // light effect
}
model {
  mu ~ normal(0,1) ;  
  alpha ~ normal(0,1) ;
  for (n in 1:N)
    Y[n] ~ dirichlet_multinomial(softmax(mu + alpha * transmittance[n]))  ; // likelihood
}
generated quantities {
  matrix[N_pred,S] Y_pred ; 
  for(n in 1:N_pred)
    Y_pred[n,] = to_row_vector(softmax(mu + alpha * transmittance_pred[n])) ;
}
