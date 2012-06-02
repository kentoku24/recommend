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
book7 = Book.find_by_id(7)
book8 = Book.find_by_id(8)
book9 = Book.find_by_id(9)
book10= Book.find_by_id(10)
book11= Book.find_by_id(11)
book12= Book.find_by_id(12)

Like.create(:user => user1, :book => book4)
Like.create(:user => user1, :book => book5)
Like.create(:user => user1, :book => book7)
Like.create(:user => user1, :book => book8)
Like.create(:user => user1, :book => book9)

Like.create(:user => user2, :book => book1)
Like.create(:user => user2, :book => book2)
Like.create(:user => user2, :book => book3)
Like.create(:user => user2, :book => book10)
Like.create(:user => user2, :book => book11)

Like.create(:user => user3, :book => book3)
Like.create(:user => user3, :book => book10)
Like.create(:user => user3, :book => book11)
Like.create(:user => user3, :book => book12)

Like.create(:user => user4, :book => book3)
Like.create(:user => user4, :book => book4)
Like.create(:user => user4, :book => book5)
Like.create(:user => user4, :book => book6)
Like.create(:user => user4, :book => book7)




