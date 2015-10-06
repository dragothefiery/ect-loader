ECT = require 'ect'
loaderUtils = require 'loader-utils'

module.exports = (source) ->

	this.cacheable and this.cacheable()

	data = loaderUtils.parseQuery(this.query)

	options =
		open: '<%'
		close: '%>'
		watch: false
		cache: false
		root: this.context

	html = ECT(options).render(this.resourcePath, data)

	"module.exports = #{JSON.stringify(html)}"