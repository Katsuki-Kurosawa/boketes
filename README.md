# DB設計

## users table

|Column|Type|Option|
|:--|--:|:--:|
|name|string|null: false |
|mail|string|null: false |
|pass|string|null: false |

### Association
・has_many :themes
・has_many :answers


## theme table

|Column|Type|Option|
|:--|--:|:--:|
|title|text||
|image|string||
|user_id|integer||


### Association
・belongs_to :user
・has_many   :answers


## answer table

|Column|Type|Option|
|:--|--:|:--:|
|answer|string|index: true|
|user_id|string|index: true|
|theme_id|string|index: true|

### Association
・has_many :users , through: group_users 
・has_many :messages

