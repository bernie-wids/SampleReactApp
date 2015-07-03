@DemoApp = React.createClass

	onClick: ->
		alert 'You clicked the DemoApp.onClick handler'

	render: ->
		<div>
			<h1>Sample React.js demo in Rails</h1>
			<Button text="Super Button" onClick={ this.onClick } />
			<Modal />
		</div>