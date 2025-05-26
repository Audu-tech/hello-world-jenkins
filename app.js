const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World from Jenkins CI/CD!');
});

// Export the app for testing
module.exports = app;

if (require.main === module) {
  app.listen(3000, () => {
    console.log('App is running at http://localhost:3000');
  });
}
