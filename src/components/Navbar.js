import React, { Component } from 'react'
import farmer from '../farmer.png'

class Navbar extends Component {

  render() {
    return (
      <nav className="navbar navbar-dark fixed-top bg-danger flex-md-nowrap p-0 shadow">
        <a
        className="nav-item text-nowrap d-none d-sm-none d-sm-block"
        href="https://github.com/ahmetozlu"
        target="_blank"
        rel="noopener noreferrer"
        >
          <small className="text-light">
            <small id="account">{this.props.account}</small>
          </small>          
        </a>

        <ul className="navbar-nav px-3">
          <li className="navbar-brand col-sm-3 col-md-2 mr-0">
            <img src={farmer} width="30" height="30" className="d-inline-block align-top" alt=""/>
          &nbsp; <b> DApp Yield Farming </b>
          </li>
        </ul>
      </nav>
    );
  }
}

export default Navbar;