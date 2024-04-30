// lecture about the delete function 



// there is delete one and many method like in update 
lecture02> db.students.deleteOne({name:"Userone"})
{ acknowledged: true, deletedCount: 1 }
lecture02> db.students.find()
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


// here was all users deleted that has true in the fullTime
lecture02> db.students.deleteMany({fullTime:true})
{ acknowledged: true, deletedCount: 3 }


// if the registrationDate dosent exists the document will be deleted 
lecture02> db.students.deleteMany({registrationDate:{$exists:false}})


