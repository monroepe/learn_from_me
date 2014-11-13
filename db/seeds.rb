Subject.create([{ name: "Math" }, { name: "Science" }, { name: "Economics and Finance" },
                { name: "Art and Music" }, { name: "Humanities" }, { name: "Programming/Computer Science" },
                { name: "Languages" }, { name: "Exercise and Dance" }, { name: "Everything Else" }
                ])

Course.create([
               {
                name: "Spoken Russian",
                subject_id: 7,
                user_id: 1,
                level_id: 1,
                price: 0,
                description: "A free Russian course for people who want to start speaking Russian. The focus is being able to communicate in Russian."
               }
              ])
