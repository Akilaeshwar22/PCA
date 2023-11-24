USArrests
View(USArrests)
states=row.names(USArrests)
states
names(USArrests) 
apply(USArrests , 1, mean) 
apply(USArrests , 1, var)
apply(USArrests , 2, mean) 
apply(USArrests , 2, var)
pr.out=prcomp(USArrests , scale=TRUE)
names(pr.out) 
pr.out$center 
pr.out$scale 
pr.out$rotation 
dim(pr.out$x) 
biplot(pr.out , scale=0)

pr.out$rotation=-pr.out$rotation
pr.out$x=-pr.out$x
biplot(pr.out , scale=0)
pr.out$sdev 
pr.var=pr.out$sdev ^2
pr.var 
pve=pr.var/sum(pr.var)
pve 
plot(pve , xlab="Principal Component ", ylab="Proportion of Variance Explained ", ylim=c(0,1),type="b")
plot(cumsum(pve), xlab="Principal Component ", ylab=" Cumulative Proportion of Variance Explained ", ylim=c(0,1), type="b")

k <- 2
data_pca <- predict(pr.out, newdata = USArrests)[, 1:k]
print(data_pca)
