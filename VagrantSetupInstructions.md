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

Install RVM
-----------
<pre><code>\curl -L https://get.rvm.io | sudo bash -s stable
</code></pre>

Log In and Out
--------------
<pre><code>exit
vagrant ssh
</code></pre>

Install Ruby and Rails
----------------------
<pre><code>
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
<pre><code>cd ~/project
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
