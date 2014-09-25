Template.googleMaps.rendered = ->
  gmaps.initialize()  unless Session.get("map")
  Deps.autorun ->
    data = undefined
    pages = undefined
    data =
      count: 10785236
      photos: [
        {
          id: "1"
          city: "Edinburgh"
          total: "28"
          latitude: "55.95416"
          longitude: "-3.20277"
        }
        {
          id: "2"
          city: "London"
          total: "57"
          latitude: "51.50643"
          longitude: "-0.12721"
        }
        {
          id: "3"
          city: "Mainz"
          total: "1"
          latitude: "50.00061"
          longitude: "8.27228"
        }
        {
          id: "4"
          city: "Charlotte"
          total: "2"
          latitude: "35.22287"
          longitude: "-80.83796"
        }
        {
          id: "5"
          city: "Venice"
          total: "2"
          latitude: "27.09945"
          longitude: "-82.45001"
        }
        {
          id: "6"
          city: "Ottawa"
          total: "2"
          latitude: "45.42179"
          longitude: "-75.69119"
        }
        {
          id: "7"
          city: "Napoli"
          total: "1"
          latitude: "40.83999"
          longitude: "14.25176"
        }
        {
          id: "8"
          city: "Melbourne"
          total: "10"
          latitude: "-37.81753"
          longitude: "144.96715"
        }
        {
          id: "9"
          city: "Rochester"
          total: "4"
          latitude: "43.1558"
          longitude: "-77.61632"
        }
        {
          id: "10"
          city: "Swadlincote"
          total: "1"
          latitude: "52.77412"
          longitude: "-1.55219"
        }
      ]

    pages = data.photos
    _.each pages, (page) ->
      objMarker = undefined
      objMarker = undefined
      objMarker =
        id: page.id
        lat: page.latitude
        lng: page.longitude
        title: page.name

      gmaps.addMarker objMarker
      return

    return


Template.googleMaps.destroyed = ->
  Session.set "map", false
  return