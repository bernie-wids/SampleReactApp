@DemoApp = React.createClass

	onClick: ->
		alert 'You clicked the DemoApp.onClick handler'

	render: ->
		<Button text="Super Button" onClick={ this.onClick } />