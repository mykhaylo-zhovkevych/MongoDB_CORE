// about the Indexes
// Indexes support the efficient execution of queries in MongoDB. Without indexes, MongoDB must
// perform a collection scan, i.e. scan every document in a collection, to select those documents that
//match the query statement. If an appropriate index exists for a query, MongoDB can use the index to
//limit the number of documents it must inspect.


// here is linear search is at use, through the collection, will take long time if a lot of data is present
lecture02> db.students.find({name:"Userfour"}).explain("executionStats")
{
  explainVersion: '1',
  queryPlanner: {
    namespace: 'lecture02.students',
    indexFilterSet: false,
    parsedQuery: { name: { '$eq': 'Userfour' } },
    queryHash: 'A2F868FD',
    planCacheKey: 'A2F868FD',
    maxIndexedOrSolutionsReached: false,
    maxIndexedAndSolutionsReached: false,
    maxScansToExplodeReached: false,
    winningPlan: {
      stage: 'COLLSCAN',
      filter: { name: { '$eq': 'Userfour' } },
      direction: 'forward'
    },
    rejectedPlans: []
  },
  executionStats: {
    executionSuccess: true,
    nReturned: 1,
    executionTimeMillis: 0,
    totalKeysExamined: 0,
    totalDocsExamined: 3,
    executionStages: {
      stage: 'COLLSCAN',
      filter: { name: { '$eq': 'Userfour' } },
      nReturned: 1,
      executionTimeMillisEstimate: 0,
      works: 4,
      advanced: 1,
      needTime: 2,
      needYield: 0,
      saveState: 0,
      restoreState: 0,
      isEOF: 1,
      direction: 'forward',
      docsExamined: 3
    }
  },
  command: {
    find: 'students',
    filter: { name: 'Userfour' },
    '$db': 'lecture02'
  },
  serverInfo: {
    host: 'rog_mykhaylo',
    port: 27017,
    version: '7.0.8',
    gitVersion: 'c5d33e55ba38d98e2f48765ec4e55338d67a4a64'
  },
  serverParameters: {
    internalQueryFacetBufferSizeBytes: 104857600,
    internalQueryFacetMaxOutputDocSizeBytes: 104857600,
    internalLookupStageIntermediateDocumentMaxSizeBytes: 104857600,
    internalDocumentSourceGroupMaxMemoryBytes: 104857600,
    internalQueryMaxBlockingSortMemoryUsageBytes: 104857600,
    internalQueryProhibitBlockingMergeOnMongoS: 0,
    internalQueryMaxAddToSetBytes: 104857600,
    internalDocumentSourceSetWindowFieldsMaxMemoryBytes: 104857600,
    internalQueryFrameworkControl: 'trySbeRestricted'
  },
  ok: 1
}


// this make index that is looking into the Data by the alphabetical order
lecture02> db.students.createIndex({name:1})
name_1


// now only one Documnt is looked for
executionStats: {
    executionSuccess: true,
    nReturned: 1,
    executionTimeMillis: 7,
    totalKeysExamined: 1,
    totalDocsExamined: 1,
    executionStages: {
      stage: 'FETCH',
      nReturned: 1,
      executionTimeMillisEstimate: 0,
      works: 2,
      advanced: 1,
      needTime: 0,
      needYield: 0,
      saveState: 0,
      restoreState: 0,
      isEOF: 1,
      docsExamined: 1,
      alreadyHasObj: 0,
      inputStage: {
        stage: 'IXSCAN',
        nReturned: 1,
        executionTimeMillisEstimate: 0,
        works: 2,
        advanced: 1,
        needTime: 0,
        needYield: 0,
        saveState: 0,
        restoreState: 0,
        isEOF: 1,
        keyPattern: { name: 1 },
        indexName: 'name_1',
        isMultiKey: false,
        multiKeyPaths: { name: [] },
        isUnique: false,
        isSparse: false,
        isPartial: false,
        indexVersion: 2,
        direction: 'forward',
        indexBounds: { name: [ '["Userfour", "Userfour"]' ] },
        keysExamined: 1,
        seeks: 1,
        dupsTested: 0,
        dupsDropped: 0
      }
    }


// will get all indexes
lecture02> db.students.getIndexes()
[
  { v: 2, key: { _id: 1 }, name: '_id_' },
  { v: 2, key: { name: 1 }, name: 'name_1' }
]