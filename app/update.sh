# cd /home/ec2-user/app/
source .env/bin/activate
git pull origin main
pip3 install -r requirements.txt
# ps aux | grep gunicorn | grep flask-sample | awk '{ print $2 }' | xargs kill -HUP
pkill -P1 gunicorn