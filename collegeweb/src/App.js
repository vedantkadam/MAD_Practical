import React from 'react';
import { BrowserRouter as Router, Route, NavLink, Routes } from 'react-router-dom';
import AboutUs from './AboutUs';
import Academics from './Academics';
import Library from './Library';
import Placements from './Placements';
import Admissions from './Admissions';
// import AnnouncementSection from './AnnouncementSection';
import './App.css';

function App() {
  return (
    <Router>
      <div className="container">
        <header>
          <img src="sfit_logo.jpg" alt="College Logo" />
          <h1>St. Francis Institute of Technology</h1>
        </header>
        <nav>
          <ul>
            <li><NavLink exact to="/" activeClassName="active">About Us</NavLink></li>
            <li><NavLink to="/academics" activeClassName="active">Academics</NavLink></li>
            <li><NavLink to="/library" activeClassName="active">Library</NavLink></li>
            <li><NavLink to="/placements" activeClassName="active">Placements</NavLink></li>
            <li><NavLink to="/admissions" activeClassName="active">Admissions</NavLink></li>
          </ul>
        </nav>
        <Routes>
          <Route exact path="/" element={<AboutUs />} />
          <Route path="/academics" element={<Academics />} />
          <Route path="/library" element={<Library />} />
          <Route path="/placements" element={<Placements />} />
          <Route path="/admissions" element={<Admissions />} />
        </Routes>
        {/* <AnnouncementSection /> */}
        <footer>
          <p>Copyright &copy; {new Date().getFullYear()}
            College Name. All rights reserved.</p>
        </footer>
      </div>
    </Router>
  );
}

export default App;
