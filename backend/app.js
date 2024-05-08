const express = require("express");
const app = express();

const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello, Express!"); // Send a simple response for the root path
});

app.get("/api/data", (req, res) => {
  res.json({
    success: true,
    message: "hello",
  });
});

app.listen(port, () => {
  console.log('server is running on '+port);
});

