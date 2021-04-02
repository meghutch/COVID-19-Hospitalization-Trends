change_point_test <- function(Y_mat, w = rep(1 / nrow(Y_mat), nrow(Y_mat)), 
                              t_range = 2:(ncol(Y_mat) - 2), boot_num = 500){
  nt <- ncol(Y_mat)
  nc <- nrow(Y_mat)
  
  # w are the weights of each dimension with default as 1 / nc
  
  # X here represent the whole time index, from 1 to nt.
  X <- 1:nt

  # Rescale Y using its empirical variance
  Y_mat <- standardize(Y_mat)
  
  # Calculate the observed statistics 
  fit_ob <- cal_stat(Y_mat, X, t_range, w)
  stat_ob <- fit_ob$stat
  t_min <- fit_ob$t
  
  # Use bootstrap to estimate the p-value
  
  stat_sample <- c(stat_ob)
  for (k in 1:boot_num) {
    tryCatch({
    boot_sample <- matrix(rnorm(nt * nc, 0, 1), nc, nt)
    boot_sample <- standardize(boot_sample)
    fit_sample <- cal_stat(boot_sample, X, t_range, w)
    stat_sample <- c(stat_sample, fit_sample$stat)
    }, error = function(e){print('One failure on boostrap')})
  }
  pvl <- mean(ifelse(stat_ob >= stat_sample, 1, 0))
  return(list(t.min = as.vector(t_min), p.value = pvl, stat = stat_ob))
}


standardize <- function(Y_mat){
  if (nrow(Y_mat) > 1){
    Y_mat <- as.matrix(Y_mat)
    prec_mat <- solve(cov(t(Y_mat))) 
    prec_mat_svd <- svd(prec_mat)
    prec_mat_half <- prec_mat_svd$u %*% diag((prec_mat_svd$d)^0.5) %*% t(prec_mat_svd$v)
    Y_mat <- prec_mat_half %*% Y_mat
  }else{
    Y_mat <- Y_mat / sd(Y_mat)
  }
  return(Y_mat)
}


cal_stat <- function(Y_mat, X, t_range, w = rep(1 / nrow(Y_mat), nrow(Y_mat))){
  
  R_stat <- c()
  for (t in t_range){
    stat_lst <- unlist(lapply(1:nrow(Y_mat), function(j){fit_model(Y_mat[j,], X, t)}))
    R_stat <- cbind(R_stat, stat_lst)
  }
  R_sum <- colSums(R_stat * w)
  stat <- min(R_sum)
  
  return(list(stat = stat, t = which(R_sum == stat)))
}


fit_model <- function(Y, X, t){
  Y <- as.vector(t(Y))
  Y_null <- Y[which(X <= t)]
  Y_fit <- Y[which(X > t)]
  return( - 1 / (1 / length(Y_fit) + 1 / length(Y_null)) * (max(mean(Y_fit) - mean(Y_null), 0))^2)
}


