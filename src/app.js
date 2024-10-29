import express from "express";
import routes from "./routes.js";
import cors from 'cors'

const app = express();

app.use(express.json());

app.use(cors({
    origin: 'http://localhost:3000'
}));

app.use(routes);

export default app;
