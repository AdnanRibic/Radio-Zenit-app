#Radio Zenit: Official iOS app written in Swift

Radio Zenit is an open source radio station app with robust and professional features. This is a fully realized Radio App built entirely in Swift 2.  

**NOTE:** Yo will see some lines of code that are manipulating some strings and then send them trough api request and put them in labels. That is because some of data that I am getting from server are invalid, i get to much spaces and some unknown string. I figure out how to delete them and convert them to usable strings with artist name and songs name. If you try another station, delete those lines, or comment them. Then in api request just use self.track.name instead of object with strings that I manipulated. Same thing for labels. 


##Features

- LastFM API and iTunes API Integration to automatically download Album Art
- Parses metadata from streams (Track & Artist information)
- Ability to update Stations from server or locally. (Update stations anytime without resubmitting to app store!)
- Displays Artist, Track & Album Art on Lock Screen
- Custom views optimized for iPhone 4s, 5, 6 and 6+ for backwards compatibility
- Compiles with Xcode 7 & Swift 2.0
- Background audio performance
- Supports local or hosted station images
- "About" screen with ability to send email & visit website
- Uses industry standard SwiftyJSON library for easy JSON manipulation
- Pull to Refresh stations

##Important Notes
- Added option to use iTunes API to download album art. (See FAQ below). iTunes art is 100px x 100px. i.e. It is smaller than LastFM artwork. So, if you use this API instead, you will want to adjust the UI of your app.
- LastFM is working on their API signups. So, you may have trouble signing up for a LastFM key, hopefully they fix that soon. More info in FAQ below.  
- Volume slider works great in devices, not simulator. This is an Xcode simulator issue.  
- Radio stations in demo are for demonstration purposes only. 
- For a production product, you may want to swap out the MPMoviePlayerController for a more robust streaming library/SDK (with stream stitching, interruption handling, etc).
- Uses Meng To's [Spring](https://github.com/MengTo/Spring) library for animation, making it easy experiment with different UI/UX animations
- SwiftyJSON & Spring are included in the repo to get you up & running quickly. It's on the roadmap to utilize CocoaPods in the future. 

##Credits
*Created by [Adnan Ribic](http://adnanribic.com), LinkedIn: [Adnan Ribic](https://no.linkedin.com/in/adnanribic)*
*Thanks to [Matthew Fecher](http://matthewfecher.com), Twitter: [@goFecher](http://twitter.com/goFecher)*  
*Thanks to Basel Farag, from [Denver Swift Heads](http://www.meetup.com/Denver-Swift-Heads/) for the code review.*  

##Requirements

- iOS 8.0+ / Mac OS X 10.9+
- Xcode 7

##Integration

Includes full Xcode Project to jumpstart development.

##Stations 

Includes an example "stations.json" file. You may upload the JSON file to a server, so that you can update the stations in the app without resubmitting to the app store. The following fields are supported in the app:

- **name**: The name of the station as you want it displayed (e.g. "Sub Pop Radio")

- **streamURL**: The url of the actual stream

- **imageURL**: Station image url. Station images in demo are 350x206. Image can be local or hosted. Leave out the "http" to use a local image (You can use either: "station-subpop" or "http://myurl.com/images/station-subpop.jpg")

- **desc**: Short 2 or 3 word description of the station as you want it displayed (e.g. "Outlaw Country")

- **longDesc**: Long description of the station to be used on the "info screen". This is optional.


##FAQ

Q: Do I have to pay you anything if I make an app with this code?  
A: Nope. This is completely open source, you can do whatever you want with it. It's usually cool to thank the project if you use the code. Go build stuff. Enjoy.

Q: How do I use the iTunes API instead of LastFM?  
A: In the SwiftRadio-Settings.swift file, set the "useLastFM" key to "false". You do not need an API key to use the iTunes API. It is free.

Q: The LastFM site isn't working properly? I can't create an API key.  
A: Official word from LastFM "the team are working to add support as soon as possible". You do not need a LastFM key if you use the iTunes (or other) API.

Q: It looks like your LastFM api key and secret might have been left in the code?  
A: Yes, people may use it for small amounts of testing. However, I ask that you change it before submitting to the app store. (Plus, it would be self-defeating for someone to submit it to the app store with the testing keys, as it would quickly throttle out and their album art downloads would stop working!)

Q: Is there another API to get album/track information besides LastFM and iTunes?  
A: Rovi has a pretty sweet [music API](http://prod-doc.rovicorp.com/mashery/index.php/Data/APIs/Rovi-Music). The [Echo Nest](http://developer.echonest.com/) has all kinds of APIs that are fun to play with. 

Q: I updated the album art size in the Storyboard, and now the sizing is acting funny?  
A: There is an albumArt constraint modified in the code. See the "optimizeForDeviceSize()" method in the NowPlayingVC.

Q: My radio station isn't playing?  
A: Paste your stream URL into a browser to see if it will play there. The stream may be offline or have a weak connection.

Q: The song names aren't appearing for my station?  
A: Check with your stream provider to make sure they are sending Metadata properly. If a station sends data in a unique way, you can modify the way the app parses the metadata in the "metadataUpdated" method in the NowPlayingViewController.



