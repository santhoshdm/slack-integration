kubectl describe service my-nginx-nginx-ingress-controller | grep "LoadBalancer Ingress" | awk '{print $3}'
#cat "$EIP"
#touch ./op.txt
##wget http://"$EIP":80 -o ./op.txt && cat ./op.txt
#curl -o page.html http://"$EIP":80