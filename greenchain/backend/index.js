const express = require('express');
const { makeSTXTokenTransfer } = require('@stacks/transactions');
const app = express();
const PORT = 3000;

app.use(express.json());

app.post('/mint', (req, res) => {
  // Here, you would call the smart contract's mint function
  // Mock response for now
  res.send({ message: 'Tokens minted successfully!' });
});

app.post('/transfer', (req, res) => {
  // Here, you would call the smart contract's transfer function
  // Mock response for now
  res.send({ message: 'Tokens transferred successfully!' });
});

app.listen(PORT, () => {
  console.log(`Backend server running on http://localhost:${PORT}`);
});
