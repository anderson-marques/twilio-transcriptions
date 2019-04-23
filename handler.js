'use strict';

require('dotenv').config()

const createCloudantConnection = require('./cloudant').createCloudantConnection

function hello(params) {
  return new Promise((resolve, reject) => {
    const envParameters = params['0']
    const cloudantUrl = process.env.CLOUDANT_URL || envParameters.CLOUDANT_URL
    const cloudantApiKey = process.env.CLOUDANT_API_KEY || envParameters.CLOUDANT_API_KEY
    const cloudantDatabase = process.env.CLOUDANT_DB || envParameters.CLOUDANT_DB
    const cloudant = createCloudantConnection(cloudantUrl, cloudantApiKey)
    cloudant.db.use(cloudantDatabase).insert(params.document).then((insertResult)=> {
      resolve(insertResult)
    }).catch((err)=>{
      reject(err)
    })
  })
}

exports.transcription = hello;
