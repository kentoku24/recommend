user1 = User.find_by_id(1)
user2 = User.find_by_id(2)
user3 = User.find_by_id(3)
user4 = User.find_by_id(4)

book1 = Book.find_by_id(1)
book2 = Book.find_by_id(2)
book3 = Book.find_by_id(3)
book4 = Book.find_by_id(4)
book5 = Book.find_by_id(5)
book6 = Book.find_by_id(6)

Like.create(:user => user1, :book => book1)
Like.create(:user => user1, :book => book2)
Like.create(:user => user1, :book => book3)

Like.create(:user => user2, :book => book2)
Like.create(:user => user2, :book => book3)

Like.create(:user => user3, :book => book3)
Like.create(:user => user3, :book => book4)

Like.create(:user => user4, :book => book4)
Like.create(:user => user4, :book => book5)
Like.create(:user => user4, :book => book6)




