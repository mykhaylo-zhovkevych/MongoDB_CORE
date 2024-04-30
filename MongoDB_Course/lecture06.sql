// lecture about the update in DB


// .updateOne(fillter, update) fillter is selection criteria for the selection update, 

lecture02> db.students.updateOne({name: "Userone"}, {$set:{fullTime:true}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}


// unset to remove the fild
lecture02> db.students.updateOne({name: "Userone"}, {$unset:{fullTime:""}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
lecture02> db.students.find({name: "Userone"})
[
  {
    _id: ObjectId('662185a614f1e4c7d1117b7b'),
    name: 'Userone',
    age: 30,
    gpa: 3.2
  }
]

// update for mroe than one object
lecture02> db.students.updateMany({}, {$set:{fullTime:false}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 4,
  modifiedCount: 4,
  upsertedCount: 0
}
lecture02> db.students.find()
[
  {
    _id: ObjectId('662185a614f1e4c7d1117b7b'),
    name: 'Userone',
    age: 30,
    gpa: 3.2,
    fullTime: false
  },
  {
    _id: ObjectId('662186e314f1e4c7d1117b7c'),
    name: 'Usertwo',
    age: 13,
    gpa: 1.2,
    fullTime: false
  },
  {
    _id: ObjectId('662186e314f1e4c7d1117b7d'),
    name: 'Userthree',
    age: 34,
    gpa: 6.4,
    fullTime: false
  },
  {
    _id: ObjectId('662186e314f1e4c7d1117b7e'),
    name: 'Userfour',
    age: 87,
    gpa: 2,
    fullTime: false
  }
]


// here if the fullTime exists it will do nothing, but if not it will set it to the true

lecture02> db.students.updateMany({fullTime:{$exists:false}}, {$set:{fullTime:true}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 0,
  modifiedCount: 0,
  upsertedCount: 0
}
because the data was: [
  {
    _id: ObjectId('662185a614f1e4c7d1117b7b'),
    name: 'Userone',
    age: 30,
    gpa: 3.2,
    fullTime: true
  },
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



