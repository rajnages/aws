const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Serve static files from 'public' directory
app.use(express.static('public'));

// Home route
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/views/index.html');
});

// Error handling
app.use((req, res) => {
    res.status(404).sendFile(__dirname + '/views/error.html');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
