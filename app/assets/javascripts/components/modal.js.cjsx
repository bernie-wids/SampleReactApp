@Modal = React.createClass

	_handleKeyDown: (event) ->
		if event.keyCode == 27
			this.close()

	stopPropagation: (event) ->
		event.stopPropagation()

	close: ->
		alert 'Close the modal!'

	componentDidMount: ->
		document.addEventListener('keydown', this._handleKeyDown, false)

	componentDidUnmount: ->
		document.removeEventListener('keydown', this._handleKeyDown, false)

	render: ->
		<div className="modal-background" onClick={ this.close }>
			<div className="modal-window" onClick={ this.stopPropagation }>
				<p>This is some content</p>
				<Button onClick={ this.close } text="OK" />
			</div>
		</div>