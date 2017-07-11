# DB設計


## users table

|Column|Type|Option|
|:--|--:|:--:|
|name|string|null: false |
|mail|string|null: false ,unique: true|
|pass|string|null: false |

### Association
・has_many :themes
・has_many :answers


## theme table

|Column|Type|Option|
|:--|--:|:--:|
|title|string||
|image|string||
|user_id|integer||

### Association
・belongs_to :user
・has_many   :answers


## answer table

|Column|Type|Option|
|:--|--:|:--:|
|answer|string||
|user_id|string||
|theme_id|string||

### Association
・belongs_to :user
・belongs_to :theme


