Template.googlePlaces.rendered = ->    
	window.onload = ->
	  autocomplete = new google.maps.places.Autocomplete((document.getElementById("autocomplete")),
	    types: ["geocode"]
	  )
	  return
	return
