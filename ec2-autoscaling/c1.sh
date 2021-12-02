aws autoscaling update-auto-scaling-group \
  --auto-scaling-group-name test1 \
  --availability-zones us-east-1a \
  --launch-configuration-name test1 \
  --min-size 2 \
  --max-size 2 \
  --desired-capacity 2 \
  --health-check-type EC2 \
  --health-check-grace-period 300
  

aws autoscaling create-auto-scaling-group \
    --auto-scaling-group-name test1 \
    --launch-configuration-name test1 \
    --min-size 1 \
    --max-size 2 \
    --health-check-type EC2 \
    --health-check-grace-period 300 \
    --vpc-zone-identifier "subnet-085115e3dea5098f9,subnet-0713c84aef9a72c42"




  

ansible-playbook test.yml  -v -vvvv -u deploy -i ec2.py 
./ec2.py --host ec2-12-12-12-12.compute-1.amazonaws.com
ansible -i ec2.py -m ping tag_app_1_my_dev -u deploy
ansible -i ec2.py -u ubuntu us-east-1d -m ping
ansible -i ec2.py -u deploy -m ping tag_app_1_my_dev 
ansible -i ./ec2.py --limit 
ansible -i ec2.py --limit "tag_app-1_my-dev:&tag_app-2_my-dev-2" -m ping all
ansible -i ec2.py --limit "tag_app-1_my-dev" -m ping all
"tag_app-1_my-dev"
ansible -i ec2.py -u ubuntu us-east-1d -m ping
./ec2.py --list --profile default --refresh-cache
./ec2.py –list

ansible -i inventory/ec2.py -u ec2-user us-east-1a -m ping --key-file=vpn41.pem
ANSIBLE_PYTHON_INTERPRETER=auto_silent ansible -i inventory/ec2.py -u ec2-user us-east-1a -m ping --key-file=vpn41.pem
ANSIBLE_PYTHON_INTERPRETER=auto_silent ansible -i inventory/ec2.py -u ec2-user 44.199.209.84 -m ping --key-file=vpn41.pem
ANSIBLE_PYTHON_INTERPRETER=auto_silent ansible-playbook -i inventory/ec2.py -u ec2-user  helo.yml --key-file=vpn41.pem --extra-vars "host=us-east-1a"


- name: install1
  shell: rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

- name: install2  
  shell: rpm -ivh https://rpms.remirepo.net/enterprise/remi-release-7.rpm

- name: install3
  shell: subscription-manager repos --enable=rhel-7-server-optional-rpms
