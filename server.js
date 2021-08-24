const express = require('express');

const PORT = process.env.PORT||3001;

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/api/movies', (req, res) => {
    res.json(`${req.method} request recieved`);

  
    console.info(`${req.method} request received`);
  });

app.listen(PORT, () =>
  console.log(`App listening at http://localhost:${PORT} 🚀`)
);