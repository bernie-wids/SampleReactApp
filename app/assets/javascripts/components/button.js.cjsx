@Button = React.createClass

	onClick: ->
		alert 'You clicked the onClick handler'

	render: ->
		<button onClick={ this.onClick }>{ this.props.text }</button>