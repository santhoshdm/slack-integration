touch ./eip.txt
kubectl describe service my-nginx-nginx-ingress-controller | grep "LoadBalancer Ingress" | awk '{print $3}' > ./eip.txt
new_var=$(cat ./eip.txt)
cat $new_var
curl http://"$new_var":80
#touch ./op.txt
##wget http://"$EIP":80 -o ./op.txt && cat ./op.txt
#curl -o page.html http://"$EIP":80
rm -rf ./eip.txt