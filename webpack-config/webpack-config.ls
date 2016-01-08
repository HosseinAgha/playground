require! {
	'webpack-error-notification': WebpackErrorNotificationPlugin
	webpack
	path
	poststylus
	autoprefixer
	cssnext
	'postcss-short': postcssShort
}

joinWithRoot = (file-path) ->
	arr = [__dirname, '../'].concat file-path
	path.join ...arr # 3 dots uses apply to pass the arguments

module.exports = function getConfig {dev}
	entry:
		main:
			if dev is on
				[
					'webpack-dev-server/client?http://0.0.0.0:8080'
					'webpack/hot/only-dev-server'
					'./src/entries/main.ls'
				]
			else
				'./src/entries/main.ls'

	output:
		path: joinWithRoot "./dist"
		filename: '[name].dist.js'
		publicPath: '/dist/' # This is the assets folder path relative to the webpack root.
	
	devtool: if dev is on then \source-map else null

	plugins: [
		new webpack.NoErrorsPlugin!
		new WebpackErrorNotificationPlugin!
	]

	resolve:
		extensions: [ '' \.ls \.js \.json ]
		alias:
			'$help': joinWithRoot 'src/helpers'

	module:
		loaders: [
			if dev is on
				test: /\.ls$/, loader: 'react-hot!livescript-loader', include: joinWithRoot './src'
			else
				test: /\.ls$/, loader: \livescript-loader
		,
			test: /\.styl$/, loader: 'style-loader!css-loader?module&sourceMap&localIdentName=[name]_[local]!stylus-loader'
		]

	stylus:
		use: [
			poststylus [autoprefixer!, postcssShort!]
		]

