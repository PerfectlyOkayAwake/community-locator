// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "controllers/application"

import MenuController from "controllers/menu_controller"
application.register("menu", MenuController)

import SelectController from "controllers/select_controller"
application.register("select", SelectController)

import SelectedNavController from "controllers/selected_nav_controller"
application.register("selected-nav", SelectedNavController)

import ShowPasswordToggleController from "controllers/show_password_toggle_controller"
application.register("show-password-toggle", ShowPasswordToggleController)
