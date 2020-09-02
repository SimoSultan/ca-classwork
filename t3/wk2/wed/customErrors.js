function StationIndexError(message) {
  this.name = 'StationIndexError';
  this.message = message;
}

function getStationAtIndex(index) {
  const trainLines = [
    'Alamein',
    'Belgrave',
    'Craigieburn',
    'Cranbourne',
    'Flemington',
    'Frankston',
    'Glen Waverley',
    'Hurstbridge',
    'Lilydale',
    'Mernda',
    'Pakenham',
    'Sandringham',
    'Stony Point',
    'Sunbury',
    'Upfield',
    'Werribee',
    'Williamstow',
  ];

  try {
    if (index > trainLines.length) throw new StationIndexError("That index not found");
    return trainLines[index]; 
  } catch (error) {
    console.log(error);
  }


}; 

module.exports = {
  getStationAtIndex,  StationIndexError
};

// console.log(getStationAtIndex())
getStationAtIndex(2)
getStationAtIndex(-10)
getStationAtIndex(22)
getStationAtIndex(true)
getStationAtIndex('hello')
getStationAtIndex([])
getStationAtIndex(5)
getStationAtIndex({})