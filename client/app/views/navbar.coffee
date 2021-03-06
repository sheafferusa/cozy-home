BaseView = require 'lib/base_view'
appButtonTemplate = require "templates/navbar_app_btn"
NotificationsView = require './notifications_view'
AppsMenu = require './menu_applications'

module.exports = class NavbarView extends BaseView

    el:'#header'
    template: require 'templates/navbar'

    constructor: (apps) ->
        @apps = apps
        super()

    afterRender: =>
        @notifications = new NotificationsView()
        @appMenu = new AppsMenu @apps
