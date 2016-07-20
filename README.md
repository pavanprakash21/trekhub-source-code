**1. Latest Ruby**

```
rbenv install 2.3.1
rbenv rehash
rbenv global 2.3.1
```

**2. Stable Rails Version**
```
gem install rails -v 4.2.6
```

**3. ElasticSearch**
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openjdk-9-jre
java -version; To make sure it is installed properly
sudo apt-get -y install oracle-java9-installer

cd ~
cd Downloads/
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.3.4.deb
cd ~
sudo dpkg -i elasticsearch-2.3.4.deb
sudo update-rc.d elasticsearch defaults
```

**4. Edit ElasticSearch Configuration**
```
sudo subl /etc/elasticsearch/elasticsearch.yml
```
Uncomment node.name and cluster.name
Save and close

**5. Start ElasticSearch**
```
sudo service elasticsearch start
```
(Also, stop and restart are also available)

**6. Test ElasticSearch**
```
curl -X GET 'http://localhost:9200'
```
Output should be something like following

```
{
  "name" : "node-1",
  "cluster_name" : "graylog2",
  "version" : {
    "number" : "2.3.4",
    "build_hash" : "e455fd0c13dceca8dbbdbb1665d068ae55dabe3f",
    "build_timestamp" : "2016-06-30T11:24:31Z",
    "build_snapshot" : false,
    "lucene_version" : "5.5.0"
  },
  "tagline" : "You Know, for Search"
}
```

**7. Clone the app**
```
cd ~
cd Documents/website
git clone git@github.com:draconiandev/didactic-tribble.git
cd into the folder
```

**8. Start the app**
```
bundle install
bundle exec elastic search -q
rake db:setup
rake db:migrate ; rake db:rollback ; rake db:migrate ; rake db:test:prepare

rake elasticsearch:reindex

rails server
```

**9. Create an Admin Account**

Login through website
Go to rails console
```
rails console

p = Person.first
p.role = "admin"
p.save
```
