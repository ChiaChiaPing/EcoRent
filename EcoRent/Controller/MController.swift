import UIKit
import GoogleMaps

struct State {
    let name: String
    let long: CLLocationDegrees
    let lat: CLLocationDegrees
    let status:String
}

class MController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    var markerDict: [String: GMSMarker] = [:]
    let states = [
        State(name: "Taipei digiBlock", long: 121.520193, lat: 25.074576,status:"可租借20個\n可歸還50個"),
        State(name: "圓山捷運站", long: 121.5199165, lat: 25.071381,status:"可租借30個\n可歸還27個"),
        State(name: "大龍街夜市", long: 121.5170775, lat: 25.0720793,status:"可租借2個\n可歸還68個"),
        State(name: "大同老街", long: 121.5157257, lat: 25.0724235,status:"可租借40個\n可歸還30個"),
        State(name: "花博公園", long: 121.5204228, lat: 25.0699473,status:"可租借60個\n可歸還10個")
    ]

    override func loadView() {
        //makePosition()
        
        let camera = GMSCameraPosition.camera(withLatitude: 25.074576, longitude: 121.520193, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        for state in states {
            let state_marker = GMSMarker()
            state_marker.position = CLLocationCoordinate2D(latitude: state.lat, longitude: state.long)
            state_marker.title = state.name
            state_marker.snippet = state.status
            state_marker.map = mapView
        }
        
    }
    func makePosition(){
        // Create a GMSCameraPosition that tells the map to display the
        let camera = GMSCameraPosition.camera(withLatitude: 25.074576, longitude: 121.520193, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 25.074576, longitude: 121.520193)
        marker.title = "Taipei digiBlock"
        marker.snippet = "環保租賃機"
        marker.map = mapView
        
    }
}
