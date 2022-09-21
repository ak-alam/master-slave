chmod +x run.sh
cd app
source .env/bin/activate
pip3 install -r requirements.txt
gunicorn -b 0.0.0.0:5000 -w=2 wsgi:app