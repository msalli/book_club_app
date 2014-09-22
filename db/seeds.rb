# require 'vacuum'
# require 'active_support/core_ext/hash/conversions'

# creating users
users = User.create([{
  first_name: 'Alli',
  last_name: 'Cernoch',
  email: 'alli.cernoch@gmail.com',
  password_digest: 'password',
  image_url: 'https://pbs.twimg.com/profile_images/481312367855153153/BDlq1ulX.jpeg'
  },
  {
  first_name: 'Connie',
  last_name: 'Chang',
  email: 'connie.chang89@gmail.com',
  password_digest: 'password',
  image_url: 'https://pbs.twimg.com/profile_images/433362785091604481/7TzmhgdN.jpeg'
  },
  {
  first_name: 'Steph',
  last_name: 'Monette',
  email: 'steph.monette@gmail.com',
  password_digest: 'password',
  image_url: 'https://pbs.twimg.com/profile_images/511059016869376000/aQS6a50s.jpeg'
  },
  {
  first_name: 'Cameron',
  last_name: 'Jacoby',
  email: 'cameron.jacoby@gmail.com',
  password_digest: 'password',
  image_url: 'https://pbs.twimg.com/profile_images/480490404723175425/i_FCIW1-.jpeg'
  },
  {
  first_name: 'Erica',
  last_name: 'Tabano',
  email: 'erica.tabano@gmail.com',
  password_digest: 'password',
  image_url: 'https://pbs.twimg.com/profile_images/464849237889810434/dkq37yDa.jpeg'
  }])




  # creating books db
  #  def amazon_request(book)
  #   req = Vacuum.new('US')

  #   req.configure(
  #     aws_access_key_id:     ENV["AMAZON_ACCESS_KEY"],
  #     aws_secret_access_key: ENV["AMAZON_SECRET"],
  #     associate_tag:         ENV["ASSOCIATE_TAG"]
  #   )

  #   params = {
  #     'SearchIndex' => 'Books',
  #     'Version' => '2013-08-01',
  #     'Title' => book,
  #     'IncludeReviewsSummary' => false,
  #     'MerchantId' => 'Amazon',
  #     'ResponseGroup' => 'Medium',
  #     'Sort' => 'salesrank'
  #   }

  #   response = req.item_search(query: params)
  #   hash = Hash.from_xml(response.body)

  #   enterHash = hash["ItemSearchResponse"]["Items"]["Item"]
  #   enterHash.each do |res|
  #       link = res["DetailPageURL"]
  #       author = res["ItemAttributes"]["Author"]
  #       title = res["ItemAttributes"]["Title"]
  #       lg_img = res["LargeImage"]["URL"]
  #       # ap res["EditorialReviews"]["EditorialReview"]

  #       book = {:title => title, :author => author, :lg_img => lg_img, :link => link }
  #       myBooks = []

  #       myBooks.push(book)
  #     break
  #   end
  # end

  # def pass_books(books)
  #   books.each do |book|
  #     amazon_request(book)
  #   end
  # end


  #       booksArr = ["The Goldfinch",
  #         "Pride and Prejudice",
  #         "Gone Girl",
  #         "Personal",
  #         "The Witch With No Name",
  #         "The Alchemist",
  #         "Outlander",
  #         "Mean Streak",
  #         "Big Little Lies",
  #         "The King's Curse",
  #         "The Children Act",
  #       ]

  #   pass_books(booksArr)

    books = Book.create([{
      title: "The Goldfinch",
      author: "Donna Tartt",
      lg_img: "http://ecx.images-amazon.com/images/I/41daf5o2wYL.jpg",
      link: "http://www.amazon.com/The-Goldfinch-Pulitzer-National-Finalists/dp/0316055433%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0316055433"
      },
      {
      title: "Pride and Prejudice",
      author: "Jane Austen",
      lg_img: "http://ecx.images-amazon.com/images/I/51N-Hpq0NNL.jpg",
      link: "http://www.amazon.com/Pride-Prejudice-Dover-Thrift-Editions/dp/0486284735%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0486284735"
      },
      {
      title: "Gone Girl: A Novel",
      author: "Gillian Flynn",
      lg_img: "http://ecx.images-amazon.com/images/I/41yZreG2lcL.jpg",
      link: "http://www.amazon.com/Gone-Girl-Novel-Gillian-Flynn/dp/0307588378%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0307588378"
      },
      {
      title: "Personal (Jack Reacher)",
      author: "Lee Child",
      lg_img: "http://ecx.images-amazon.com/images/I/513JFKFmN7L.jpg",
      link: "http://www.amazon.com/Personal-Jack-Reacher-Lee-Child/dp/0804178747%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0804178747"
      },
      {
      title: "The Witch with No Name (Hollows)",
      author: "Kim Harrison",
      lg_img: "http://ecx.images-amazon.com/images/I/51vq5UjxLoL.jpg",
      link: "http://www.amazon.com/The-Witch-No-Name-Hollows/dp/006195795X%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D006195795X"
      },
      {
      title: "The Alchemist",
      author: "Paulo Coelho",
      lg_img: "http://ecx.images-amazon.com/images/I/41BkEX-7CUL.jpg",
      link: "http://www.amazon.com/The-Alchemist-Paulo-Coelho/dp/0061122416%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0061122416"
      },
      {
      title: "Outlander",
      author: "Diana Gabaldon",
      lg_img: "http://ecx.images-amazon.com/images/I/41YqBqzEQHL.jpg",
      link: "http://www.amazon.com/Outlander-Diana-Gabaldon/dp/0440212561%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0440212561"
      },
      {
      title: "Mean Streak",
      author: "Sandra Brown",
      lg_img: "http://ecx.images-amazon.com/images/I/51teSFEPCWL.jpg",
      link: "http://www.amazon.com/Mean-Streak-Sandra-Brown/dp/1455581127%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D1455581127"
      },
      {
      title: "Big Little Lies",
      author: "Liane Moriarty",
      lg_img: "http://ecx.images-amazon.com/images/I/51vJfJFQfjL.jpg",
      link: "http://www.amazon.com/Big-Little-Lies-Liane-Moriarty/dp/0399167064%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0399167064"
      },
      {
      title: "The King's Curse (Cousins' War)",
      author: "Philippa Gregory",
      lg_img: "http://ecx.images-amazon.com/images/I/51ChY9YQPuL.jpg",
      link: "http://www.amazon.com/The-Kings-Curse-Cousins-War/dp/1451626118%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D1451626118"
      },
      {
      title: "The Children Act",
      author: "Ian McEwan",
      lg_img: "http://ecx.images-amazon.com/images/I/51qg0-%2BZB7L.jpg",
      link: "http://www.amazon.com/The-Children-Act-Ian-McEwan/dp/0385539703%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0385539703"
      }])





