//
//  selectionTableViewController.swift
//  Cape Town Summer Guide 2015
//
//  Created by Hugo Prinsloo on 2015/12/03.
//  Copyright © 2015 Hugo Prinsloo. All rights reserved.
//

import UIKit

class selectionTableViewController: UITableViewController {

    var firstArray = [String]()
    var firstHeadingLabel = [String]()
    var thirdArray = [thirdViewandSoOn]()
    
    
    
    
    var secondArray = [secondTableInfo]()
    var toPrint = [String]()
    var barBtnColour = UIColor.blackColor()
    var navBarBtnCustomColour = UIColor(red: 228/255, green: 52/255, blue: 80/255, alpha: 1)
//    let tableviewBackgroundColour = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = false

        
        


        firstArray = [
            "Top2.jpg",
            "Top.jpg",
            "Food.jpg",
            "Beach.jpg",
            "Coffee.jpg",
            "winewalk.JPG",
            "Nightlife.png",
            "Market Blue bird.jpg",
            "Winetasting.jpg"
        ]
        firstHeadingLabel = [
            "Top thing to do",
            "Adventurous",
            "Hungry",
            "Beach bum",
            "Coffee lover",
            "Drinks with friends",
            "Night life",
            "Markets",
            "Wine Tasting"
        ]
        
        
      
//Activity Page
        secondArray = [
            //Top things to do
            secondTableInfo(secondImage: [
                "tablemountain.png",
                "CliftonClear.png",
                "redbus.jpg",
                "diveSeals.png",
                "robbinIsland.jpg",
                "cape-point-nature-reserve.jpg",
                "waterfront.png"],
                
                heading: [
                    "Table Mountain",
                    "Clifton Beach",
                    "Hop on hop off",
                    "Dive with seals",
                    "Visit Robben Island",
                    "Cape Point",
                    "V&A Waterfront"]),
            
            //ADVENTUROUS
            secondTableInfo(secondImage: [
                "scuba.jpg",
                "climbTableMountain.png",
                "kayaking.jpg",
                "paraglid.jpg",
                "abseil.jpg",
                "LionsHead.png",
                "tokaiForest.png"],
            
            
                heading: [
                    "Go Scuba diving",
                    "Hike Table Mountain",
                    "Kayak the Atlantic",
                    "Paragliding",
                    "Abseil Table Mountain",
                    "Hike Lion's Head",
                    "Tokai Forest run"]),

            
            //HUNGRY
            secondTableInfo(secondImage: [
                "gormetBoerie.png",
                "elBuro.jpg",
                "villageIdiot.jpg",
                "ricksCafe.JPG",
                "TigersMilk.JPG",
                "brasbell.png",
                "dogsBollocks.png",
                "beluga_01.jpg",
                "bombayBicycleClub.png",
                "tashas.jpg",
                "potluck.png",

                ],
                
                heading: [
                    "Gormet Boerie",
                    "El Burro",
                    "Village Idiot",
                    "Rick's Cafe American",
                    "Tiger's Milk",
                    "The Brass Bell",
                    "Dog's Bollocks",
                    "Beluga",
                    "Bombay Bicycle Club",
                    "tashas ",
                    "The Pot Luck Club",

                    
                    ]),
            
            
            //BEACH VIBES
            secondTableInfo(secondImage: [
                "CliftonClear.png",
                "campsbaynew.png",
                "Beach.jpg",
                "stjames.png",
                "muizenberg.png",
                "blouberg.png"
                
                ],
                
                heading: [
                    "Clifton",
                    "Camps bay",
                    "Llandudno",
                    "St. James",
                    "Muizenberg",
                    "Blouberg"
                ]),
            
            
            //COFFEE LOVER
            secondTableInfo(secondImage: [
                "houseOfMachines.png",
                "beanthere.jpg",
                "deluxCoffee.jpg",
                "origin-roasting.jpg",
                "Kamili-Coffee1.jpg",
                "Coffee.jpg",
                "bootlegger.png"
                ],
                
                heading: [
                    "House of Machines",
                    "Bean there",
                    "Deluxe Coffeeworks",
                    "Origin Coffee",
                    "Kamili",
                    "Truth coffee",
                    "Bootlegger"
                ]),
            
            //Drinks
            secondTableInfo(secondImage: [
                "mexico.JPG",
                "GinBar.JPG",
                "tjingtjing.jpg",
                "beerhouse.png",
                "bar.JPG",
                "Orphanage.jpg",
                "cafe-caprice.jpg"

                ],
                
                heading: [
                    "Cabrito Bar",
                    "Gin Bar",
                    "Tjing Tjing",
                    "Beer House",
                    "Biergarten",
                    "Orphanage",
                    "Cafe Caprice"

                
                ]),

            
            //NIGHTLIFE
            secondTableInfo(secondImage: [
                "kloof street.jpg",
                "Nightlife.png",
                "longstreet.png",
                "cafe-caprice.jpg",
                "tjingtjing.jpg",
                "pianobar.png",
                "era.jpg"


                ],
                
                heading: [
                    "Explore Kloof street",
                    "Submerged Sunday's",
                    "Long street",
                    "Cafe Caprice",
                    "Tjing Tjing",
                    "Piano bar",
                    "Era"
                
                ]),
            
         
            
            
            //MARKETS
            secondTableInfo(secondImage: [
                "neigh.jpg",
                "houtbayMarket.png",
                "Market Blue bird.jpg",
                "BuildersWednesdays.JPG"],
                
                heading: [
                    "Neighborgoods market",
                    "Houtbay market",
                    "Blue bird Garage",
                    "Earth fair market"]),
            
        
            
            
            //WINETASTING
            secondTableInfo(secondImage: [
                "Beau.png",
                "stellenbosch.jpg",
                "grootcon.jpg",
                "bistro82.png"
                ],

                
                heading: [
                    "Beau Constantia",
                    "Stellenbosch wine tour",
                    "Groot Constantia",
                    "Bistro 1682"
                ])
            
       
            
            

            ]
        
        
        
//Detailed Page
        thirdArray = [
            
            //Top things to do
            thirdViewandSoOn(detailPageHeading: [
                "Table Mountain",
                "Clifton Beach",
                "Hop on hop off",
                "Dive with seals",
                "Visit Robben Island",
                "Cape Point",
                "V&A Waterfront"],
                
                detailPageImage:[
                    "tablemountain.png",
                    "CliftonClear.png",
                    "redbus.jpg",
                    "diveSeals.png",
                    "robbinIsland.jpg",
                    "cape-point-nature-reserve.jpg",
                    "waterfront.png"],
                
                detailPageInfo:[
                    //Table Mountain
                    "Looming large and welcoming you to Cape Town, whether you are arriving by plane, train, boat or automobile, is the iconic Table Mountain, one of the 7Wonders of Nature.  Looking at it from below is one thing, but it is quite another to be atop the mountain, from where one is afforded such wonderful views of Cape Town, Robben Island, the Peninsula and beyond. One can of course walk up Table Mountain, but getting to the top of Cape Town’s mountain doesn’t have to involve any more exertion than stepping aboard the 85-year-old Table Mountain Cableway which provides one with a gentle, quick and vista-full trip up to the top of the mountain. Getting up and down The trip to the top is an outing in itself, as you are safely and gently transported from the lower cable station to the top of the mountain and visa versa. The journey takes a little more than 5 minutes and the high tech rotating cable car offers the best views of the city. There are trips up and down every 10 – 15 minutes and the cableway operates 7 days a week, with the first car heading up at 8h00. The departure time of the last car down depends on the time of the year, and varies between 18h30 and 21h30.  Click here for updated operating times. Once at the top, over 3500ft above the city, you will find a vast network of well-marked paths to explore as well as strategically positioned lookout points.Altitude hunger There is a restaurant atop the mountain offering full meals as well as a small shop where you can pick up a snack and a post card. One could also pack a tasty picnic to enjoy at the top, remembering of course that you will be in the Table Mountain National Park, so please make use of refuse bins, or better still take all your waste down with you. Nature abounds Visitors to Table Mountain can enjoy wonderful views of the Rock Hyrax (Dassie) scuttling along the rocks, lizards sunning themselves, butterflies flitting past and you might even be lucky enough to spot a porcupine digging for bulbs. The bird life is wonderful too, from the large Verreaux Eagles to the small colourful sunbirds. All these creatures live in the fynbos, and 100’s of these plant species occur no where else on the planet. When the wind blows… Please note that the cableway is a weather-dependent operation and strong winds and poor visibility on top of the mountain will result in a suspension of services or closing of the cableway. Contact the Table Mountain Cableway to confirm that the car is operational on your chosen day. Getting to the Mountain .. Made Easy! Do the right thing for the planet – take the bus! Parking can sometimes be hard to find on busy days, and you can end up more than 1km away. The Cableway can be reached by public transport: the Cape Town Integrated Rapid Transit system, MyCiTi, stops at the top of Kloof Nek Road and a convenient Shuttle service takes visitors to the Lower Cable Station. A number of Route options take visitors to the Kloof Nek Road stop. Another great way to get to the mountain is with the City Sightseeing's Hop-On Hop-Off Bus, a service that runs every 20 minutes and does an 80 minute round trip, stopping at a number of tourist attractions. You can also purchase your Cable Car Tickets directly from the City Sightseeing Bus drivers. Getting Tickets?....  Easier Still Pick n Pay and Webtickets have partnered to provide a safe, accessible and convenient booking service.  Cableway visitors can now book online or via their mobile phones. Book your tickets and then pop over to your nearest Pick n Pay Store or Pick 'n Pay Express to pay for and collect your tickets. Express Stores are open 24/7.  ",
                    
                    //Clifton Beach
                    "Home to Millionaire’s Row, fashionable Clifton is known as Cape Town’s St Tropez, and its four beautiful beaches attract holidaymakers in their droves.Yachts floating on a turquoise ocean, white, sandy beaches and beautiful bodies all make up Clifton’s reputation as the French Riviera of South Africa. The gorgeous sea-facing apartments of Clifton are said to be some of the most sought-after real estate in the world. This snazzy little suburb offers spectacular ocean views and is close to not one, but four spectacular swimming beaches. All the beaches are safe for swimming, although be warned – the Atlantic waters are chilly, no matter what time of year you visit! A popular spot for surfing, Clifton can be accessed by steep walkways leading down to the various beaches. Granite outcrops divide the beaches into four quite distinct areas, namely First Beach, Second Beach, Third Beach and Fourth Beach. First Beach is a favourite among the surfers and volleyball players – it’s a veritable playground for the muscled among us. Second and Third beaches are family-friendly and popular with the 20-somethings as well as the gay crowd. Fourth Beach is the perfect family beach, and has excellent facilities including public toilets, changing rooms and places to buy cold drinks and snacks. Umbrellas and deck chairs are also available for rent. Blue Flag status has been awarded to Fourth Beach for adhering to stringent international environmental standards. Lifeguards are on duty during peak season and on the weekends, and swimming is relatively safe – although one should never underestimate the undertow. During the height of summer, finding parking along the M6 can be a nightmare so it’s a good idea to take the shuttle from your hotel, or make use of the regular buses that run along this stretch of coastline and service both Clifton and Hout Bay from the city centre.",
                    
                    //HopOnHopOff
                    "GET A VIEW FROM THE TOP: The open-top double-decker buses of City Sightseeing are one of the best ways to take in the highlights of Cape Town. With the sun on your shoulders, and an elevated view of your surroundings, you’ll see why the CitySightseeing Bus is the popular official tour of Cape Town and is enjoyed by visitors and locals alike. Rainy day?  No problem.  Sit inside and enjoy the Mother City's amazing views in warm comfort. Stunning views of the city from the top of an open-topped City Sightseeing bus, image courtesy of mikkels via Flickr. SEE THE SIGHTS:There are two routes covering more than 20 of Cape Town’s iconic attractions and destinations: The Red Route, including the Two Oceans Aquarium, V&A Waterfront, The South African Museum, Table Mountain Cable Way and more. The Blue Route, including Kirstenbosch Botanical Garden, Camps Bay, Sea Point and the Constantia Wine Route and more. HOP-ON-HOP-OFF: The buses depart from outside the Two Oceans Aquarium every 15 minutes, seven days a week, starting from 09h00, and you can use your ticket to jump off at any of the stops near the attraction you wish to visit, and get back on the next bus after you are done. Red City Tour running times: Summer: 1st Bus departs from Bus Stop 1, Two Oceans Aquarium at 09h00 with departures every 15 minutes. Winter: 1st Bus departs from Bus Stop 1, Two Oceans Aquarium at 09h15 with departures every 20 minutes. Blue Mini Peninsula Tour running times: Summer: 1st Bus departs from Bus Stop 1, Two Oceans Aquarium at 09h00 with departures every 20 min - (Saturday, Sunday,  school & public holidays) and every 25 min (Mondays to Fridays)Winter: 1st Bus departs from Bus Stop 1, Two Oceans Aquarium at 09h15 with departures every 35 minutes.TICKET PRICES: The 1-Day Ticket (R170 or buy online discounted: R150) is valid for both the Red City Tour and Blue Mini Peninsula Tour on the day of issue.The 2-Day Ticket (R270 or buy online discounted: R250) is valid for two consecutive days (so you can continue the tour the next day if you’ve been sidetracked at a particular destination) The two-day ticket also gives you FREE access to: Night Tour – operates between September and April, Canal Cruise - that operates between the Two Oceans Aquarium at the V&A Waterfront and the Cape Town International Convention Centre, Walking Tour – choose between City Walk (am) and Bo-Kaap Walk (pm). SO YOU SPEAK MY LANGUAGE? Buses are equipped for wheelchairs and the tour commentary is available in 16 languages including English, German, Dutch, French, Russian, Spanish, Mandarin, Italian, Arabic, Portuguese, Afrikaans, Zulu, Turkish, Japanese and a special Kids Club commentary for the junior passengers.",
                    
                    //Dive Seals
                    "Scuba diving with seals in Cape Town is a must for every scuba enthusiast. Explore the kelp forests around Duiker Island, Partridge Point and Strawberry Rock and be entertained by these beautiful creatures. Unlike when they are above water, where they are slow and awkward, seals are amazingly agile under the water. They live in closely knit colonies and it often happens that when we go scuba diving near them that we encounter dozens of them underwater at the same time. They are playful and curious creatures and are also known as the clowns of Cape Town. They love to swim around scuba divers and are bound to make your dive experience a memorable one. There are 3 sites where we can scuba dive with them. STRAWBERRY ROCK: This site is located to the north of Sandy Cove, opposite the Twelve Apostles Hotel in Oudekraal. There are two large granite boulders which stick out of the water and are home to around 70 Cape Fur Seals. Besides the playful seals that can be found there, the site is home to lots of strawberry anemones and other colourful invertebrates. With an interesting rocky reef on the north side, and a dense kelp forest in the south, the site is well worth the fairly long surface swim. DUIKER ISLAND: Also known as Seal Island, Duiker Island is located below the Sentinel in Hout Bay the site is a popular destination for divers and sight-seers alike. This is because the large granite boulders that stick out are home to 1000’s of Cape Fur Seals, one of the Cape’s largest colonies. This dive is one where you are guaranteed to see loads of them  in amongst the dense kelp forest surrounding the island. Be sure to bring your camera! PARTRIDGE POINT: The dive site of Seal Rock is located in Partridge Point in False Bay near Miller Point. The site consists of not only of the obvious Cape fur seals, but also a deep reef to the east. The site is a host to brightly coloured and various invertebrates which makes it a very diverse and interesting site to visit for lovers of both large and small aquatic life forms. The only thing to look out for is the strong surge and swell that can be present at this site.",
                    
                    //Robbin Island
                    "Info 5",
                    
                    //Cape Point
                    "Info 6",
                    
                    //Waterfront
                    "Info 7"]),
            
            
            //Adventure
            thirdViewandSoOn(detailPageHeading: [
                "Go Scuba",
                "Hike Table mountain",
                "Kayak the Atlantic",
                "Paraglide",
                "Abseil Table mountain",
                "Hike Lion's head",
                "Tokai forest"],
                
                detailPageImage:[
                    "scuba.jpg",
                    "climbTableMountain.png",
                    "kayaking.jpg",
                    "paraglid.jpg",
                    "abseil.jpg",
                    "lionsHead2.png",
                    "waterfront.png"],
                
                detailPageInfo:[
                    //Table Mountain
                    "Info 1 ",
                    
                    //Clifton Beach
                    "Info 2",
                    
                    //HopOnHopOff
                    "Info 3",
                    
                    //Dive Seals
                    "Info 4",
                    
                    //Robbin Island
                    "Info 5",
                    
                    //Cape Point
                    "Info 6",
                    
                    //Waterfront
                    "Info 7"]),
            
            
            //Hungry
            thirdViewandSoOn(detailPageHeading: [
                "Gormet Boerie",
                "El Burro",
                "Village Idiot",
                "Rick's Cafe American",
                "Tiger's Milk",
                "The Brass Bell",
                "Dog's Bollocks",
                "Beluga",
                "Bombay Bicycle Club",
                "tashas ",
                "The Pot Luck Club",
                ],
                
                detailPageImage:[
                    "gormetBoerie.png",
                    "elBuro.jpg",
                    "villageIdiot.jpg",
                    "ricksCafe.JPG",
                    "TigersMilk.JPG",
                    "brasbell.png",
                    "dogsBollocks.png",
                    "beluga_01.jpg",
                    "bombayBicycleClub.png",
                    "tashas.jpg",
                    "potluck.png",
                ],
                
                detailPageInfo:[
                    //Gormet Boerie
                    "Info 1 ",
                    
                    //El burro
                    "Info 2",
                    
                    //Village idiot
                    "Info 3",
                    
                    //Rick's cafe
                    "Info 4",
                    
                    //Tigers Milk
                    "Info 5",
                    
                    //Brass bell
                    "Info 6",
                    
                    //Dog's Bollocks
                    "Info 7",
                    
                    //Beluga
                    "Info 6",
                    
                    //Bombay Bicycle
                    "Info 6",
                    
                    //tashas
                    "Info 6",
                    
                    //Potluckclub
                    "Info 6"
                    
                ]),
            

            
            //Beach
            thirdViewandSoOn(detailPageHeading: [
                "Clifton",
                "Camps bay",
                "Llandudno",
                "St. James",
                "Muizenberg",
                "Blouberg"
                ],
                
                detailPageImage:[
                    "CliftonClear.png",
                    "campsbaynew.png",
                    "Beach.jpg",
                    "stjames.png",
                    "muizenberg.png",
                    "blouberg.png"
                ],
                
                detailPageInfo:[
                    //Clifton
                    "Info 1 ",
                    
                    //Camps Bay
                    "Info 2",
                    
                    //Llandudno
                    "Info 3",
                    
                    //st. james
                    "Info 4",
                    
                    //Muizenberg
                    "Info 5",
                    
                    //Blouberg
                    "Info 6"
                    
                ]),
            
            
            //Coffee
            thirdViewandSoOn(detailPageHeading: [
                "House of Machines",
                "Bean there",
                "Deluxe Coffeeworks",
                "Origin Coffee",
                "Kamili",
                "Truth coffee",
                "Bootlegger"
                ],
                
                detailPageImage:[
                    "houseOfMachines.png",
                    "beanthere.jpg",
                    "deluxCoffee.jpg",
                    "origin-roasting.jpg",
                    "Kamili-Coffee1.jpg",
                    "Coffee.jpg",
                    "bootlegger.png"
                ],
                
                detailPageInfo:[
                    //House of machines
                    "Info 1 ",
                    
                    //Bean there
                    "Info 2",
                    
                    //Deluxe Coffee works
                    "Info 3",
                    
                    //Origin
                    "Info 4",
                    
                    //Kamili
                    "Info 5",
                    
                    //Truth
                    "Info 6",
                   
                    //Bootlegger
                    "Info 6"
                    
                ]),
            
            //Drinks
            thirdViewandSoOn(detailPageHeading: [
                "Cabrito Bar",
                "Gin Bar",
                "Tjing Tjing",
                "Beer House",
                "Biergarten",
                "Orphanage",
                "Cafe Caprice"
                ],
                
                detailPageImage:[
                    "mexico.JPG",
                    "GinBar.JPG",
                    "tjingtjing.jpg",
                    "beerhouse.png",
                    "bar.JPG",
                    "Orphanage.jpg",
                    "cafe-caprice.jpg"
                ],
                
                
                detailPageInfo:[
                    //Cabrito Bar
                    "Info 1 ",
                    
                    //Gin bar
                    "Info 2",
                    
                    //Tjing tjing
                    "Info 3",
                    
                    //beerHouse
                    "Info 4",
                    
                    //Biergarten
                    "Info 5",
                    
                    //Orphanage
                    "Info 6",
                    
                    //Cafe Caprice
                    "Info 6"
                    
                ]),
            
            //Night Life
            thirdViewandSoOn(detailPageHeading: [
                "Explore Kloof street",
                "Submerged Sunday's",
                "Long street",
                "Cafe Caprice",
                "Tjing Tjing",
                "Piano bar",
                "Era"

                ],
                
                detailPageImage:[
                    "kloof street.jpg",
                    "Nightlife.png",
                    "longstreet.png",
                    "cafe-caprice.jpg",
                    "tjingtjing.jpg",
                    "pianobar.png",
                    "era.jpg"

                ],
                
                
                detailPageInfo:[
                    //KloofStreet
                    "Info 1 ",
                    
                    //SubmergedSundays
                    "Info 2",
                    
                    //longStreet
                    "Info 3",
                    
                    //CafeCaprice
                    "Info 4",
                    
                    //TjingTjing
                    "Info 5",
                    
                    //PianoBar
                    "Info 6",
                    
                    //Era
                    "Info 6"
                    
                ]),
            
            
            //Markets
            thirdViewandSoOn(detailPageHeading: [
                "Neighborgoods market",
                "Houtbay market",
                "Blue bird Garage",
                "Earth fair market"
                ],
                
                detailPageImage:[
                    "neigh.jpg",
                    "houtbayMarket.png",
                    "Market Blue bird.jpg",
                    "BuildersWednesdays.JPG"
                ],
                
                

            
                detailPageInfo:[
                    //NeighborMarket
                    "Info 1 ",
                    
                    //houtbayMarket
                    "Info 2",
                    
                    //BlueBird
                    "Info 3",
                    
                    //EarthFair
                    "Info 4"
                    
                ]),

            
            //Wine
            thirdViewandSoOn(detailPageHeading: [
                "Beau Constantia",
                "Stellenbosch wine tour",
                "Groot Constantia",
                "Bistro 1682"
                ],
                
                detailPageImage:[
                    "Beau.png",
                    "stellenbosch.jpg",
                    "grootcon.jpg",
                    "bistro82.png"

                ],
                
                
                detailPageInfo:[
                    //NeighborMarket
                    "Info 1 ",
                    
                    //houtbayMarket
                    "Info 2",
                    
                    //BlueBird
                    "Info 3",
                    
                    //EarthFair
                    "Info 4"
                    
                ]),

        
        ]
        

    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = navBarBtnCustomColour
//        self.tableView.backgroundColor = tableviewBackgroundColour
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return firstArray.count
    }
    

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! selectionTableViewCell
        
        
        let entry = firstArray[indexPath.row]
        let headings = firstHeadingLabel[indexPath.row]
        let image = UIImage(named: entry)
        
        cell.firstTLabel.text = headings
        cell.firstImage.image = image
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200.00
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let DestinationViewController = segue.destinationViewController as! activityTableViewController
        
        var secondTableArrayTwo : secondTableInfo
        secondTableArrayTwo = secondArray[indexPath.row]
        
        DestinationViewController.secondArray = secondTableArrayTwo.secondImage
        DestinationViewController.secondHeaderLabel = secondTableArrayTwo.heading
        
        var theNewThird : thirdViewandSoOn
        theNewThird = thirdArray[indexPath.row]
        
        DestinationViewController.secondAnswerArray = theNewThird.detailPageHeading
        DestinationViewController.ThirdImageFinal = theNewThird.detailPageImage
        DestinationViewController.ThirdInfo = theNewThird.detailPageInfo
        

      
    }
   
}
