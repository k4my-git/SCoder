// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

window.onload = function() {
	Particles.init({
	selector: '.background',
	sizeVariations: 20,
	color: ['#00bbdd', '#404B69', '#DBEDF3'],
	connectParticles: true,
	responsive: [
	    {
	      	breakpoint: 768,
			options: {
			    maxParticles: 200,
			    color: '#48F2E3',
			    connectParticles: false
			}
		},
		{
			breakpoint: 425,
			options: {
			    maxParticles: 100,
			    connectParticles: true
			}
		}, 
		{
			breakpoint: 320,
			options: {
			    maxParticles: 0// disables particles.js
	    	}
	    }
	]
})};