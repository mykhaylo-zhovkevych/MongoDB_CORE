// lecture about the Comparison and Operators



// less then 24 age
lecture02> db.students.find({age:{$lt:24}})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
    fullTime: true
  }
]

// less then or equal to 24 age
lecture02> db.students.find({age:{$lte:13}})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
    fullTime: true
  }
]


// greater then 24 age
lecture02> db.students.find({age:{$gt:13}})
[
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


// find objects that is greater or equal to 13
lecture02> db.students.find({age:{$gte:13}})
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


// here, greater than three to less than or equal to 4 is returned
lecture02> db.students.find({gpa:{$gte:1, $lte:4}})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
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


// here i passes a array that if document has will be return
// in logical operator
lecture02> db.students.find({name:{$in:["Usertwo", "Userfour"]}})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
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

// oposite of in: "nin"
lecture02> db.students.find({name:{$nin:["Usertwo", "Userfour"]}})
[
  {
    _id: ObjectId('662186e314f1e4c7d1117b7d'),
    name: 'Userthree',
    age: 34,
    gpa: 6.4,
    fullTime: true
  }
]




