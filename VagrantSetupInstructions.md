Vagrant Setup Instructions
==========================

Boot the Vagrant Box
--------------------
<pre><code>vagrant up</code></pre>

SSH into the Vagrant Box
------------------------
<pre><code>vagrant ssh</code></pre>

Install some software from the repos
------------------------------------
<pre><code>apt-get update > /dev/null
apt-get -y upgrade > /dev/null
apt-get -y install curl vim nginx postgresql nginx > /dev/null
</code></pre>

Install RVM, Ruby, and Rails
----------------------------
<pre><code>\curl -L https://get.rvm.io | bash -s stable
source ~/.profile
source ~/.rvm/scripts/rvm
rvm install ruby
gem install rails
</code></pre>

Make Files from the Outside World More Accessible
-------------------------------------------------
<pre><code>ln -s /vagrant ./project
</code></pre>

Configure the Server
--------------------
<pre><code>sudo mv my_nginx.conf /etc/nginx/nginx.conf</code></pre>

Bundle the Project
------------------
<pre><code>cd ~/project/HackathonProject
bundle
</code></pre>

Start Thin
----------
<pre><code>thin start -s3 -e production</code></pre>

Restart Nginx
-------------
<pre><code>sudo service nginx restart</code></pre>

Check
-----
Go to localhost:8080 in your browser
