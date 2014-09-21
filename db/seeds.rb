# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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


books = Book.create([{
  title: 'Little Women',
  author: 'Louisa May Alcott',
  description: "Little Women is one of the best loved books of all time. Lovely Meg, talented Jo, frail Beth, spoiled Amy: these are hard lessons of poverty and of growing up in New England during the Civil War. Through their dreams, plays, pranks, letters, illnesses, and courtships, women of all ages have become a part of this remarkable family and have felt the deep sadness when Meg leaves the circle of sisters to be married at the end of Part I. Part II, chronicles Meg's joys and mishaps as a young wife and mother, Jo's struggle to become a writer, Beth's tragedy, and Amy's artistic pursuits and unexpected romance. Based on Louise May Alcott's childhood, this lively portrait of nineteenth-century family life possesses a lasting vitality that has endeared it to generations of readers.",
  lg_img: 'http://classicscentral.com/new/gpc-404.jpg',
  med_img: 'http://blogs.slj.com/afuse8production/files/2012/05/LittleWomen10.jpg',
  rating: '4.5',
  tags: 'classic'
  },
  {
  title: 'Little Women',
  author: 'Louisa May Alcott',
  description: "Little Women is one of the best loved books of all time. Lovely Meg, talented Jo, frail Beth, spoiled Amy: these are hard lessons of poverty and of growing up in New England during the Civil War. Through their dreams, plays, pranks, letters, illnesses, and courtships, women of all ages have become a part of this remarkable family and have felt the deep sadness when Meg leaves the circle of sisters to be married at the end of Part I. Part II, chronicles Meg's joys and mishaps as a young wife and mother, Jo's struggle to become a writer, Beth's tragedy, and Amy's artistic pursuits and unexpected romance. Based on Louise May Alcott's childhood, this lively portrait of nineteenth-century family life possesses a lasting vitality that has endeared it to generations of readers.",
  lg_img: 'http://classicscentral.com/new/gpc-404.jpg',
  med_img: 'http://blogs.slj.com/afuse8production/files/2012/05/LittleWomen10.jpg',
  rating: '4.5',
  tags: 'classic'
  },
  {
  title: 'Little Women',
  author: 'Louisa May Alcott',
  description: "Little Women is one of the best loved books of all time. Lovely Meg, talented Jo, frail Beth, spoiled Amy: these are hard lessons of poverty and of growing up in New England during the Civil War. Through their dreams, plays, pranks, letters, illnesses, and courtships, women of all ages have become a part of this remarkable family and have felt the deep sadness when Meg leaves the circle of sisters to be married at the end of Part I. Part II, chronicles Meg's joys and mishaps as a young wife and mother, Jo's struggle to become a writer, Beth's tragedy, and Amy's artistic pursuits and unexpected romance. Based on Louise May Alcott's childhood, this lively portrait of nineteenth-century family life possesses a lasting vitality that has endeared it to generations of readers.",
  lg_img: 'http://classicscentral.com/new/gpc-404.jpg',
  med_img: 'http://blogs.slj.com/afuse8production/files/2012/05/LittleWomen10.jpg',
  rating: '4.5',
  tags: 'classic'
  }
  ])

