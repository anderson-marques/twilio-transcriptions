'use strict'

require('dotenv').config()

var Cloudant = require('@cloudant/cloudant');

function createCloudantConnection(urlParam, apiKeyParam) {
    return new Cloudant({ 
        url: process.env.CLOUDANT_URL || urlParam, 
        plugins: { 
            iamauth: { 
                iamApiKey: process.env.CLOUDANT_API_KEY || apiKeyParam
            }
        }
    })
}

module.exports.createCloudantConnection = createCloudantConnection
