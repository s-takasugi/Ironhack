var Counter = React.createClass( {

  getInitialState: function() {
    return {
      counter: 0
    };
  },

  incrementCounter: function(event) {
    var count = this.state.counter;
    count++
    this.setState( {
      counter: count
    });
  },

  decrementCounter: function(event) {
    var count = this.state.counter;
    count--
    this.setState( {
      counter: count
    });
  },

  render: function() {
    return (
      <div>
        <h4>{this.state.counter}</h4>
        <button onClick={this.incrementCounter}>Increment</button>
        <button onClick={this.decrementCounter}>Decrement</button>
      </div>
    );
  }
});
