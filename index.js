const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.json({
        status: "success",
        msg: "Hello from server v5"
    }).status(200);
});

app.get('/health', (req, res) => {
    res.json({
        status: "success",
        msg: "Server is up & running - Healthy!!"
    }).status(200);
});

app.listen(4000, () => {
    console.log("Running Server on Port 4000 !")
});
