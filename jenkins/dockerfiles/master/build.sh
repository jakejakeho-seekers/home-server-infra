cp ~/.minikube/profiles/minikube/client.crt client.crt
cp ~/.minikube/profiles/minikube/client.key client.key 
cp ~/.minikube/ca.crt ca.crt
docker build -t jenkins .
rm client.crt
rm client.key
rm ca.crt