require! {
	'react': {PropTypes}:React
	'react-dom': ReactDom
	'$help': {el, div}
	'./main.styl': css
}

#########		First React App 	###########
# contacts = [
# 	{key: 1, name: "James K Nelson", email: "james@jamesknelson.com", description: "Front-end Unicorn"}
# 	{key: 2, name: "Jim", email: "jim@example.com"}
# 	{key: 3, name: "Joe"}
# ]

# ContactItem = React.createClass do
# 	propTypes:
# 		name: PropTypes.string.isRequired
# 		email: PropTypes.string.isRequired
# 		description: PropTypes.string

# 	render: ->
# 		elemString = "name: #{@props.name}\nemail: #{@props.email}\ndescription: #{@props.description}"
# 		el \li, @props.key, css.makeEmRed, children: 
# 			elemString
# 			.split '\n'
# 			.map (e) ~>
# 				el \p, "good_#{e}_#{@props.key}", null, children: e

# contactsList = 
# 	el \ul, \contactList, null, children:
# 		contacts
# 		.filter (con) ->
# 			con.email and con.name
# 		.map (con) ->
# 			el ContactItem, null, null, con

# ReactDom.render contactsList, document.getElementById 'App'
