// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import { initFlatpickr } from "../plugins/flatpickr";
initFlatpickr();


// ./packs/application.js
// import { Application } from 'stimulus'
// import { definitionsFromContext } from 'stimulus/webpack-helpers'

// const application = Application.start()
// const context = require.context('../controllers', true, /\.js$/)
// application.load(definitionsFromContext(context))

// import Flatpickr
// import Flatpickr from 'stimulus-flatpickr'
// Import style for flatpickr
// require("flatpickr/dist/flatpickr.css")
// Manually register Flatpickr as a stimulus controller
// application.register('flatpickr', Flatpickr)


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

import "controllers"
