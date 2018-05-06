import React from 'react';

class App extends React.Component {
  render() {
    return (
      <div>
        <div>yo</div>
        <div>{this.props.greeting}</div>
      </div>
    )
  }
}

export default App;
