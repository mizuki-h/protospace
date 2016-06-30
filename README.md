#DB DESIGN

##user

####association
* has_many prototype
* has_many comment
* has_many like

####column
* id         　　:INT
* name        :string
* email     :string
* password    :string
* member      :string
* profile     :text
* works     :string
* avatar      :text

##prototype

####association
* has_many comment
* has_many image
* has_many like
* belongs_to user

####column
* id          :INT
* title           :string  
* image           :text
* catchcopy       :string
* concept         :text
* user_id         :INT

##comment

####association
* belongs_to  user
* belongs_to  prototype

####column
* id            :INT
* user_id     :INT
* prototype_id  :INT
* text      :text

##like

####association

* belongs_to  prototype

####column

* id            :INT
* user_id     :INT
* prototype_id  :INT

##image

####association
* belongs_to  prototype

####column
* id            :INT
* image   :text
* prototype_id  :INT
