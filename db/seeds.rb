Subject.create([{ name: "Programming/Computer Science" }, { name: "Math and Science" },
                { name: "Economics and Finance" }, { name: "Languages" }, { name: "Art and Music" },
                { name: "Exercise and Dance" }, { name: "Humanities" }, { name: "Everything Else" }
                ])

Level.create([{ name: "Beginner" }, { name: "Intermediate" }, { name: "Advanced" }])

User.create!([
              {
               email: "test@test.com",
               first_name: "Joe",
               last_name: "Tester",
               password: "password123"
              },
              {
               email: "bob@test.com",
               first_name: "Bob",
               last_name: "Benfield",
               password: "password123"
              },
              {
               email: "john@test.com",
               first_name: "John",
               last_name: "Jensen",
               password: "password123"
              },
              {
               email: "debbie@test.com",
               first_name: "Deborah",
               last_name: "Zachary",
               password: "password123"
              },
              {
               email: "eva@test.com",
               first_name: "Eva",
               last_name: "Parson",
               password: "password123"
              },
              {
               email: "elana@test.com",
               first_name: "Elana",
               last_name: "Baxter",
               password: "password123"
              },
              {
               email: "bryan@test.com",
               first_name: "Bryan",
               last_name: "Farnsworth",
               password: "password123"
              },
              {
               email: "jenny@test.com",
               first_name: "Jenny",
               last_name: "Packer",
               password: "password123"
              },
              {
               email: "irina@test.com",
               first_name: "Irina",
               last_name: "Soklov",
               password: "password123"
              }
            ])

Course.create([
               {
                name: "Spoken Russian",
                subject_id: 4,
                user_id: 9,
                level_id: 1,
                price: 0,
                description: "A free Russian course for people who want to start speaking Russian. The focus is being able to communicate in Russian. This class is for anyone and everyone."
               },
               {
                name: "Let's Speak Spanish",
                subject_id: 4,
                user_id: 4,
                level_id: 2,
                price: 0,
                description: "I just want to have a class where people can practice Spanish. You don't have to know a lot of Spanish, but you should know some. I can help you work on your accent and say things like a real Spanish speaker would."
               },
               {
                name: "Learn Ruby in a Month",
                subject_id: 1,
                user_id: 2,
                level_id: 1,
                duration: "1 month",
                price: 50.00,
                description: "Learn the fantastic Ruby language. Learn by doing is my strategy. I will coach you in various coding challenges I have crafted and provide an environment to become a proficient Rubyist."
               },
               {
                name: "Intro to CS (Python)",
                subject_id: 1,
                user_id: 2,
                level_id: 1,
                duration: "11 weeks",
                price: 50,
                description: "We will go over basic computer science concepts including algorithms, data structures, basic programming in Python. There will be lectures, reading, and plenty of hands on assignments. This course will give you the cs foundation to become a better programmer."
               },
               {
                name: "Stocks!",
                subject_id: 3,
                user_id: 1,
                level_id: 1,
                duration: "2 weeks",
                price: 30,
                description: "Do you want to learn how to trade stocks better? I am not just going to give you stock picks, I am going to give you the resources to pick your own."
               },
               {
                name: "Small Business Development",
                subject_id: 3,
                user_id: 1,
                level_id: 3,
                duration: "6 months",
                price: 1000,
                description: "I will be your small businnes coach. This class is for people who already have a business and are looking to increase and strengthen their business. There will be lectures, but there will be a lot of one on one counseling."
               },
               {
                name: "Calculus",
                subject_id: 2,
                user_id: 3,
                level_id: 2,
                duration: "3 months",
                price: 125,
                description: "This course assumes some pre-calc background. This course will be based on a course I taught for years at the local community college."
               },
               {
                name: "The History of the US Civil War",
                subject_id: 7,
                user_id: 6,
                level_id: 2,
                price: 0,
                description: "This is a course for Civil War enthusiasts. There will be plenty of great books and articles to read with a focus on discussion. History should come alive!"
               },
               {
                name: "Introduction to US History",
                subject_id: 7,
                user_id: 6,
                level_id: 1,
                duration: "3 months",
                price: 0,
                description: "I love US history and I want to share that love. I can help you see where this country came from, where it has been, and where it is now. 3 months is a short time to learn it all, but you will get a strong foundation."
               },
               {
                name: "British Literature",
                subject_id: 7,
                user_id: 8,
                level_id: 3,
                duration: "6 months",
                start_date: DateTime.parse("12/12/2014"),
                price: 15,
                description: "For British Literature enthusiasts only. We will cover a book every 2-3 weeks. Learning comes from discussion. This is an interactive course and I expect participation."
               },
               {
                name: "Weight Loss Coaching",
                subject_id: 6,
                user_id: 5,
                level_id: 1,
                duration: "3 months",
                price: 300,
                description: "I will coach you over three months on losing weight. We will come up with a weight loss plan. This will include both a diet plan and a workout schedule."
               },
               {
                name: "Build a Chair",
                subject_id: 8,
                user_id: 7,
                level_id: 1,
                price: 0,
                description: "Do you want to learn to build a chair with your own two hands? Join my class."
               },
               {
                name: "Build a Table",
                subject_id: 8,
                user_id: 7,
                level_id: 1,
                price: 0,
                description: "A follow up to my popular Build a Chair course. So if you want a table to go with those chairs. Join my class."
               }
              ])

Review.create([
                {
                  rating: 5,
                  body: "Great class. I learned so much. I can communicate in Russian!",
                  reviewable_type: "Course",
                  reviewable_id: 1,
                  user_id: 1
                },
                {
                  rating: 4,
                  body: "I can speak a little Russian now, but most of it is memorized. I was hoping for something a little more in depth. Irina is great though.",
                  reviewable_type: "Course",
                  reviewable_id: 1,
                  user_id: 2
                },
                {
                  rating: 5,
                  body: "Wow! So much fun. My Spanish has improved so much. Gracias Debbie.",
                  reviewable_type: "Course",
                  reviewable_id: 2,
                  user_id: 6
                },
                {
                  rating: 3,
                  body: "It's a speaking only course. I didn't learn much grammar.",
                  reviewable_type: "Course",
                  reviewable_id: 2,
                  user_id: 1
                },
                {
                  rating: 5,
                  body: "Exactly as advertised",
                  reviewable_type: "Course",
                  reviewable_id: 12,
                  user_id: 1
                },
                {
                  rating: 5,
                  body: "I can build a chair now. Couldn't before this class.",
                  reviewable_type: "Course",
                  reviewable_id: 12,
                  user_id: 3
                },
                {
                  rating: 5,
                  body: "Fun. Funny. Informative. Plus it's free.",
                  reviewable_type: "Course",
                  reviewable_id: 12,
                  user_id: 4
                },
                {
                  rating: 5,
                  body: "What's not to like? I feel so powerful now that I can build a chair all by myself.",
                  reviewable_type: "Course",
                  reviewable_id: 12,
                  user_id: 5
                },
                {
                  rating: 5,
                  body: "Now I have a table to match my chairs!",
                  reviewable_type: "Course",
                  reviewable_id: 13,
                  user_id: 1
                },
                {
                  rating: 5,
                  body: "Love this class. I haven't laughed and learned so much...well...ever.",
                  reviewable_type: "Course",
                  reviewable_id: 13,
                  user_id: 3
                },
                {
                  rating: 5,
                  body: "I lost 25 pounds. I am very happy and feel a lot healthier.",
                  reviewable_type: "Course",
                  reviewable_id: 11,
                  user_id: 1
                },
                {
                  rating: 5,
                  body: "I feel so much better. I have a plan and I am sticking to it. Eva works miracles.",
                  reviewable_type: "Course",
                  reviewable_id: 11,
                  user_id: 2
                },
                {
                  rating: 2,
                  body: "I haven't lost as much weight as I would like.",
                  reviewable_type: "Course",
                  reviewable_id: 11,
                  user_id: 8
                },
                {
                  rating: 4,
                  body: "More than I really ever wanted to know about the Civil War. But I learned a lot.",
                  reviewable_type: "Course",
                  reviewable_id: 8,
                  user_id: 1
                },
                {
                  rating: 5,
                  body: "Well I learned Ruby in a month. It's such a fun language. I wish there were more classes. Worth every penny.",
                  reviewable_type: "Course",
                  reviewable_id: 3,
                  user_id: 1
                },
                {
                  rating: 3,
                  body: "I wish there was more support. I got stuck so often.",
                  reviewable_type: "Course",
                  reviewable_id: 3,
                  user_id: 5
                },
                {
                  rating: 1,
                  body: "This class is too basic.",
                  reviewable_type: "Course",
                  reviewable_id: 4,
                  user_id: 6
                },
                {
                  rating: 3,
                  body: "I wish this class dove a little more in depth. But I learned a lot.",
                  reviewable_type: "Course",
                  reviewable_id: 4,
                  user_id: 8
                },
                {
                  rating: 5,
                  body: "The best teacher! He could teach anyone anything.",
                  reviewable_type: "User",
                  reviewable_id: 7,
                  user_id: 1
                },
                {
                  rating: 5,
                  body: "His classes are always a laugh-fest, but you learn so much.",
                  reviewable_type: "User",
                  reviewable_id: 7,
                  user_id: 4
                },
                {
                  rating: 5,
                  body: "I would take any of his classes.",
                  reviewable_type: "User",
                  reviewable_id: 7,
                  user_id: 5
                },
                {
                  rating: 4,
                  body: "I love the way he teaches, but his classes need more meat.",
                  reviewable_type: "User",
                  reviewable_id: 2,
                  user_id: 8
                },
                {
                  rating: 3,
                  body: "He is nice enough, but I don't feel challenged in his classes.",
                  reviewable_type: "User",
                  reviewable_id: 2,
                  user_id: 5
                },
                {
                  rating: 5,
                  body: "I learned so much Russian from her!",
                  reviewable_type: "User",
                  reviewable_id: 9,
                  user_id: 1
                },
                {
                  rating: 5,
                  body: "She is very patient and kind. I really enjoy her classes.",
                  reviewable_type: "User",
                  reviewable_id: 9,
                  user_id: 3
                },
                {
                  rating: 4,
                  body: "Sometimes her classes can be a little dull.",
                  reviewable_type: "User",
                  reviewable_id: 9,
                  user_id: 4
                },
                {
                  rating: 5,
                  body: "He helped my business so much.",
                  reviewable_type: "User",
                  reviewable_id: 1,
                  user_id: 9
                },
                {
                  rating: 5,
                  body: "I got some great stock picks and now I can pick my own too.",
                  reviewable_type: "User",
                  reviewable_id: 1,
                  user_id: 8
                }
              ])
