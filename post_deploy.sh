touch ./eip.txt
kubectl describe service my-nginx-nginx-ingress-controller | grep "LoadBalancer Ingress" | awk '{print $3}' > ./eip.txt
cat ./eip.txt
cat ./eip.txt > EIP
cat "$EIP"
print "$EIP"
cat ./eip.txt > EIP | curl http://"$EIP":80
#touch ./op.txt
##wget http://"$EIP":80 -o ./op.txt && cat ./op.txt
#curl -o page.html http://"$EIP":80