import PropTypes from 'prop-types';
import React, { useState } from 'react';

const Fixture = (props) => {
  const [name, setName] = useState(props.name);

  return (
    <div>
      <table>
        <td>
            <th>ID</th>
            <th>ID Tournament</th>
            <th>ID Match</th>
            <th>Round</th>
            <th>Local</th>
            <th>Visitor</th>
            <th>L_Goals</th>
            <th>V_Goals</th>
          </td>
          <td>
            <tr>1</tr>
            <tr>1</tr>
            <tr>1</tr>
            <tr>0</tr>
            <tr>0</tr>
            <tr>0</tr>
            <tr>0</tr>
            <tr>0</tr>
          </td>
      </table>
    </div>
  );
};

Fixture.propTypes = {
    name: PropTypes.string.isRequired, // this is passed from the Rails view
  };
  
  export default Fixture;