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
apt-get -y install curl vim nginx postgresql > /dev/null
</code></pre>

Install RVM, Ruby, and Rails
----------------------------
<pre><code>\curl -L https://get.rvm.io | bash -s stable
source ~/.profile
source ~/.rvm/scripts/rvm
rvm install ruby
rvm install rails
</code></pre>

Make Files from the Outside World More Accessible
-------------------------------------------------
<pre><code>ln -s /vagrant ./project
</code></pre>
