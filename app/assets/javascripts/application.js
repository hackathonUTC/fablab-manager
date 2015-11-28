// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require rails.validations
//= require jquery_nested_form
//= require jquery-ui/autocomplete
//= require autocomplete-rails
//= require_tree .

// You will need to require 'jquery-ui' for this to work
window.ClientSideValidations.callbacks.element.fail = function(element, message, callback) {
    callback();
    if (element.data('valid') !== false) {
        element.parent().find('.message').hide().show('slide', {direction: "left", easing: "easeOutBounce"}, 500);
    }
}

window.ClientSideValidations.callbacks.element.pass = function(element, callback) {
    // Take note how we're passing the callback to the hide()
    // method so it is run after the animation is complete.
    element.parent().find('.message').hide('slide', {direction: "left"}, 500, callback);
}