kubectl describe service my-nginx-nginx-ingress-controller | grep "LoadBalancer Ingress" | awk '{print $3}' > EIP
wget --quiet --tries=2 http://"$EIP":80 || exit 1