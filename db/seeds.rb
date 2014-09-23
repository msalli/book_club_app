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

  books2 = Book.create([{
    :title => "The Great Gatsby",
    :author => "F. Scott Fitzgerald",
    :lg_img => "http://ecx.images-amazon.com/images/I/51tmGgkv3iL.jpg",
    :link => "http://www.amazon.com/The-Great-Gatsby-Scott-Fitzgerald/dp/0743273567%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0743273567"
    },
    {
    :title => "The Grapes of Wrath",
    :author => "John Steinbeck",
    :lg_img => "http://ecx.images-amazon.com/images/I/41vv8-S5n2L.jpg",
    :link => "http://www.amazon.com/The-Grapes-Wrath-John-Steinbeck/dp/0143039431%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0143039431"
    },
    {
    :title => "Lolita",
    :author => "Vladimir Nabokov",
    :lg_img => "http://ecx.images-amazon.com/images/I/41gMT3BaWiL.jpg",
    :link => "http://www.amazon.com/Lolita-Vladimir-Nabokov/dp/0679723161%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0679723161"
    },
    {
    :title => "The Sound and the Fury: The Corrected Text",
    :author => "William Faulkner",
    :lg_img => "http://ecx.images-amazon.com/images/I/41LVQSI2RcL.jpg",
    :link => "http://www.amazon.com/The-Sound-Fury-Corrected-Text/dp/0679732241%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0679732241"
    },
    {
    :title => "Anna Karenina",
    :author => "Leo Tolstoy",
    :lg_img => "http://ecx.images-amazon.com/images/I/51vPf2CfSEL.jpg",
    :link => "http://www.amazon.com/Anna-Karenina-Leo-Tolstoy/dp/0143035002%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0143035002"
    },
    {
    :title => "This One Is Mine: A Novel",
    :author => "Maria Semple",
    :lg_img => "http://ecx.images-amazon.com/images/I/41H6ZtbUOsL.jpg",
    :link => "http://www.amazon.com/This-One-Is-Mine-Novel/dp/031603133X%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D031603133X"
    },
    {
    :title => "Vampires in the Lemon Grove: And Other Stories (Vintage Contemporaries)",
    :author => "Karen Russell",
    :lg_img => "http://ecx.images-amazon.com/images/I/51ABYrZLkrL.jpg",
    :link => "http://www.amazon.com/Vampires-Lemon-Grove-Stories-Contemporaries/dp/0307947475%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0307947475"
    },
    {
    :title => "The Vacationers: A Novel",
    :author => "Emma Straub",
    :lg_img => "http://ecx.images-amazon.com/images/I/51HRvrNYdIL.jpg",
    :link => "http://www.amazon.com/The-Vacationers-Novel-Emma-Straub/dp/1594631573%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D1594631573"
    },
    {
    :title => "The Fault in Our Stars",
    :author => "John Green",
    :lg_img => "http://ecx.images-amazon.com/images/I/51VlKD1aucL.jpg",      :link => "http://www.amazon.com/The-Fault-Stars-John-Green/dp/014242417X%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D014242417X"
    },
    {
    :title => "Since You've Been Gone",
    :author => "Morgan Matson",
    :lg_img => "http://ecx.images-amazon.com/images/I/61CME2skESL.jpg",
    :link => "http://www.amazon.com/Since-Youve-Been-Morgan-Matson/dp/1442435003%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D1442435003"
    },
    {
    :title => "The One and Only Ivan",
    :author => "Katherine Applegate",
    :lg_img => "http://ecx.images-amazon.com/images/I/41wE-z7ixPL.jpg",
    :link => "http://www.amazon.com/The-Only-Ivan-Katherine-Applegate/dp/0061992259%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0061992259"
    },
    {
    :title => "The Rosie Project: A Novel",
    :author => "Graeme Simsion",
    :lg_img => "http://ecx.images-amazon.com/images/I/514ViPVcPVL.jpg",
    :link => "http://www.amazon.com/The-Rosie-Project-A-Novel/dp/1476729093%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D1476729093"
    },
    {
    :title => "Eat, Pray, Love: One Woman's Search for Everything Across Italy, India and Indonesia",
    :author => "Elizabeth Gilbert",
    :lg_img => "http://ecx.images-amazon.com/images/I/4159o9E2SLL.jpg",
    :link => "http://www.amazon.com/Eat-Pray-Love-Everything-Indonesia/dp/0143038419%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D0143038419"
    },
    {
    :title => "We Were Liars",
    :author => "E. Lockhart",
    :lg_img => "http://ecx.images-amazon.com/images/I/51UX7hdSdJL.jpg",
    :link => "http://www.amazon.com/We-Were-Liars-E-Lockhart/dp/038574126X%3FSubscriptionId%3DAKIAIMMPVGGEOFIPQZ6Q%26tag%3Dbooclu080-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D038574126X"
    }])




