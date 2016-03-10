	/**
	 * @ngdoc overview
	 * @name sabzWebApp.admin.user.list.items
	 * @requires ui.router
	 * @requires components/listImage
	 *
	 * @description
	 * The `sabzWebApp.admin.user.list.items` module which provides:
	 *
	 * - {@link sabzWebApp.admin.user.list.items.controller:UserItemsController UserItemsController}
	 */

(function () {
	'use strict';

	angular
		.module('sabzWebApp.admin.user.list.items', [
			'ui.router',
			'sabzWebApp.listImage'
		]);

})();
