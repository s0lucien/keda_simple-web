scp:
	scp -rp -i ~/etoro-lucian.pem /mnt/c/Users/lti/code/etoro/ azureuser@40.91.253.32:~/

kube-login:
	az login -i
	az aks get-credentials -n devops-interview-aks -g  devops-interview-rg
	kubelogin convert-kubeconfig -l msi

kube-apply-simple-web:
	kubectl apply -f kubernetes/simple-web.yaml --namespace=lucian

kube-destroy-simple-web:
	kubectl delete -f kubernetes/simple-web.yaml --namespace=lucian

helm-deploy:
	helm upgrade --install lucian-simple-web helm/keda_simple-web --values helm/keda_simple-web/values.yaml --namespace=lucian

helm-destroy:
	helm uninstall lucian-simple-web --namespace=lucian