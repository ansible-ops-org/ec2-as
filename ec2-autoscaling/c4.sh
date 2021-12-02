  

aws autoscaling create-auto-scaling-group \
    --auto-scaling-group-name test1 \
    --launch-configuration-name test1 \
    --min-size 1 \
    --max-size 2 \
    --health-check-type EC2 \
    --health-check-grace-period 300 \
    --vpc-zone-identifier "subnet-085115e3dea5098f9,subnet-0713c84aef9a72c42"




  

