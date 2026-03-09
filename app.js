const express = require('express');
const app = express();
const path = require('path');
const port = 80;

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'completion.html'));
});

app.listen(port, () => {
    console.log(`Application running at http://localhost:${port}`);
});
