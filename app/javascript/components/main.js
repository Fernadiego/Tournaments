import React from "react"
import PropTypes from "prop-types"

class Main extends React Component{
    render() {
        <React.Fragment>
            <h1>Greeting: {this.props.main_props} </h1>
        </React.Fragment>
    }
}

Main.PropTypes = {
    main_props: PropTypes.string
}
export default Main