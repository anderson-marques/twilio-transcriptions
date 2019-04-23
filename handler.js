'use strict';

const createCloudantConnection = require('./cloudant').createCloudantConnection

function hello(params) {
  const cloudant = createCloudantConnection(params.CLOUDANT_URL, params.CLOUDANT_API_KEY)
  console.log('start executing')
  const name = params.name || 'World!!!!'; 
  return { payload: `Hello, ${name}!` };
}

exports.transcription = hello;
