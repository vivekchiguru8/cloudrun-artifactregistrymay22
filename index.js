const express = require('express');
const app = express();
const port = process.env.PORT || 8080;  // Must read PORT env var

app.get('/', (req, res) => {
  res.send('Hello from docker-repo!');
});

app.listen(port, '0.0.0.0', () => {  // '0.0.0.0' is important
  console.log(`Listening on port ${port}`);
});