const express = require("express")
const app = express()
const PORT = 3000

app.get("/", (req,res) =>{
res.send("hello from Git+ Docker version 2");
});

app.listen(PORT, () => {
console.log(`port listening at http://localhost:${PORT}`);
});

