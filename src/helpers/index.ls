require! {
	'react': {createElement}: React
}

export el = (comp, key, cssClass, props) ->
	aprops = {}
	if typeof cssClass == 'string'
		aprops <<< {className: cssClass}
	else if Array.isArray cssClass
		aprops <<< {className: cssClass}
	aprops	<<< {key: key}
	aprops  <<< props
	createElement comp, aprops

export div = el "div", _, _, _
