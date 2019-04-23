'use strict';

const createCloudantConnection = require('./cloudant').createCloudantConnection

function hello(params) {
  return new Promise((resolve, reject) => {
    const envParameters = params['0']
    console.log('envParameters.CLOUDANT_DB', envParameters.CLOUDANT_DB)
    console.log('envParameters.CLOUDANT_URL', envParameters.CLOUDANT_URL)
    const cloudant = createCloudantConnection(envParameters.CLOUDANT_URL, envParameters.CLOUDANT_API_KEY)
    cloudant.db.use(envParameters.CLOUDANT_DB).insert(params.document).then((insertResult)=> {
      resolve(insertResult)
    }).catch((err)=>{
      reject(err)
    })
  })
}

exports.transcription = hello;
