

let dataset01 = {
	email: "test@email.com",
	password: "Password123456",
	country: "france",
	language:"french",
	isSubscribedToNewsletter: true,
	agreedToTermsAndConditions: true,
	coveredByGDPR: true,
	coveredByAPP: false
};

let dataset02 = {
	email: "test@email.com",
	password: "Password123456",
	country: null,
	language:null,
	isSubscribedToNewsletter: null,
	agreedToTermsAndConditions: null,
	coveredByGDPR: null,
	coveredByAPP: null
};


function signUpEndpoint(dataset) {

  let arr = []

  let localeData = newUserLocaleData( dataset )
  arr.push(localeData)

  let accountData = newUserAccountData( dataset )
  arr.push(accountData)

  let marketData = newUserMarketingData( dataset )
  arr.push(marketData)

  let legalData = newUserLegalData( dataset )
  arr.push(legalData)

  return arr
}


function newUserAccountData(obj) {

  let { email, password } = obj
  return { email, password }

}


function newUserLocaleData(obj) {

  let { country, language } = obj

  !country && (country = 'australia')
  !language && (language = 'english')

  return { country, language }

}


function newUserMarketingData(obj) {

  let { isSubscribedToNewsletter } = obj
  
  !isSubscribedToNewsletter && (isSubscribedToNewsletter = true)
  
  return { isSubscribedToNewsletter }

}


function newUserLegalData(obj) {

  let { agreedToTermsAndConditions, coveredByAPP, coveredByGDPR } = obj

  !agreedToTermsAndConditions && (agreedToTermsAndConditions = true)
  !coveredByGDPR && (coveredByGDPR = true)
  !coveredByAPP && (coveredByAPP = true)

  return { agreedToTermsAndConditions, coveredByAPP, coveredByGDPR }

}


// Confirm that you're getting an array of objects.
console.log(signUpEndpoint(dataset01));
console.log(signUpEndpoint(dataset02));

module.exports = {
    signUpEndpoint,
    newUserAccountData,
    newUserLocaleData,
    newUserMarketingData,
    newUserLegalData
}