== README

##protospace

##create table

* user
* prototype
* comment


##association

####comment table

* belongs_to  user  
* belongs_to  prototype  


####user table

* has_many prototype  
* has_many comment  


####prototype

* has_many comment  
* belongs_to user  



##column and data

#### user
  name        :varchar  
  email     :varchar  
  password    :varchar  
  member      :varchar  
  profile     :varchar  
  works     :varchar  
  avatar      :text  

#### prototype
  title     :text  
  image     :text  
  catchcopy   :text  
  concept     :text  
  tag       :text  
  user_id     :INT  

#### comment
  user_id     :INT  
  prototype_id  :INT  
  text      :text  
  like      :BIT  



Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
