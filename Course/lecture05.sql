// lecture about the find method in DB 



// in the brackes can the desired objct be finded 
lecture02> db.students.find({name: "Userone"})
[
  {
    _id: ObjectId('662185a614f1e4c7d1117b7b'),
    name: 'Userone',
    age: 30,
    gpa: 3.2
  }
]

// more attributes can be looking for 
lecture02> db.students.find({gpa:4.0,  fullTime:true})


//.find({query}, {projection}) Projectin is for dispalying the fild which can sit as false or ture
lecture02> db.students.find({}, {name:true})
[
  { _id: ObjectId('662185a614f1e4c7d1117b7b'), name: 'Userone' },
  { _id: ObjectId('662186e314f1e4c7d1117b7c'), name: 'Usertwo' },
  { _id: ObjectId('662186e314f1e4c7d1117b7d'), name: 'Userthree' },
  { _id: ObjectId('662186e314f1e4c7d1117b7e'), name: 'Userfour' }
]
lecture02> db.students.find({}, {_id:false, name:true})
[
  { name: 'Userone' },
  { name: 'Usertwo' },
  { name: 'Userthree' },
  { name: 'Userfour' }
]
