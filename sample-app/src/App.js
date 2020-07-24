import React from "react";
import logo from "./logo.svg";
import "./App.css";
import Config from "./config";

function App() {
  return (
    <div className="App">
      <div>This link wil take you to {Config.siteName}</div>
      <a href={Config.siteAddress}>{Config.siteName}</a>
    </div>
  );
}

export default App;
