'use strict'

require('dotenv').config()

var Cloudant = require('@cloudant/cloudant');

function createCloudantConnection(url, plugins) {
    return new Cloudant({ 
        url: process.env.CLOUDANT_URL || url, 
        plugins: { 
            iamauth: { 
                iamApiKey: process.env.CLOUDANT_API_KEY || plugins
            }
        }
    })
}

module.exports.createCloudantConnection = createCloudantConnection
