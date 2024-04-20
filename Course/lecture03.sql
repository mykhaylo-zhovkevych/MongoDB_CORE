// about the data types in MongoDB


test> db.lecture02.insertOne({
name:"String cab have spaces and number as char", 
int: 32, double: 23.22,
 boolean: false,
  refistrationDate: new Date(),
   gradutionDate: null,
    courses: ["value01", "value02"],
     nestedDocument: {street: "random str", city: "--", zip: 123}})
{
  acknowledged: true,
  insertedId: ObjectId('6623bb4421c55f47db117b7b')
}

// result

test> db.lecture02.find()
[
  {
    _id: ObjectId('6623bb4421c55f47db117b7b'),
    name: 'String cab have spaces and number as char',
    int: 32,
    double: 23.22,
    boolean: false,
    refistrationDate: ISODate('2024-04-20T12:55:32.644Z'),
    gradutionDate: null,
    courses: [ 'value01', 'value02' ],
    nestedDocument: { street: 'random str', city: '--', zip: 123 }
  }
]