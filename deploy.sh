docker build -t dmsanthosh/multi-client:latest -t dmsanthosh/multi-client:"$SHA" -f ./client/Dockerfile ./client
docker build -t dmsanthosh/multi-server:latest -t dmsanthosh/multi-server:"$SHA" -f ./server/Dockerfile ./server
docker build -t dmsanthosh/multi-worker:latest -t dmsanthosh/multi-worker:"$SHA" -f ./worker/Dockerfile ./worker
docker push dmsanthosh/multi-client:latest
docker push dmsanthosh/multi-server:latest
docker push dmsanthosh/multi-worker:latest

docker push dmsanthosh/multi-client:"$SHA"
docker push dmsanthosh/multi-server:"$SHA"
docker push dmsanthosh/multi-worker:"$SHA"

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=dmsanthosh/multi-server:"$SHA"
kubectl set image deployments/client-deployment client=dmsanthosh/multi-client:"$SHA"
kubectl set image deployments/worker-deployment worker=dmsanthosh/multi-worker:"$SHA"