cd app
source .env/bin/activate
pip3 install -r requirements.txt
# gunicorn -b 0.0.0.0:5000 -w=2 wsgi:app
/home/ec2-user/.local/bin/gunicorn -b 0.0.0.0:5000 -w=2 wsgi:app > /tmp/logs 2>&1 &