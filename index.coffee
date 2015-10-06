ECT = require 'ect'
loaderUtils = require 'loader-utils'

module.exports = (source) ->

	this.cacheable and this.cacheable()

	data = loaderUtils.parseQuery(this.query)
	data.promoEnv = process.env.PROMO_ENV

	options =
		open: '<%'
		close: '%>'
		watch: false
		cache: false
		root: this.context

	html = ECT(options).render(this.resourcePath, data)

	"module.exports = #{JSON.stringify(html)}"