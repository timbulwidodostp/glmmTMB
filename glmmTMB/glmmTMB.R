# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fit a generalized linear mixed model (GLMM) using Template Model Builder (TMB) Use glmmTMB With (In) R software
install.packages("glmmTMB")
library("glmmTMB")
glmmTMB = read.csv("https://raw.githubusercontent.com/timbulwidodostp/glmmTMB/main/glmmTMB/glmmTMB.csv",sep = ";")
# Estimation Fit a generalized linear mixed model (GLMM) using Template Model Builder (TMB) Use glmmTMB With (In) R software
glmmTMB_1 <- glmmTMB(incidence ~ period + (1|herd), family=poisson, data=glmmTMB)
summary(glmmTMB_1)
# Zero-inflated negative binomial model
glmmTMB_2 <- glmmTMB(incidence ~ period + (1|herd), family=nbinom2, data=glmmTMB)
summary(glmmTMB_2)
# Hurdle Poisson model
glmmTMB_3 <- glmmTMB(incidence ~ period + (1|herd), zi=~period, family=truncated_poisson, data=glmmTMB)
summary(m3)
# Binomial model
glmmTMB_4 <- glmmTMB(cbind(incidence, size-incidence) ~ period + (1|herd), family=binomial, data=glmmTMB)
summary(glmmTMB_4)
# Fit a generalized linear mixed model (GLMM) using Template Model Builder (TMB) Use glmmTMB With (In) R software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished