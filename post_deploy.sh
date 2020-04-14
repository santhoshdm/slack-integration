kubectl describe service my-nginx-nginx-ingress-controller | grep "LoadBalancer Ingress" | awk '{print $3}' > EIP
wget http://"$EIP":80 -O /home/op.txt && cat /home/op.txt