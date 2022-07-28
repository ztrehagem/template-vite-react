import React from "react";
import ReactDOM from "react-dom/client";
import { App } from "./App";

// eslint-disable-next-line @typescript-eslint/no-non-null-assertion
const mountPoint = document.getElementById("root")!;

const app = ReactDOM.createRoot(mountPoint);

app.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);