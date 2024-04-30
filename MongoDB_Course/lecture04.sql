// lecture about the sorting and limiting


// for to sorting the document object(name) in alphabetical order 
db.lecture02.find().sort({name:1})

// just do limit of the output
lecture02> db.students.find().limit(1)
[
  {
    _id: ObjectId('662185a614f1e4c7d1117b7b'),
    name: 'Userone',
    age: 30,
    gpa: 3.2
  }
]

lecture02> db.students.find().limit(2)
[
  {
    _id: ObjectId('662185a614f1e4c7d1117b7b'),
    name: 'Userone',
    age: 30,
    gpa: 3.2
  },
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2
  }
]

// the soring and limiting can be combined 
lecture02> db.students.find().sort({gpa:1}).limit(1)
