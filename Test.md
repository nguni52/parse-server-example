,
push: {
    ios: [
        {
            production: true,
            bundleId: 'com.seeein.Seeein',
            pfx: './certs/DistributionCertificates.p12',
            passphrase: 'Matiisetso.2013'
        },
        {
            production: false,
            bundleId: 'com.seeein.Seeein',
            pfx: './certs/Certificates.p12',
            passphrase: 'Matiisetso.2013'
        }
    ]
}



// Mount the Parse API server middleware to /parse
app.use(process.env.PARSE_MOUNT_PATH || '/parse', parseServer, function(req, res, next) {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader('Access-Control-Allow-Methods', 'GET,PUT,OPTIONS,PATCH,POST,DELETE');
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    return next();
});
