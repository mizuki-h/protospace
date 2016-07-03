#DB DESIGN

##user

####association
* has_many prototypes
* has_many comments
* has_many likes

####column

| column    |       data |
|:---------:|:----------:|
| id        |     integer|
| name      |      string|
| email     |      string|
| password  |      string|
| member    |      string|
| profile   |        text|
| works     |      string|
| avatar    |        text|

##prototype

####association
* has_many comments
* has_many images
* has_many likes
* belongs_to user

####column
| column    |      data  |
|:---------:|:----------:|
| id        |     integer|
| title     |      string|
| catchcopy |      string|
| concept   |        text|
| user_id   |     integer|

##comment

####association
* belongs_to  user
* belongs_to  prototype

####column
| column         |         data  |
|:--------------:|:-------------:|
| id             |        integer|
| user_id        |        integer|
| prototype_id   |        integer|
| text           |           text|

##like

####association

* belongs_to  prototype
* belongs_to  user

####column

| column         |         data  |
|:--------------:|:-------------:|
| id             |        integer|
| user_id        |        integer|
| prototype_id   |        integer|


##image

####association
* belongs_to  prototype

####column

| column         |         data  |
|:--------------:|:-------------:|
| id             |        integer|
| content        |           text|
| prototype_id   |        integer|
| status         |        integer|

