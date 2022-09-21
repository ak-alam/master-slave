# # cd /home/ec2-user/app/
# source .env/bin/activate
# git pull origin main
# pip3 install -r requirements.txt
# pkill -P1 gunicorn
ps aux | grep gunicorn | grep ec2-user | awk '{ print $2 }' | xargs kill -HUP