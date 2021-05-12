import PropTypes from 'prop-types';
import React, { useState } from 'react';

const Tournaments = (props) => {
  //const [name, setName] = useState(props.name);
  const [clickPosiciones, setClickPosiciones] = useState(true);
  const handleClick = () => setClickPosiciones(!clickPosiciones);

  return (
    <div>
      <ul>
        <li><a href="/tournaments">Torneos</a></li>
        <li><a href="/fixtures">Fixture</a></li>
      </ul>
      <hr />
    </div>
  );
};

Tournaments.propTypes = {
  name: PropTypes.string.isRequired, // this is passed from the Rails view
};

export default Tournaments;