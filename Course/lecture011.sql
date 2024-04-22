// about the collections



// to create the collection
lecture02> db.createCollection("teachers")
{ ok: 1 }
lecture02>



// here the size is 10 MB and the max capasity is 100 teaches(documents)
lecture02> db.createCollection("teachers_high",{capped:true, size:10000000,max:100},{autoIndexID:false})
{ ok: 1 }
lecture02>


// for dropping the collections
lecture02> db.teachers.drop()
true
lecture02> show collections
students
teachers_high


