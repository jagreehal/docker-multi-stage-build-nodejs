const express = require('express');

const app = express();

const port = process.env.PORT || 1337;

app.get('/', (req, res) => {
  res.send({ message: `Hello ${Date.now()}` });
});

app.listen(port, err => {
  if (err) {
    console.error(err);
  } else {
    console.log(`Server running at port: ${port}`);
  }
});
