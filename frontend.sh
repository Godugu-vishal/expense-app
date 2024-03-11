apt install nginx -y

# Create the directory if it doesn't exist
sudo mkdir -p /etc/nginx/default.d/

# Copy the file to the destination
sudo cp expense.conf /etc/nginx/default.d/


systemctl enable nginx
systemctl start nginx

rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip



systemctl restart nginx