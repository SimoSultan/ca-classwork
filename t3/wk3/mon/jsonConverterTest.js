const SaveData = require('/home/index.js').SaveData;
let dummySaveInstance = new SaveData("Alex", 99, 9999);
let classProperties = Object.getOwnPropertyNames(SaveData);
let instanceProperties = Object.getOwnPropertyNames(dummySaveInstance);

test ("SaveData contains the 3 properties specified by the scenario.", () => {
    expect(dummySaveInstance).toHaveProperty('name');
    expect(dummySaveInstance).toHaveProperty('level');
    expect(dummySaveInstance).toHaveProperty('money');

});

test("The SaveData instance variables use the specified getter/setter naming conventions.", () => {
    let requiredNames = [
        expect.stringMatching(/name/),
        expect.stringMatching(/level/),
        expect.stringMatching(/money/),
        expect.stringMatching(/_/),
    ]
    expect(instanceProperties).toEqual(expect.arrayContaining(requiredNames));
})

test("The SaveData class explicitly throws when the name setter receives invalid data as per the scenario.", () => {
    let didError = false;
    try {
        dummySaveInstance.name = "1";
    } catch {
        didError = true;
    }
    expect(didError).toEqual(true);
})

test("The SaveData class explicitly throws when the level setter receives invalid data as per the scenario.", () => {
    let didError = false;
    try {
        dummySaveInstance.level = 0;
    } catch {
        didError = true;
    }
    expect(didError).toEqual(true);
})

test("The SaveData class explicitly throws when the money setter receives invalid data as per the scenario.", () => {
    let didError = false;
    try {
        dummySaveInstance.money = -1;
    } catch {
        didError = true;
    }
    expect(didError).toEqual(true);
})




test("The SaveData class has a static method for generating save data.", () => {
    expect(classProperties).toContain('GenerateSaveDataString');
})

test("The SaveData static method named 'GenerateSaveDataString' works as intended.", () => {
    let dummySaveAsString = SaveData.GenerateSaveDataString(dummySaveInstance);
    let saveProcessedAsRawObject = JSON.parse(dummySaveAsString);

    expect(saveProcessedAsRawObject).toHaveProperty('name');
    expect(saveProcessedAsRawObject).toHaveProperty('level');
    expect(saveProcessedAsRawObject).toHaveProperty('money');

})


test("The SaveData class has a static method for reading save data.", () => {
    expect(classProperties).toContain('ReadSaveData');
})

test("The SaveData static method named 'ReadSaveData' works as intended.", () => {
    let dummySaveAsString = SaveData.GenerateSaveDataString(dummySaveInstance);
    let reimportedSave = SaveData.ReadSaveData(dummySaveAsString);
    expect(reimportedSave.constructor.name).toEqual("SaveData")
})