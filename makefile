scp:
	scp -rp -i ~/etoro-lucian.pem /mnt/c/Users/lti/code/etoro/ azureuser@40.91.253.32:~/

kube-apply-simple-web:
	kubectl apply -f kubernetes/simple-web.yaml --namespace=lucian

kube-destroy-simple-web:
	kubectl delete -f kubernetes/simple-web.yaml --namespace=lucian