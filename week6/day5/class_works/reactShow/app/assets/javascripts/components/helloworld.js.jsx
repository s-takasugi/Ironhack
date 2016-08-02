var helloworld = React.createClass( {

  submitCallback: function(value) {
    console.log('helloworld')
    console.log(value)
  },

  render: function() {
    return (
      <div>First component
        <Counter/>
        <Input onSubmitCallback={this.submitCallback}/>
      </div>
    );
  }
});
