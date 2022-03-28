require 'mysql2'

def create_db_client
  Mysql2::Client.new(
    :host => 'localhost',
    :username => 'bbb',
    :password => 'aaa',
    :database => 'dummy_db'
  )
end

def get_categories
  client = create_db_client
  client.query("select * from categories")
end

def get_items_with_categories
  client = create_db_client
  client.query("select * from items join item_categories on item_categories.id = items.category_id")
end

def get_items_by_price(price)
  client = create_db_client
  client.query("select * from items where price < #{price}")
end