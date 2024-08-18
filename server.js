// server.js
const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = 3000;

app.use(express.static('public'));
app.use(bodyParser.json());

// Basic in-memory "database"
const responses = {
  hello: 'Hello! How can I assist you today?',
  'how are you': 'I’m doing great! How can I help you?',
  'your name': 'I’m your friendly chatbot!',
  'what is the weather': 'I’m not sure about the weather right now, but you can check a weather website!',
};

app.post('/message', (req, res) => {
  const userMessage = req.body.message.toLowerCase();
  const botResponse = responses[userMessage] || 'Sorry, I didn’t understand that.';
  res.json({ response: botResponse });
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
