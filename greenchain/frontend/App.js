import React, { useState } from 'react';
import axios from 'axios';

function App() {
  const [amount, setAmount] = useState(0);
  const [recipient, setRecipient] = useState('');

  const mintTokens = async () => {
    await axios.post('http://localhost:3000/mint', { amount });
    alert('Tokens minted!');
  };

  const transferTokens = async () => {
    await axios.post('http://localhost:3000/transfer', { amount, recipient });
    alert('Tokens transferred!');
  };

  return (
    <div>
      <h1>Green Energy Tokenization</h1>
      <div>
        <h2>Mint Tokens</h2>
        <input
          type="number"
          placeholder="Amount"
          value={amount}
          onChange={(e) => setAmount(e.target.value)}
        />
        <button onClick={mintTokens}>Mint</button>
      </div>
      <div>
        <h2>Transfer Tokens</h2>
        <input
          type="number"
          placeholder="Amount"
          value={amount}
          onChange={(e) => setAmount(e.target.value)}
        />
        <input
          type="text"
          placeholder="Recipient"
          value={recipient}
          onChange={(e) => setRecipient(e.target.value)}
        />
        <button onClick={transferTokens}>Transfer</button>
      </div>
    </div>
  );
}

export default App;
