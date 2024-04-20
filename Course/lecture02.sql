lecture02> db.students.insertOne({name: "Userone", age:30, gpa:3.2})
{
  acknowledged: true,
  insertedId: ObjectId('662185a614f1e4c7d1117b7b')
}
// to insert a data to the collection 

lecture02> db.students.find()
[
  {
    _id: ObjectId('662185a614f1e4c7d1117b7b'),
    name: 'Userone',
    age: 30,
    gpa: 3.2
  }
]
// prints the data to the terminal 


lecture02> db.students.insertMany([{name: "Usertwo", age:13, gpa: 1.2},{name: "Userthree", age:34, gpa:6.4 },{name: "Userfour", age:87, gpa:2 }])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('662186e314f1e4c7d1117b7c'),
    '1': ObjectId('662186e314f1e4c7d1117b7d'),
    '2': ObjectId('662186e314f1e4c7d1117b7e')
  }
}
// array for inserting multiple Data atributes 

