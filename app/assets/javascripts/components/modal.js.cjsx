@Modal = React.createClass

	_handleKeyDown: (event) ->
		if event.keyCode == 27
			this.close()

	stopPropagation: (event) ->
		event.stopPropagation()

	close: ->
		AppDispatcher.dispatch
			actionType: "ACCEPT_TERMS"
			accepted: true

	componentDidMount: ->
		document.addEventListener('keydown', this._handleKeyDown, false)

	componentDidUnmount: ->
		document.removeEventListener('keydown', this._handleKeyDown, false)

	render: ->
		<div className="modal-background" onClick={ this.close }>
			<div className="modal-window" onClick={ this.stopPropagation }>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel placerat libero. Aliquam sed convallis odio.</p>
				<Button onClick={ this.close } text="I accept the terms and conditions" />
			</div>
		</div>