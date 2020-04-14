kubectl describe service my-nginx-nginx-ingress-controller | grep "LoadBalancer Ingress" | awk '{print $3}' > EIP
print "$EIP"
touch ./op.txt
wget http://"$EIP":80 -O ./op.txt && cat ./op.txt