class SaveData {

  get name () {
    // return (this._name == undefined) ? ("Character does not have a name") : this._name
    return this._name
  }

  get level () {
    // return (this._level == undefined) ? ("Character does not have a level") : this._level
    return this._level
  }
    
  get money () {
    // return (this._money == undefined) ? ("Character does not have any money") : this._money
    return this._money
    if (condition) {
      if (condition) {
        if (condition) {
          
        }
      }
    }
  }



  set name(value) {
    if (value.length < 3 || ! /^[a-zA-Z]+/.test(value)) throw new Error("Name is too short, need at least 4 characters");
    this._name = value
  }

  set level(value) {
    if (value < 0 || value >= 100) throw new Error("Level can only be between 0 and 100");
    this._level = value
  }
    
  set money(value) {
    if (value < 0 || value > 999999) throw new Error("Money can only be between 0 and 999999");
    this._money = value
  }



  static ReadSaveData(string) {

    let temp = JSON.parse(string)
    let saveData = new SaveData(temp)
    return saveData
  
  }

  static GenerateSaveDataString(data) {

    return JSON.parse(data)

  }
}



const jsonString = '{"name":"Bigfoot","level":36,"money":81376}'


let currentSaveState = SaveData.ReadSaveData(jsonString);
console.log(SaveData.GenerateSaveDataString(currentSaveState));

module.exports = {
    SaveData: SaveData
}