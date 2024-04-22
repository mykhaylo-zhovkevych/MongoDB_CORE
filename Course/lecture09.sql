// About the logical Operators
//Logical operators return data based on expressions that evaluate to true or false.



// here it checks the two statments and if the true it will print result 
lecture02> db.students.find({$and: [{fullTime:true}, {age:{$lte:22}} ]})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
    fullTime: true
  }
]


// At least one condition must be true
lecture02> db.students.find({$or: [{fullTime:true}, {age:{$lte:22}} ]})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
    fullTime: true
  },
  {
    _id: ObjectId('662186e314f1e4c7d1117b7d'),
    name: 'Userthree',
    age: 34,
    gpa: 6.4,
    fullTime: true
  },
  {
    _id: ObjectId('662186e314f1e4c7d1117b7e'),
    name: 'Userfour',
    age: 87,
    gpa: 2,
    fullTime: true
  }
]

// both must be false
lecture02> db.students.find({$nor: [{fullTime:true}, {age:{$lte:22}} ]})


// give me any object that is not greater or equal to the 30
lecture02> db.students.find({age:{$not:{$gte:40}}})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
    fullTime: true
  },
  {
    _id: ObjectId('662186e314f1e4c7d1117b7d'),
    name: 'Userthree',
    age: 34,
    gpa: 6.4,
    fullTime: true
  }
]


