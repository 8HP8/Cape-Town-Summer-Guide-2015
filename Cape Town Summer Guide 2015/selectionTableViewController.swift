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
        self.tableView.separatorColor = UIColor.clearColor()


        
        


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
                "bokaap.jpg",
                "diveSeals.png",
                "robbinIsland.jpg",
                "cape-point-nature-reserve.jpg",
                "waterfront.png"],
                
                heading: [
                    "Table Mountain",
                    "Clifton Beach",
                    "Hop on hop off",
                    "Explore Bo-Kaap",
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
                "abseiling.jpg",
                "lionsHead2.png",
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
                "B82.png"
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
                "Explore Bo-Kaap",
                "Dive with seals",
                "Visit Robben Island",
                "Cape Point",
                "V&A Waterfront"],
                
                detailPageImage:[
                    "tablemountain.png",
                    "CliftonClear.png",
                    "redbus.jpg",
                    "bokaap.jpg",
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
                    
                    //Explore Bokaap
                    "Known for its brightly coloured houses and situated at the foot of Signal Hill, Bo-Kaap is the spiritual home of the Cape’s Muslim community. Bo-Kaap has a fascinating history. Many of the residents are descendants of slaves from Malaysia, Indonesia and various African countries, who were imported to the Cape of Good Hope by the Dutch during the 16th and 17th centuries. The slaves were known as “Cape Malays” (which is not essentially true as most of the residents are not entirely of Malaysian descent). However the term has stuck and Bo-Kaap is also known today as the Cape Malay Quarter. The museum building dates back to the 1760s and is the oldest house in the area that is still in its original form. The main focus is the contribution made by early Muslim settlers, and the house depicts a recreation of the life of a typical Malay family. Head towards Dorp Street and you’ll find the Auwal, South Africa’s first official mosque. This historic building was founded in 1797 by the influential Imam Abdulla ibn Abd al Salaam, a well-known Muslim scholar and activist. One thing you simply have to do when visiting Bo-Kaap is to have a traditional Cape Malay meal at one of the restaurants. Spices are heady and recipes date back centuries. Next to Bo-Kaap you’ll find De Waterkant. This trendy area has become one of the most sought-after addresses in Cape Town. Many of the old 19th-century homes have been transformed to create a village feel reminiscent of London’s Soho and New York’s Greenwich Village. There are numerous art galleries and restaurants and the area is popular with fashionistas from around the globe. (Photo Credit: Carina König)",
                    
                    //Dive Seals
                    "Scuba diving with seals in Cape Town is a must for every scuba enthusiast. Explore the kelp forests around Duiker Island, Partridge Point and Strawberry Rock and be entertained by these beautiful creatures. Unlike when they are above water, where they are slow and awkward, seals are amazingly agile under the water. They live in closely knit colonies and it often happens that when we go scuba diving near them that we encounter dozens of them underwater at the same time. They are playful and curious creatures and are also known as the clowns of Cape Town. They love to swim around scuba divers and are bound to make your dive experience a memorable one. There are 3 sites where we can scuba dive with them. STRAWBERRY ROCK: This site is located to the north of Sandy Cove, opposite the Twelve Apostles Hotel in Oudekraal. There are two large granite boulders which stick out of the water and are home to around 70 Cape Fur Seals. Besides the playful seals that can be found there, the site is home to lots of strawberry anemones and other colourful invertebrates. With an interesting rocky reef on the north side, and a dense kelp forest in the south, the site is well worth the fairly long surface swim. DUIKER ISLAND: Also known as Seal Island, Duiker Island is located below the Sentinel in Hout Bay the site is a popular destination for divers and sight-seers alike. This is because the large granite boulders that stick out are home to 1000’s of Cape Fur Seals, one of the Cape’s largest colonies. This dive is one where you are guaranteed to see loads of them  in amongst the dense kelp forest surrounding the island. Be sure to bring your camera! PARTRIDGE POINT: The dive site of Seal Rock is located in Partridge Point in False Bay near Miller Point. The site consists of not only of the obvious Cape fur seals, but also a deep reef to the east. The site is a host to brightly coloured and various invertebrates which makes it a very diverse and interesting site to visit for lovers of both large and small aquatic life forms. The only thing to look out for is the strong surge and swell that can be present at this site.",
                    
  
                    
                    //Robbin Island (http://www.robben-island.org.za/tours)
                    "Currently the boat runs three times a day, 09h00, 11h00 and 13h00 until the beginning of the peak season (01 September). The ferries depart from the Nelson Mandela Gateway at the V & A Waterfront. The tour takes 3.5 hours including the ferry trip to and from the Island (Depending on the boat used as they have different travel times). You will disembark at Murray’s Bay Harbour situated on the east coast of the Island and take a short walk to buses that will transport you to all the historical sites around the Island. On the way to the buses, you will pass buildings and a high wall built by prisoners during the 1960s.The buildings were used for family and lawyer visits to prisoners. You will meet your Tour Guide when you have boarded the busses. The Tour guides inside the prison are former political prisoners. They are fully conversant and knowledgeable about the Island’s multi-layered 500 year old history. The tour route includes the graveyard of people who died from leprosy, the Lime Quarry, Robert Sobukwe’s house, the Bluestone quarry, the army and navy bunkers and the Maximum Security Prison where thousands of South Africa’s freedom fighters were incarcerated for years. The tour culminates with a viewing of Nelson Mandela’s cell",
                    
                    //Cape Point (http://capepoint.co.za)
                    "Rugged rocks and sheer cliffs towering more than 200 metres above the sea and cutting deep into the ocean provide a spectacular background for the Parks’ rich bio-diversity. Cape Point falls within the southern section of Table Mountain National Park. The natural vegetation of the area, fynbos, comprises the smallest but richest of the world’s six floral kingdoms. The scenic beauty of Cape Point is not its sole allure; it is also an international icon of great historical interest with many a visitor drawn to the area because of its rich maritime history",
                    
                    //Waterfront (http://www.waterfront.co.za)
                    "This bustling shopping, dining and entertainment area neighbouring the Table Bay harbour is almost as synonymous with a visit to Cape Town, as the Table Mountain that looks upon it from up high.  Developed from redundant docklands, this vast property now blends seamlessly and attractively with the working harbour. Shop ‘till you drop: Shopping at the V&A Waterfront is a treat where you really can find absolutely anything your heart desires.  In the Victoria Wharf Shopping Centre, you will find all the major retailers as well as international brands. The Alfred Mall and Clock Tower Shopping Centre is where you’ll find a range of art, jewellery and specialty shops.  Watershed, the new home for African craft and design offers over 365 brands from 150 tenants for you to choose from. So much to see, do and buy: Shopping isn’t the only activity that can be enjoyed at the V&A Waterfront. You can also find two cinema complexes (which include the new luxury cinema, Scene) which feature the latest released films,  housed within the Victoria Wharf Shopping Centre.  The 123 hectare size property also has a world-class aquarium, the Two Oceans Aquarium and two museums; namely the Maritime and Chavonnes Battery museums. There are also guided and self-guided historical walking tours which the whole family can enjoy. The Cape Wheel is where you will be able to have an unsurpassed 360° view of the city.  For the sports fan, the Springbok Experience Rugby Museum celebrates the history of the Springboks and South African rugby. This museum can be found on Portswood Ridge, outside the croquet lawn. Entertainment offerings: The outdoor Amphitheatre plays host to music, dance and theatre throughout the year and right next door is the nautical-themed play area for children. And of course, the working harbour is part and parcel of the V&A experience. Not only can you watch tug boats tow large cruise ships in and out of the bay, but there are a number of boat trips regularly available.  The ferry that shuttles visitors to Robben Island leaves from Clock Tower Square.   If you don’t want to miss out on your daily exercise, you will enjoy the variety of cycle rental options on the property, walk or jog on the 2.5 or 5km running route or  just go for a relaxing walk on the beachfront board walk. Restaurants, restaurants and more restaurants: The V&A Waterfront has over 80 eateries so there is bound to be at least one that will serve up something to your liking.  The V&A Food Market also has a wide variety of food and dessert options for you to enjoy. Future developments: Zeitz MOCAA, a new not-for-profit institution, will be housed in the historic Grain Silo complex at the V&A Waterfront, with the V&A committing over R500-million to the development required for the establishment of the Museum. Built in 1921, and at 57m tall, the Grain Silo remains an icon of the Cape Town skyline. This investment will further the development of art in Africa and acknowledges the important cultural and financial contribution the visual arts sector makes. The R500-million redevelopment project, announced in November 2013 as a partnership between the V&A Waterfront and Jochen Zeitz will retain and honour the historic fabric and soul of the building while transforming the interior into a unique, cutting-edge space to house the Zeitz Museum of Contemporary Art Africa (Zeitz MOCAA). Considered the most extensive and representative collection of contemporary art from Africa, the Zeitz Collection has been gifted in perpetuity to this non-profit institution by ex-Puma CEO and Chairman, Jochen Zeitz.  The collection will be showcased in 9,500m2 of custom-designed space spread over nine floors, of which 6,000 m2 will be dedicated exhibition space. Completion of the project is due for end 2016. A message from Chantelle Cole, Executive Manager – Marketing - Silver Membership: “Our partnership with Cape Town Tourism is one that has allowed us to tailor objectives and tactics to our specific requirements in order to reach a wider audience to showcase the diversity of this property. As an organisation, CTT understands the importance of focusing locally to drive awareness and ultimately business, and address the challenge of seasonality. At the same time, we are given exposure to an international audience. This is perfectly in line with our strategic approach."],
            //LOCATION
                mapX:[
                    //"Table Mountain",
                    -33.948020,
                    //"Clifton Beach",
                    -33.939799,
                    //"Hop on hop off",
                    -33.907470,
                    //Bokaap
                    -33.921248,
                    //"Dive with seals",
                    -33.910253,
                  
                    //"Visit Robben Island",
                    -33.904320,
                    //"Cape Point",
                    -34.356494,
                    //"V&A Waterfront"
                    -33905660
                ],
                mapY:[
                    //"Table Mountain",
                    18.402531,
                    //"Clifton Beach",
                    18.375516,
                    //"Hop on hop off",
                    18.417416,
                    //Bokaap,
                    18.415014,

                    //"Dive with seals",
                    18.394393,
                                       //"Visit Robben Island",
                    18.420867,
                    //"Cape Point",
                    18.496330,
                    //"V&A Waterfront"
                    18.419929
                    

                ],
                webSite:[
                    //"Table Mountain",
                    "http://www.tablemountain.net",
                    //"Clifton Beach",
                    "http://www.capetown.travel/attractions/entry/Clifton",
                    //"Hop on hop off",
                    "https://www.citysightseeing.co.za/cape-town",
                    //Bo-Kaap
                    "http://www.capetown.travel/attractions/entry/Bo-Kaap_and_De-Waterkant",

                    //"Dive with seals",
                    "http://intotheblue.co.za",
                                      //"Visit Robben Island",
                    "http://www.robben-island.org.za/tours)",
                    //"Cape Point",
                    "http://capepoint.co.za)",
                    //"V&A Waterfront"
                    "http://www.waterfront.co.za)"
                ]
            
            ),
          
            
     
            
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
                    "abseiling.jpg",
                    "lionsHead2.png",
                    "waterfront.png"],
                
                detailPageInfo:[
                    //Scuba
                "At Into The Blue we are passionate about scuba diving. To that end, we offer a range of fun dives that allow you to explore the underwater wonders of Cape Town. Not all of the fun dives require you to be a qualified scuba diver, making it possible for non divers to also enjoy the experience. These fun dives can typically be broken into two main categories namely boat dives and shore dives. They include the following: Nature dives, ship wreck diving, diving with Cape Fur seals, snorkeling with Cape Fur Seals, diving with Cow sharks, diving with Mako and Blue sharks as well as cage diving with Great White sharks.",
                    
                    //Hike Table (http://www.tablemountain.net)
                    "Table Mountain is the most iconic landmark of South Africa. It is also the country’s most photographed attraction and its famous cable car took millions of people to its top. Table Mountain has become the single most welcoming icon to not only our people, but travellers from all over the world. But this mountain hides many surprises that wait to be discovered. It is much more than a scenic photograph background or a place from where you can take a breathtaking photo of Cape Town. There are about 2,200 species of plants found on Table Mountain and 1470 floral species. Many of these plants and flowers are endemic to this mountain. The magnificent Kirstenbosch Botanical Gardens found on the eastern foot of the mountain. Founded in 1913, the garden that spans an area of 1300 acres includes a unique conservatory with plants from different parts of the world. Besides the parks, the whole area has a biodiversity that is rare to find in other places on earth. Its many valleys and streams make it an idyllic getaway from Cape Town. The national park’s most unique feature is its fynbos vegetation that is displayed here better than anywhere in the world. The Cape Floral region of the national park is one of the richest floral regions in the world. Over 70% of the flowers are endemic to the Table Mountain. It is no wonder that the mountain was chosen as one of the new seven world wonders. Its fauna is no less thrilling either. Although animals such as the cape lion, mountain zebra or the leopard are no longer found here, the park is still home to caracals, rock hyraxes or chacma baboons. At the Boulders, penguins flock all over the place, a unique sight in Africa. The flat top peak of the mountain reaches 1,086 m above sea level, but being so close to the sea and to the city its features look more imposing.Besides the mountain, the national park contains another one of South Africa’s attractions, the Cape of Good Hope, the most southern point of the African continent.",
                    
                    //Kayak (http://kayak.co.za)
                    "Kaskazi Kayaks has the ideal location to launch and explore the Table Bay coastline from the sea providing unique and spectacular photo opportunities. Our shop is conveniently located at Three Anchor Bay where all our kayaks are stored on the beach. From Three Anchor Bay we embark on a 3 – 5 km journey either towards Granger Bay or Clifton Beach. Clifton is well known for its ultra soft white sand and transparent, topaz blue Atlantic water. Being one of the most expensive and exquisite places to live in Cape Town, surrounded by mountains and indigenous fynbos, it is a magnificent bay to soak up the view and rest before we return to shore. The bird life on the rocks at Clifton is prolific. View various species of Cormorants nesting, while seagulls and albatross fly overhead. The African penguin is a common sight even though they are not always brave enough to say hello. Seals and dolphins inspect the kayaks regularly and sometime accompany a group of paddlers an enchanting experience.  Southern Right, Bryde’s and Humpback whales are seen during whale season, normally July to December. The view of Signal Hill, Lion’s Head, Table Mountain and the 12 Apostles is unforgettable. Uninterrupted views of our spectacular mountain range and the sea breeze will leave you feeling rejuvenated and hungry to taste more of what the Mother city has to offer. The trip to Granger Bay takes us past the Green Point Lighthouse, the wreck of the RMS Athens and to to one of the favourite hangouts for our endemic Haviside’s dolphins. They are common companions to our trips particularly on summer mornings. Trips are approximately 2 hours long. If you have previous paddling experience we can arrange half day kayak trips. Booking is essential and all trips are weather dependent. ",
                    
                    //Paraglide (https://flycapetown.co.za)
                    "Tandem paragliding flights are mostly done from Lions Head or Signal Hill inside the beautiful Table Mountain National Park. Tandem paragliding flights generally last anything from 7 to 20 minutes, unfortunately the time spent in the air can not be guaranteed as we are totally reliant on the weather conditions on the day. Here at Fly Cape Town Paragliding we love to paraglide and your pilot will stay in the air with you for as long as possible. Our landing fields are either at the Camps Bay High school sports field in front of the Bungalow restaurant or at the Seapoint promenade in front of the Winchester Mansions. The landing area depends on the general wind direction on the day. Your pilot is equipped with a wide angle digital camera that is mounted on an extendable monopod. During your tandem flight your pilot will capture not only the breathtaking views but your smile as well. After the flight you can choose to purchase the in flight photos and video. Your in flight photos and video will be given to you in the form of a re-usable SD memory card.",
                    
                    
                    //Abseil (http://abseilafrica.co.za/table-mountain-abseil-r795/)
                    "Step off the top at 1000 metres above sea level, and Abseil into mind-blowing vertical space. The panoramic views from the top of Table Mountain are breath taking, but the views from the abseil are even better. Descending down the side of a sheer cliff you will have Camps Bay, the Atlantic Seaboard and the deep blue ocean at your feet with the Twelve Apostles at your side. The Table Mountain Abseil is guaranteed to get your pulse racing. We operate on a daily basis weather permitting between 9:30am and 3:30pm. The overall experience will take about 45 min to an hour and includes: *Signing and Harnessing up, *A Safety briefing, *Accessing the Abseiling site, *Doing the Abseil *A pleasant hike back to the to the top. No experience is needed, the guides show you the ropes and talk you through the whole process excludes: -Cableway Ticket",
                    
                    //LionsHead (http://www.capetown.travel/activities/entry/lions_head)
                    "Lion’s Head forms part of the Table Mountain range and provides a scenic backdrop to the City of Cape Town. It falls within the Table Mountain National Park and rises to a height of 669m (2195ft) above sea level. During the 17th century Dutch settlers first named the peak Leeuwen Kop (Lion’s Head). Its counterpart, Signal Hill, was referred to as Leeuwen Staart (Lion’s Tail), as the two mountains and the space between them is reminiscent of a crouching feline. Lion’s Head is best known for its stunning views of the Mother City and Table Bay on one side, and the Atlantic shoreline on the other, which makes the hour-long walk to the top really worth the effort. Add a little mystery to the walk by tackling it during full moon and be rewarded with a glittering view of Cape Town by night. Photographers should set aside the first clear day of their visit to Cape Town to walk to the top of Lion’s Head, as it provides a great location to orientate oneself and from which to photograph the famous Robben Island prison, where South Africa’s former president, Nelson Mandela, was held captive for 19 years. Geographically speaking, the “table top” of Table Mountain is of sandstone origin, while its slopes are composed of granite. This underlying composition supports the growth of natural fynbos vegetation which, in turn, provides a home for a host of small animals. Many millions of years ago, Table Mountain, Signal Hill and Lion’s Head would all have been joined together, but due to erosion are now separate. The three-hour walk to the top of Lion’s Head is quite a challenge, and not suited to the unfit, elderly or very young. The route starts at Signal Hill Road, at the base of Forestry Road and spirals around the head to a section with chains. These have been put in place to assist climbers over a steep, rocky section. Although there is an alternate route that bypasses the chains, the ascent is still steep and not to be taken lightly.",
                    
                    //TokaiForest (http://www.southafrica.net/za/en/articles/entry/article-southafrica.net-tokai-forest-mountain-biking)
                    "Tokai Forest, a lush expanse of green in the southern suburbs of Cape Town, offers mountain bike enthusiasts some of the best cycling routes imaginable. Within 20 minutes drive of the city centre, this forest is just as accessible as is it beautiful. If you ask any off-road cyclist in the Western Cape where the best mountain biking routes are, Tokai Forest is sure to be included in their answer. There are a number of clearly marked cycling trails to choose from, ensuring that there are options for both novice and expert cyclists. The pine, gum and eucalyptus trees of this forest stand magnificently tall, providing shade during the warm summer months. There are some excellent vantage points along the various routes, with terrific views of the Constantia vineyards and majestic Table Mountain. Along the more advanced routes, mountain bikers will have to negotiate a number of steep and tricky downhill slopes, including several hairpin bends. Fallen pine needles make some sections of the ride fairly slippery, adding to the challenge. Tokai Forest is managed and maintained by the Table Mountain National Park, under the auspices of South African National Parks (SANParks), and they have stepped up their conservation efforts to ensure the protection of the forest's biodiversity. Pop in at the Tokai Forest Arboretum when you arrive and let the authorities know that you will be cycling the forest's mountain biking routes. You can also get some expert information about the forest and its many natural wonders. Even in the car park, you are likely to meet local mountain biking enthusiasts who will gladly share some of their knowledge and stories with you. Various tour operators in Cape Town, including the highly-rated Downhill Adventures, offer guided tours of Tokai Forest, as well as mountain bike rentals for those who prefer to explore alone."],
                //LOCATION
                mapX:[
                    //"Go Scuba",
                    -33.910253,
                    //"Hike Table mountain",
                    -33.948020,
                    //"Kayak the Atlantic",
                    -33.906049,
                    //"Paraglide",
                    -33.917653,
                    //"Abseil Table mountain",
                    -33.947881,
                    //"Hike Lion's head",
                    -33.937104,
                    //"Tokai forest"],
                    -33.061136
                ],
                mapY:[
                    //"Go Scuba",
                    18.394393,
                    //"Hike Table mountain",
                    18.402531,
                    //"Kayak the Atlantic",
                    18.397979,
                    //"Paraglide",
                    18.402785,
                    //"Abseil Table mountain",
                    18.402215,
                    //"Hike Lion's head",
                    18.394834,
                    //"Tokai forest"],
                    18.414781
                    
                ],
                webSite:[
                    "http://www.tablemountain.net)",
                    "http://kayak.co.za)",
                    "https://flycapetown.co.za)",
                    "http://abseilafrica.co.za/table-mountain-abseil-r795/)",
                    "http://www.capetown.travel/activities/entry/lions_head)",
                    "http://www.southafrica.net/za/en/articles/entry/article-southafrica.net-tokai-forest-mountain-biking)"
                    
                ]
                
            ),
            
            
            //Hungry
            thirdViewandSoOn(detailPageHeading: [
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
                    
                    //El burro (http://elburro.co.za/#) / http://www.food24.com/Restaurants-and-Bars/Restaurants/El-Burro-20101022
                    "El Burro is considered one of the best Mexican restaurants in Cape Town.  Their goal is to always serve fresh Mexican style ingredients, sometimes ingredients directly from Mexico. The vibe is very cool and the decor is very Dawn of the Dead.  If you don't feel up to eating a full meal, El Burro has a large bar section so you can get your Tequila fix. ",
                    
                    //Village idiot (http://www.capetownmagazine.com/village-idiot)
                    "The first thing I notice is one giant ostrich perched in the middle of the bar. I’m at The Village Idiot, a straight-out-of-the-box new neighbourhood restaurant and bar lodged on Loop Street in Cape Town’s city centre, and by the time I’m seated, I find myself wondering whether what I’m seeing is, in fact, real or whether I’ve had such a long day at work that I’ve started hallucinating. “That’s Oskar, our village idiot mascot,” explains Reg Macdonald, the co-owner of the eatery, pointing to the large stuffed feathered creature. And from there, he begins to tell me the story behind this rather intriguing venue. The Village Idiot was launched in May 2015 by Reg and his partner Grant Baker, who together envisioned creating a place that would serve as a good old neighbourhood hangout and meeting spot that offers great food and drinks in a chilled environment that encourages a bit of silliness and tomfoolery. Reg is no stranger to the hospitality game and has opened an extensive list of establishments (nightclubs, bars, you name it) all over the world. The Village Idiot is not his first in Cape Town, and those who are familiar with the city’s hotspots will know him as the guy behind the rock ‘n’ roll nighttime haunt Aces ‘n’ Spades. The atmosphere here, though, is very different from the fast-paced, high-energy ambience typical of Aces ‘n’ Spades and instead diverts to a vibe that, as Reg puts it, invites you to relax, unwind (after a long day at work) and adopt a carefree attitude. The venue boasts a large balcony that plays host to spitbraais in summer and offers lovely views of the surrounding concrete jungle, an enchanting colonial fireplace that makes winter nights more bearable, pool tables, board games like Monopoly and Backgammon and other playful surprises here and there. In summation of what The Village Idiot strives to be, Reg emphasises that “this is a place where we raise our glasses to foolish renegades, adventurous idiots and all the people who refuse to live life by the rules of normality.”So it makes sense then that the chosen location of the eatery defies the Cape Town ‘foodville’ trend that has new places flocking to popular spots like Kloof, Bree and Long Street. On the contrary, this newbie is located in a lesser explored part of town that, in fact, was once the nightlife hub of the city and is now considered the financial district. Fittingly, Reg sees The Village Idiot as the kind of spot suited folk can come to loosen their ties, kick up their feet, have after-work drinks and eats and generally dig into all the neighbourhood restaurant has to offer. Speaking of which, the food offering is quite a pleasant surprise. Although the bar gives off an English pub feel (think low lighting, leather booths, wine barrels, taxidermy and wooden tables), the cuisine deviates from this by embracing South African braai culture. Conceptualised by chef Sheldon Raju and food expert Guy Wood, the menu is, according to Sheldon, “a melting pot of South African cultures that has basically been put on a plate.” Accordingly, visitors can expect enticing options like braai boards (a selection of local braaied meats served with chakalaka), freshly baked roosterkoek, Durban-style hot peri-peri chicken, boerewors burgers, biltong and cheese platters, potjies and appetising sides like pap, grilled mielies, potato salad, chips and more.An element of surprise comes in the form of the daily specials, which Sheldon injects with creativity and only reveals on the day. In addition, the selection of desserts is also sprinkled with a local theme – expect milk tart (made from a recipe from the 1940s) and braaied banana and pineapple served with coconut ice cream. On the drinks side, folk can expect a tight range of options, like classic cocktails with a South African twist (there’s a gin and rooibos-infused concoction, for example), craft beers and wine. By the time Reg and I reach the end of our conversation, I can see why he decided to create a place like this. And since I can be a highly strung type, I might just put The Village Idiot on my radar as my go-to spot when I just want to escape the stresses of work and life, let my hair down and be a bit of a fool.",
                    
                    //Rick's cafe (http://www.rickscafe.co.za/welcome_to_ricks.html)
                    "Walking into Rick's Cafe has the same feeling  as walking into a friend's home for dinner. The ambiance is comfortable to say the least with decor reminiscent of the movie classic Casablanca with its stylish colonial Moroccan tones accompanied by lounge music filtering through the 100 year old Victorian building, Immerse yourself in warm ambiance and eclectic decor in our 80 seater restaurant with its 3 fireplaces and bar, or enjoy the relaxed, vibey loft lounge and cocktail bar spilling out onto a roof deck with breathtaking views of the mountains. Our award winning selection of wines is sure to suit all tastes and features a wide selection by the carafe, we also offer over 60  local and imported Beers, over 30 Mexican and local Tequilas, a wide selection of Vodkas, Single Malts, Bourbons and Liquors. The menu presents a seasonal selection of Global tapas and a wide variety of dishes ranging from mouth watering salads, Gourmet burgers, fresh seafood, matured Steaks and Moroccan and Mediterranean specialties - we serve Comfort food So come relax and enjoy yourself with either lunching on the veranda, sipping sundowners on the roof deck or enjoy a delicious meal inside this historical cottage, and we will guarantee you'll want to  play it again We all look for that place to recommend as being my favourite place, well in this case you might just have found it.",
                    
                    //Tigers Milk (http://tigersmilk.co.za)
                    "With raw brick, rough wood, mismatched seating, vibrant pops of colour, an offbeat glass light installation and eclectic décor, the second-floor space, which opened in December 2014, certainly channels a ‘hipster’ feel and it has enough rustic pizzazz to hook in people from as ‘far’ away as Cape Town’s CBD. But it’s comforting to see that the bar has also been moulded to suit the seaside suburb it’s in: a laidback, eternal summer sort of feel prevails and is accentuated by floor-to-ceiling glass doors that fold away to let the sea breeze in; long, communal tables that can seat large groups give a nod to the neighbourhood’s close-knit community; and showers and lockers at the back make Tiger’s Milk a welcoming hangout for anyone who’s come straight off the sandy beach. Of course, the chief reminder that the restaurant is, in fact, not on some corner of Kloof Street, but rather right next to the Cape’s cool waters is the dramatic ocean view that’s visible from every seat in the house.  That is, even from all the way at the back of the expansive venue, visitors can see the straight line of the sea kiss the clear sky, and from right in the front, they can take in all the beachfront festivities while reclining on comfy sofas, a cocktail, craft beer or glass of wine in hand. Speaking  of drinks, there’s a wide enough range to keep visitors well lubricated until the early hours of the morning (and that includes around nine artisan brews on tap), and as far as the grub goes, well, it’s on par with the whole stand-out look and feel of the space. More specifically, Tiger’s Milk specialises in ‘dude food’: fare that’ll tickle any man’s tummy – think prime steaks; thin-based, wood-fired pizzas that are liberally strewn with seasonal toppings; and juicy burgers made with three different cuts of the famed Farmer Angus’s free-range meat. While the venue is first and foremost a restaurant and beer hall, on Wednesday and Sunday nights, it also ups the tempo with music spun by local DJs, and dancing is definitely not prohibited. Tiger’s Milk is certainly not meant to be the next Tiger Tiger, but it is a great new nightlife addition to the once rather lacklustre suburb of Muizenberg, which is yet another reason why it’ll likely quickly claw its way into the hearts of both Cape Peninsula dwellers and those from farther afield.",
                    
                    //Brass bell (http://www.brassbell.co.za/wmenu.php)
                    "The Brass Bell Restaurants and Pubs, located in the trendy harbor town of Kalk Bay, is situated in one of the most beautiful places on earth. Surrounded by the rolling waves, the restaurant complex of terraced dining areas, is nestled into the tidal pool walls, and offers visitors an unforgettable and truly unique dining experience. Built in 1939, the Brass Bell’s humble beginning as a council-run “Tea Room” is a far cry from the bustling complex of seaside dining venues that it is today. Owner, Tony White has pioneered the ongoing development of the Brass Bell Restaurants and Pubs, and together with his dynamic hospitality team has turned the Brass Bell from a once quaint seaside bistro into a beloved house hold name, boasting an impressive series of 7 different dining and events venues. The location and splendor of this magical place has captured the imagination and hearts of tourists and locals alike, and it is now a world renowned and well loved hotspot welcoming guests with warm hospitality and superb menu selections. ",
                    
                    //Dog's Bollocks (https://www.facebook.com/TheDogsBollocksAtYardCT/info?tab=overview) - http://www.eatout.co.za/article/the-dogs-bollocks-at-the-yard/
                    "Technically, it’s not a restaurant. There are no waiters, no bills, and no drinks – save for the cardboard containers of wine. If we were really quibbling, I’d call it a driveway. But since it opened in October last year, this narrow gap between two buildings has been getting such rave reviews that it’s attained cult status in Cape Town. We headed there to taste whether Nigel Wood’s burgers really are The Dog’s Bollocks. First off though, we have to find the place. Our intelligence tells us it’s off Buitenkant Street, on Roodehek. After a couple of trips down the road, we spot it: a blackboard menu outside and the twinkle of light from a couple of old-fashioned lampshades. “It’s take-away, but if you like, you can take it away to the tables and chairs over there,” owner and sole employee of The Dog’s Bollocks, Nigel Wood, explains as we wander in down the narrow alley. The food: A simple blackboard menu offers burgers, and only burgers. Yes, that means you don’t get chips. Ranging from R50 to R55, there’s everything from a plain po boy to a jalapeno cheese, and the old-school 1950s-style mega slider. They are served wrapped in a piece of newsprint, sans cutlery. “Take some of these; you’re going to need them,” Nigel tells us as he hands over a fistful of napkins. It’s easy to see why. In order to get our mouths round the burgers, which are at least 30% larger than your average hammie, we’re going to have to get dirty. Pretty soon, we both have sauce dripping down our elbows, face and shirts. The pepperberry blue (blue cheese and pepperberries – Nigel’s moniker for sweet piquant peppers) and the Mexican chocolate mole (dripping with spicy, chocolaty sauce) are worth it, however. The sauces are incredible, the patties soft, succulent and delicious – Nigel makes them himself from meat supplied by Sacks – and the lettuce and tomato fresh and crunchy. Altogether, it’s one of the best burgers I’ve ever had. The mood: Remember those white wire garden furniture sets from the eighties? The ones that gave you waffle-bum? Pair them with chintzy lampshades à la antique store, some cactuses and a concrete driveway and somehow you’ve got a pretty cool ambience. The people: Pony-tailed Nigel Wood is the owner and sole employee. A veteran of the restaurant trade (he owned several restaurants in the UK before turning out seriously good burgers here), Nigel has a relaxed, no-nonsense manner, which has got to be part of the reason this place is so popular. The wine: Multi-talented Nigel is also the man behind the trendy U-Tubes from Ukuva iAfrica: 1.5 litre cardboard tubes of wine. Although you can’t buy wine by the glass, Nigel will lend you one if you purchase a tube. We select a tube of white, which is not half bad, thanks to a few chunks of ice from clever fellow diners who had picked up a bag from the petrol station around the corner. The verdict: A must-visit. You’ll leave with a feeling of wellbeing that only being covered in burger sauce can provide. You can’t book a table, so simply make your way to 6 Roodehek Street (off Buitenkant) between 5pm to 10pm from Monday to Saturday. Nigel only makes 30 burgers a night – “a limited edition” – he says, so get there early if you don’t want to miss out. A final word of warning: don’t go there on a first date (watching someone else devour one of Nigel’s burgers is not a particularly sexy sight) and heed Nigel’s advice: take plenty of napkins.",
                    
                    //Beluga (http://www.beluga.co.za)
                    "We at Beluga love what we do! For us, Beluga is so much more than just a restaurant; it’s a lifestyle. The only goal we have, is to do better than the previous day as we search for perfection and strive to exceed every expectation. We truly hope that you will join us, and share what we love most... Since its relaunch in 2006, Beluga has grown into one of South Africa's most loved restaurants. We believe the secret to our success lies in never becoming complacent about our menu or service. We strive to constantly improve and refresh our sushi, dim sum, seafood and à la carte offerings as well as increase our wine, cocktail and bar selections.",
                    
                    //Bombay Bicycle (http://www.thebombay.co.za)
                    "Welcome to The Bombay Bicycle Club, Cape Town’s wonderfully wacky bohemian love den at the top of the hill, where everything is possible and always ensues. Headed up by Madame Zingara and the sensational Jonny Cavanaugh, The Bombay is a representation of our colourful history and an expression of our eclectic past; a venue where you are encouraged to let your hair down and expected to stay up way past your bed time. The menu is a collection of all-time favourites that have enchanted our diners for many years, complemented by an ever-changing collection of specials which embrace our local borough traders and keep even the most jaded palate amused. As The Bombay represents our past, so The Sidewalk Cafe symbolizes the new. One for the wild and hedonistic, and one for the gentle soul – the yin and yang of Madame Zingara.",
                    
                    //tashas (http://www.tashascafe.com/#)
                    "Beautiful food. Stunning environments. Engagingly delivered. Think, for a moment, of your favourite things – the feel-good indulgences that make for stand-out days. Mine are food, people and interiors. I believe that memorable moments are made with beautiful meals, engagingly delivered in exquisite environments. At tashas we strive to bring all of these things together for you to enjoy. If you take only one thing away when you leave a tashas, we hope it’s that quality is present in every little detail. tashas is in every little detail.",
                    
                    //Potluckclub (http://thepotluckclub.co.za)
                    "The Pot Luck Club, situated on the top floor of the Silo of the Old Biscuit Mill on Albert Road, Woodstock opened February 14th 2013. Since its opening day the pot luck has filled 2 sitting's each night throughout high and low season, running to capacity of one hundred and twenty guests. It has been dubbed the coolest place to be in Cape Town and its success is based on innovative cuisine, served in a relaxed yet edgy environment in part of Cape Town that has never attracted an evening dining crowd."
                ],
                //LOCATION
                mapX:[
                    //"El Burro",
                    -33.908370,
                    //"Village Idiot",
                    -33.919531,
                    //"Rick's Cafe American",
                    -33.928409,
                    //"Tiger's Milk",
                    -34.108030,
                    //"The Brass Bell",
                    -34.126207,
                    //"Dog's Bollocks",
                    -33.932202,
                    //"Beluga",
                    -33.912484,
                    //"Bombay Bicycle Club",
                    -33.936708,
                    //"tashas ",
                    -33.902109,
                    //"The Pot Luck Club",
                    -33.927612
                ],
                mapY:[
                    //"El Burro",
                    18.411052,
                    //"Village Idiot",
                    18.421105,
                    //"Rick's Cafe American",
                    18.410495,
                    //"Tiger's Milk",
                    18.469368,
                    //"The Brass Bell",
                    18.449879,
                    //"Dog's Bollocks",
                    18.419171,
                    //"Beluga",
                    18.418302,
                    //"Bombay Bicycle Club",
                    18.404812,
                    //"tashas ",
                    18.421374,
                    //"The Pot Luck Club",
                    18.457342
                ],
                webSite:[
                    
                    //"El Burro",
                    "http://elburro.co.za/#)",
                    //"Village Idiot",
                    "http://www.capetownmagazine.com/village-idiot)",
                    //"Rick's Cafe American",
                    "http://www.rickscafe.co.za/welcome_to_ricks.html)",
                    //"Tiger's Milk",
                    "http://tigersmilk.co.za)",
                    //"The Brass Bell",
                    "http://www.brassbell.co.za/wmenu.php)",
                    //"Dog's Bollocks",
                    "https://www.facebook.com/TheDogsBollocksAtYardCT/info?tab=overview)",
                    //"Beluga",
                    "http://www.beluga.co.za)",
                    //"Bombay Bicycle Club",
                    "http://www.thebombay.co.za)",
                    //"tashas ",
                    "http://www.tashascafe.com/#)",
                    //"The Pot Luck Club",
                    "http://thepotluckclub.co.za)"
                ]
                
            ),
            

            
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
                    //Clifton (http://www.capetown.travel/attractions/entry/Clifton
                "Home to Millionaire’s Row, fashionable Clifton is known as Cape Town’s St Tropez, and its four beautiful beaches attract holidaymakers in their droves. Yachts floating on a turquoise ocean, white, sandy beaches and beautiful bodies all make up Clifton’s reputation as the French Riviera of South Africa. The gorgeous sea-facing apartments of Clifton are said to be some of the most sought-after real estate in the world. This snazzy little suburb offers spectacular ocean views and is close to not one, but four spectacular swimming beaches. All the beaches are safe for swimming, although be warned – the Atlantic waters are chilly, no matter what time of year you visit! A popular spot for surfing, Clifton can be accessed by steep walkways leading down to the various beaches. Granite outcrops divide the beaches into four quite distinct areas, namely First Beach, Second Beach, Third Beach and Fourth Beach. First Beach is a favourite among the surfers and volleyball players – it’s a veritable playground for the muscled among us. Second and Third beaches are family-friendly and popular with the 20-somethings as well as the gay crowd. Fourth Beach is the perfect family beach, and has excellent facilities including public toilets, changing rooms and places to buy cold drinks and snacks. Umbrellas and deck chairs are also available for rent. Blue Flag status has been awarded to Fourth Beach for adhering to stringent international environmental standards. Lifeguards are on duty during peak season and on the weekends, and swimming is relatively safe – although one should never underestimate the undertow.During the height of summer, finding parking along the M6 can be a nightmare so it’s a good idea to take the shuttle from your hotel, or make use of the regular buses that run along this stretch of coastline and service both Clifton and Hout Bay from the city centre.",
                    
                    //Camps Bay
                    "Under the looming Twelve Apostles and Lion’s Head, with views out across the turquoise-coloured sea, Camps Bay sports some of the trendiest places in Cape Town to see and be seen. Head south from the beaches of Clifton (or north from the buzz of Sea Point) and you’ll discover the chic suburb of Camps Bay. The main drag, Victoria Road, is jam-packed with funky restaurants, trendy pubs, and bucket-and-spade shops on one side, and a palm-fringed beach on the other.It’s here, on the white sands of Camps Bay, where you’ll find bronzed and buff locals and visitors flexing their muscles and showing off their volleyball skills. While supermodels and rock stars of the world are known to hang out at Camps Bay, it’s also a great place for families – the sandy beach is wide and flat, and parking is sometimes more available than at nearby Clifton. During the Easter break and around the Christmas holidays, Camps Bay is packed to the brim",
                    
                    //Llandudno (https://www.capetown.gov.za/en/SportRecreation/Pages/LlandudnoBeach.aspx
                    "Llandudno is undoubtedly one of Cape Town’s most picturesque beaches. Motorists driving along Victoria Road on the way to and from Hout Bay can stop at the lookout site to gaze down on an enticing white beach, and admire from afar the exclusive suburb’s architectural showpieces clinging to the steep slopes. From the water’s edge, the setting is even more appealing, with the beach framed by natural bush, and Judas Peak and Klein Leeukoppie (‘little lion’s head’) rearing up on either side to form a dramatic mountain backdrop. Few people venture into the water for more than a quick dip, because the sea is usually icy cold in summer, the currents strong, and the power of the breakers sometimes intimidating to all but the most confident of surfers and bodyboarders. The beach is popular for sunbathing and sundowners, though some people opt for the surrounding granite boulders, which retain the sun’s heat, and provide a great view of the sun setting over the sea. The rocky headland to the left of the beach is known as Sunset Rocks.",
                    
                    //st. james (http://www.capetown.travel/attractions/entry/st_james
                    "Home to a cluster of well-known and oft-photographed bathing boxes on the beach, St James is a picturesque area that offers beachgoers respite from the westerly wind. St James is one of Cape Town’s smaller suburbs, yet it has a rich history. Thanks to a publication put together by St James historian, Michael Walker, the history of some of the original homesteads built between Muizenberg and St James in 1883 has been recorded. From St James towards Muizenberg, a number of gracious stone houses still remain as testament to a wealthy colonial past when the main road was commonly known as “Millionaire’s Mile”. During the late 19th century, homes were constructed from stone, plaster and limestone, and sported thatched roofs. Some of these homes have been handed down from generation to generation and still exist today, giving visitors a glimpse of what St James looked like in its heyday. One such structure is St James Cottage, built in 1853. According to historical accounts, the owner, Abraham Auret, hid prisoners of war in the loft during the Anglo-Boer War, and helped to stage their escape across the bay. Today St James offers the visitor a relaxing spot in which to unwind and enjoy the intimate beach and rock pools along the False Bay coastline. There’s also a safe tidal pool and a tennis court for the more energetic. This beach is ideal for families as the pool is warmer than the surrounding sea. When you tire of the beach, don your walking shoes and take a stroll along the pathway that links St James with Surfers’ Corner in Muizenberg.",
                    
                    //Muizenberg (http://www.capetown.travel/attractions/entry/Muizenberg
                    "This laid-back seaside town on the shores of False Bay comes alive in season, with holiday-makers crowding its streets as they make their way down to what is perhaps Cape Town’s nicest swimming beach. Although Muizenberg beach lacks the dazzling turquoise ocean and dramatic boulders of beaches like Clifton and Llandudno, it is much warmer to swim here than at the beaches on the Atlantic Seaboard. It is flat, wide, and the water is generally calm – so is very child-friendly. It’s also a popular surfing spot, although the waves aren’t enormous. It is ideal for long boarding and novices.There are a variety of surf and adventure operators, restaurants, coffee shops and apartments located along the main beach. Contact Cape Town Tourism’s Muizenberg Visitor Information Centre, conveniently located at the Pavillion on the main beach, to assist you to book accommodation, activities and transport. The friendly team will provide you with all the local knowledge, maps, brochures and what’s on information for any time of year. They’ll also make bookings for you at no cost. Look out for the brightly coloured Victorian beach houses, a visual echo of a time when this was Cape Town’s premier swimming beach, and which always provide a good photo opportunity. Muizenberg is the start of a vast white sand beach that stretches all the way to Gordon’s Bay – a distance of about 40km (25mi), curving around False Bay, so named because sailors in centuries gone by often mistook the large bay for Table Bay, home to Cape Town’s harbour and V&A Waterfront on the Atlantic seaboard.Although there have been some shark attacks in the area that have received a lot of coverage, these incidents are statistically tiny – one or two out of hundreds of thousands of people who swim and surf here each year. The sharkspotter programme that has been rolled out at a number of beaches along False Bay had its humble beginnings at Muizenberg. Shark spotters positioned high up on the side of the mountain raise the alarm when sharks are spotted, so visitors know when it’s not safe to go in the water.",
                    
                    //Blouberg (http://www.capetown.travel/activities/entry/Blaauwberg_Beach_and_Kite_Surfing
                    "Just 20 minutes’ drive from Cape Town’s City Centre you’ll find beautiful Bloubergstrand which lies on the West Coast of Table Bay. Blouberg Beach, also known as Bloubergstrand and Blaauwberg Beach, known for its picture-postcard views of Cape Town and Table Mountain, is renowned for its kite surfing. Driven by the Cape’s south-easter winds, Bloubergstrand’s most popular pastime is Kitesurfing. With a wide, spacious beach (Dolphin Beach, a perfect launch pad), 10 - 30 knot winds and unbelievable views of Table Mountain it’s not surprising that this place attracts foreign visitors year round for kite surfing safaris. The main beach, Big Bay, hosts highly rated surfing contests every year. If you’re not out there defying gravity, or trying to perfect a forward loop grab as they say in kite surfing speak, the beachfront promenade has a wide variety of restaurants and cocktail bars with inspiring views of Table Mountain and Robben Island."
                    
                ],
                
                //LOCATION
                mapX:[
                    //"Clifton",
                    -33.939799,
                    //"Camps bay",
                    -33.9650282,
                    //"Llandudno",
                    -33.008216,
                    //"St. James",
                    -33.119144,
                    //"Muizenberg",
                    -33.108054,
                    //"Blouberg"
                    -33.801383
                ],
                mapY:[
                    //"Clifton",
                    18.375516,
                    //"Camps bay",
                    18.377117,
                    //"Llandudno",
                    18.342020,
                    //"St. James",
                    18.458175,
                    //"Muizenberg",
                    18.470404,
                    //"Blouberg"
                    18.458374
                ],
                webSite:[
                    //"Clifton",
                    "http://www.capetown.travel/attractions/entry/Clifton",
                    //"Camps bay",
                    "http://www.capetown.travel/attractions/entry/Camps_Bay",
                    //"Llandudno",
                    "https://www.capetown.gov.za/en/SportRecreation/Pages/LlandudnoBeach.aspx",
                    //"St. James",
                    "http://www.capetown.travel/attractions/entry/st_james",
                    //"Muizenberg",
                    "http://www.capetown.travel/attractions/entry/Muizenberg",
                    //"Blouberg"
                    "http://www.capetown.travel/activities/entry/Blaauwberg_Beach_and_Kite_Surfing"
]
                
            ),
            
            
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
                    //House of machines (http://thehouseofmachines.com http://www.we-heart.com/2013/10/10/the-house-of-machines-cape-town/
                "We get all our biker parlance from Sons of Anarchy, and as of season four, the differences between a café racer, a street tracker and a bobber have yet to be explained, but we do know that they all sound cool, and that La Macchina Speed Shop is the place to find them in Cape Town. The glass-walled bike workshop is considered the beating heart of The House of Machines (ThoM), a venture impressive in name and scope that brings together three diverse retail elements under one rugged roof. Bike builder Drew Madacsi has linked up with Brewers & Union café co-founder Brad Armitage and fashion designer Paul van der Spuy, so that as well as modern updates on classic racers, there’s a clothing section that follows a similar contemporary-but-old-school philosophy in its menswear and grooming range, and an Evil Twin coffee shop stroke prohibition bar with a fittingly distressed aesthetic – all weather-beaten panelling and stripped back brick. If you’re cruising through Cape Town, be sure to pull in for a pit-stop at the House on Shortmarket Street.",
                    
                    //Bean there (https://www.beanthere.co.za/
                    "Bean There understands that even with the best coffee and the best equipment to prepare it, the quality of the coffee in the cup comes down to the person making it. Therefore, we provide barista training either on site or at one of our roasteries. We strive to fulfil all the coffee needs of our customers. Bean There Coffee Company regularly hosts coffee cupping evenings at the roasteries in Johannesburg and Cape Town. These evenings allow guests to taste a variety of coffees, ask questions, gain coffee information, and have a great evening out.",
                    
                    //Deluxe Coffee works (https://www.deluxecoffeeworks.co.za
                    "You should know that we don’t follow many rules when it comes to our coffee. In fact, there aren’t a lot rules that we follow in general. We do however know what we want. We are passionate about coffee and we think that those are good enough reasons for us to do what we do, and that is to roast, supply and serve coffee in the best way we know how. We also believe in having a great place where we can do all this and furthermore, where you can enjoy our coffee. That’s why our coffee roastery is the way it is. You won’t find any fancy food or wifi here. That’s not our vibe. A lot of good music, interesting people and great coffee. We like to give you coffee the way we would like to receive it. That’s what we’re all about.",
                    
                    //Origin (http://www.originroasting.co.za http://www.capetownmagazine.com/cafes/10-top-coffee-shops-in-cape-town/93_22_17421
                    "Calling themselves: the artisan roasters of Africa. Taking pride in their hands-on mastery coffee crafting approach – Origin was here as an inner city first and is the godfather of all gourmet coffees in the Mother City.  The venue has a wide range of beans available to their customers, both local and international, that they roast on site. It’s popular with the freelancing crowd as its cool interiors include both an upstairs and a downstairs area perfect for networking and socialising. If this isn’t enough, the coffee shop also attracts all tea lovers with their exotic options as the shop too has its own built-in teahouse replete with decorative orchids.",
                    
                    //Kamili http://www.kamilicoffee.co.za
                    "Kamili, meaning ‘perfect’ in Swahili. They roast coffee not to boast or impress, but rather to enjoy. At Kamili they consider it their duty to supply you with the best and freshest coffee possible, and how you enjoy your cup is up to you.",
                    
                    //Truth (http://www.truthcoffee.com
                    "“COFFEE IN THE CUP SHOULD DELIVER ON THE PROMISE OF THE AROMAS OF FRESHLY GROUND COFFEE” Until we achieve that, there is no rest for our team. “Flavour not bitterness” is the statement always echoing around our cupping table. The pursuit starts with sourcing and farm visits. Relationship coffee, and a lot of time in 4×4’s in dodgy lands. Micro-lots of exquisite green beans from the best farms, with the most dedication to their craft. So with award winning beans in hand, we set out to allow their flavours through. “You cannot polish a turd”  we were once told. But we can mess up perfection. It is our job not to. We cup every single roast. We then use the electronic data-logging on our, now computerised, vintage ’40s Probat roaster (the Colossus) to see where we went right or wrong, and that allows us to learn. And damned if we will ever stop learning. We then mix the individually roasted single origins into our beloved blends. Care, and empirical testing, and micro improvements are made from week to week. Although we do not consider ourselves a green company, we are the only roastery in the world roasting 100% on Bio-fuel. Used frying oil from restaurants is repurposed. Because we believe one is either part of the solution or part of the problem.",
                   
                    //Bootlegger
                    "We are Bootlegger Coffee Company. The BCC is unapologetically passionate about great coffee, inspired people and a cafe culture made to serve you foods made from the best, locally sourced ingredients. It’s also a place really awesome people come to meet, laugh and live a little. If you’re looking for a local to hang your hat at or need a 6:30am caffeine cycle-by – you’re welcome."
                    
                ],
                
                //LOCATION
                mapX:[
                    //"House of Machines",
                    -33.921357,
                    //"Bean there",
                    -33.922757,
                    //"Deluxe Coffeeworks",
                    -33.932216,
                    //"Origin Coffee",
                    -33.917163,
                    //"Kamili",
                    -33.922059,
                    //"Truth coffee",
                    -33.928257,
                    //"Bootlegger"
                    -33.919782
                
                ],
                mapY:[
                    //"House of Machines",
                    18.418805,
                    //"Bean there",
                    18.417217,
                    //"Deluxe Coffeeworks",
                    18.419179,
                    //"Origin Coffee",
                    18.417607,
                    //"Kamili",
                    18.419630,
                    //"Truth coffee",
                    18.422768,
                    //"Bootlegger"
                    18.385437
                ],
                webSite:[
                    "http://thehouseofmachines.com",
                    "https://www.beanthere.co.za/",
                    "https://www.deluxecoffeeworks.co.za",
                    "http://www.originroasting.co.za",
                    "http://www.kamilicoffee.co.za",
                    "http://www.truthcoffee.com",
                    "http://bootlegger.co.za"
                    
                    
                    
                
                
                ]
                
            ),
            
            //Drinks
            thirdViewandSoOn(detailPageHeading: [
                "Cabrito Bar",
                "Mother's Ruin Gin Bar",
                "Tjing Tjing",
                "Beer House",
                "Biergarten",
                "Orphanage",
                "Café Caprice"
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
                    //Cabrito Bar (https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjV7brQzc7JAhUJPhQKHbswAnkQFggdMAA&url=http%3A%2F%2Fwww.capetownmagazine.com%2Fbars%2Fcabrito-bar-in-cape-town%2F53_22_19049&usg=AFQjCNF3WnNBfp4orXVEsqO_burhm4KGgw&sig2=kII41F3Q-_2a2WauVk3_CA
                "More tequila. That’s primarily what you need to know about Cabrito, the hip new Atlantic Seaboard haunt that’s destined to make regulars out of a fair chunk of the stylish lot that live in and around the area. Opened in August 2013 by the four friends behind trendy Mexican restaurant El Burro, the intimate bar is the handsome, less ostentatious ground-floor cousin of its vibrant upstairs relative. Or to put it another way: if eating at El Burro is like tucking into authentic Mexican cuisine in Frida Kahlo’s whimsical lounge, then boozing just below at Cabrito is like sharing drinks with Diego Rivera in more rational quarters. “In a nutshell, downstairs is a cool little spot to hang out,” sums up co-owner Nic Haarhoff. “Really, there was nothing in this style this side of Bree Street, and we wanted to expand our business, but not in a way that would mess with El Burro.” More aptly, the chilled-out watering hole is to Green Point what The Power and the Glory is to Tamboerskloof. There’s no DJ, no live music, no quiz nights and no ambience-annihilating televisions. Cabrito, which means goat kid in Spanish, is quite simply a beautiful space where people can come to down a pint of craft beer, sip on a margarita and have a fat chat without the bother of gaudy distraction. “There’s no longevity in that kind of entertainment,” Nic explains. “And besides, we primarily build places where we [the owners] would like to go.” The philosophy, at first glance, seems rather bold. But Nic, Rene Jellis and brothers Hugo and Sascha Berolsky aren’t just amateurs with a dream. They all had a hand in establishing Royale Eatery as a legendary burger joint, Neighbourhood as an iconic drinks spot and The Assembly as a live music mecca, and their more recent baby, El Burro (it turns three in October 2013), is well on its way to becoming another Mother City institution. The Mexican restaurant has carved out a niche for itself thanks to its funky but homely design, delicious fare and a commitment to nurturing relationships with locals, and now Cabrito looks to follow in its footsteps. While the new hangout may be without quirky Day of the Dead artefacts and playful Mexican paraphernalia, it holds onto the ‘South of the Border’ theme by treating bar flies to a large selection of tequila and mezcal. The vast and varied offering includes both South African favourites and agave imports that hail from across the Atlantic. Plus, a few familiar cocktails, like El Burro’s well-loved House Margarita and the Paloma (a heady mix of tequila, fresh grapefruit juice, agave syrup and soda) are also on hand, along with a small, snacky menu that boasts two of the second-level eatery’s mainstays: Chilli Rellenos (smoked jalapeños stuffed with cheese) and Nachos with Homemade Salsa. Otherwise though, visitors can look forward to the usual craft beer suspects (both draught and bottled brews) as well as some distinctly South African bites, like biltong and droëwors. So, pop in for a drink prior to heading upstairs for the famous fish tacos, saunter down for a dop after stuffing yourself with authentic enchiladas or simply park at one of the beautiful wooden bronze-inlaid tables. Just remember to be careful. As the old Mexican proverb goes: one tequila, two tequila, three tequila, floor.",
                    
                    //Gin bar (http://mothersruin.co.za http://www.capetownmagazine.com/mothers-ruin-gin-bar-in-cape-town
                    "If craft beer was the hero of the past few years, then gin, it would seem, is the hotshot of 2015. Yes, the spirit that’s long been synonymous with greying retirees and the 18th-century poor has quickly become cool, and the December 2014 opening of Mother’s Ruin, a venue that’s purportedly Africa’s first dedicated gin bar, on one of the hippest streets in Cape Town is case in point. Brothers Rob and Mark Mulholland, the owners of this new Bree Street venture, actually took their cue from the burgeoning gin scene in the US, where the assortment of different styles is, according to the well-travelled pair, “just mind-blowing”. The movement has shuddered to a start in South Africa too (we’re seeing more and more micro-distilleries crafting their own labels), but no doubt, the fresh-faced bar will help give it a good kick in the right direction. As for why the beverage has taken on a new glow, well, it seems that the reason is similar to the one behind the great appeal of craft beer:  gin has entered into the artisanal realm and all those who love the idea of anything hand-crafted and small-batch are rejoicing. “It’s a very unique drink in that there are so many different botanicals that can be used to make it,” explains Rob, who, as the owner of popular nightclub Fiction, has plenty of experience running bars. “So, the range of gins available is incredibly diverse.” And the Mother’s Ruin bar, which takes its title from the nickname the drink was given in England in the 1700s when it was widely abused and responsible for the ‘ruin’ of many, displays this diversity well. The slick, cleanly decorated venue currently stocks 82 types of the spirit, and the eyes of anyone entering the top storey of the two-floor joint are automatically captivated by the miscellaneous mix of differently shaped bottles sitting just behind the bar counter. There are options from Austria, England, Ethiopia, Germany, Southern Spain, Tanzania, Sweden, Scotland and South Africa; there are potent, moderate and easy-drinking gins; gins for those with a sweet tooth and for those with a penchant for pungency; gins for drinkers with thick wallets and for those with very little to spare; and even an assortment of bottle-aged infused gins made by the brothers themselves. And there are almost as many ways to drink the spirit. The bar’s menu features at least seven styles of tonic water with which to top up the glass (including fruity, floral and savoury options) as well as a range of garnish alternatives. Not to mention, visitors can indulge in a number of classic gin-based cocktails, like an Old-school Negroni or Dirty Martini, or get adventurous with a creative speciality concoction, like the Fig Bellini (a mix of gin, fig syrup, figs and sparkling wine), the Strawberry Fields (gin, strawberry juice, lemon juice and ground pepper) or the Lawrence of Arabia (gin, dates, honey and tonic water). Because the focus is on the beverage, the owners have kept the food selection small and simple and gone for options that make for great gin accompaniments. More specially, there’s a Spanish charcuterie platter, an Italian meat plate and a South African cheese tray. Though you can take your tipple and tapas in the modern upstairs area, we recommend trundling downstairs, past the retro lounge, to settle in the closed-in alfresco courtyard – with a scattering of plants and a string of fairy lights as a ceiling, it lends itself to lazy late afternoons spent bantering with mates and (re)discovering the joys of gin.",
                    
                    //Tjing tjing (http://tjingtjing.co.za/
                    "Part rooftop, part attic in the heart of the CBD in a restored two centuries old heritage building. Our specialities are our cocktails, our unique wine list, our variety of craft beers and draughts and our tapas menu. Expect new indie and electronica music.",
                    
                    //beerHouse (http://www.beerhouse.co.za
                    "Relax and enjoy our contemporary beer hall with its 25 taps, and our legendary ’99 Bottles’ of the best local and international beer. Our emphasis is the curation of craft beer brands, and a service standard that sets the trend in the hospitality industry. Our beer is served by the most knowledgeable and passionate staff in the industry, and our food is crafted by an internationally experienced kitchen team specifically to compliment our large beer variety. We see ourselves as a hub for all things beer, and we strive to incubate the ideals of craft while supporting local micro-breweries and giving them a podium from which to shout their qualities to the world.",
                    
                    //Biergarten (http://www.capetownmagazine.com/brewers-andunion
                    "Thefirst time I stepped inside here, it was just concrete,” says the man-in-charge, Simon Wibberly as he gestures at Winehaus + Biergarten's interior. It’s moody inside. The low-light picks off white mosaic tiles; and wrap-around counters serve as resting space for elbows and beers. Concise design elements combine with the charcuterie hanging from the rafters to make this ex-church a stylish haunt for those with a thirst for the good life. Yes, church. “We built this bar as a shrine to our beer,” laughs owner Brad Armitage. “It’s also been a house-of-ill-repute.”Outside is where most of the beer-worshipping goes on. Picture: long wooden tables, cobblestones, stone walls, table tennis, and the young and upwardly mobile generally cavorting. I say young, but today I see a pair of woman, on the far-side of 50, sipping beer and giggling. It’s just that kind of place. Somewhere to experiment, play, and challenge ideas about what good beer really is. They specialise in an eponymous range of craft beers (sourced from a family-run brewery in Germany). The modus operandi is self-service; your lager will be delivered to your table, but you order at the counter. You can also purchase the range of five beers to enjoy at home. Not just a watering-hole; &Union serves up some of the best grub in Cape Town. The menu, an alignment with their beer ethos, plays host to a range of artisan cured meats, organic produce, and beer-inspired dishes, such as the minestrone soup made with Berne Unfiltered Amber Lager. They’re famous for the beef Prego, as well as the pulled pork: luscious sandwiches that are the perfect match for complex beer. Open at 7am, they serve bang-up breakfasts too: think organic eggs and farm-cured bacon. “We also make great coffee,” says Brad. “Organic beans, organic milk, and even organic sugar. The only thing that isn’t organic is the water.” Over one such frothy cup, I meet Gemma Smith. A trained sommelier, she’s ditched fine dining stuffiness in favour of beer salon chill. Her unofficial title is beer secretary, although wine is primarily her focus. Since her arrival, Weinhaus + Biergarten has hosted complimentary wine tasting evenings; they just ask that you book. “You’ll discover wines you wouldn’t be able to taste by just visiting the farm,” Gemma says in her English accented lilt. “Not standard wines at all, but garagiste finds, and sought after vintages. “Did you know there’s someone making a Syrah in his house on Ocean View Drive in Green Point?” she asks. “That’s our aim; to promote unique wines.”The tastings take place every Tuesday and Thursday at 6pm. These wine evenings are very much what &Union is all about: adding value to your experience. Brad tells me that initially people were put off by the price of the beer (double what you’d pay for a commercial lager), but that once people understand what they’re drinking, misconceptions fall away, and the extra value that comes with the product is unbeatable. Think live music nights at no entrance fee, wine tastings, free Wi-Fi, and then there’s the table tennis...",
                    
                    //Orphanage (http://www.theorphanage.co.za
                    "AN ORPHAN ALCHEMIST...leaps unto the African void, offering Orphanage Cocktail Emporium: a private specialist club of artisan cocktails, elixir's & intoxications. Our bar & laboratory serves cocktails, potions, champagne, superb wines, ales & virtuous tipples for those that prefer to remain pure & untainted by alcoholic liberations.   Melodious musical melodies are considered an important part of the Orphanage experience and we offer a variety of performances from local musical maestro's as well as guesting disc jockey's from overseas and far away. We proudly offer our guests temporary residence in our Parlour, a smoking permitted sin-bin & our tree-lined stoep under the mother city's stars for private hire.  Rather curiously we also have a less obvious Orphanage Club ~ a rather exclusive affair, harking back to the rumbustious & golden clubbing era of the 1920’s & only open on the odd whimsical occassion, when it really tickles our fancy... Our original orphan & bree street site will operate on a private basis throughout december 2015 after which we close our doors in preparation for our 2016 opening at speakers-corner.co.za in church square in the heart of the mother-city cbd for the next exciting chapter of orphanage cocktail emporium.",
                    
                    //Cafe Caprice (http://cafecaprice.co.za
                    "Café Caprice combines artisan cocktails, a café-style menu, relaxing lounges and sidewalk seating to experience the epitome of Cape Town’s cosmopolitan social scene. Situated directly across from Camps Bay Beach at 37 Victoria Road, open 7 days a week since 1999, it is a home for many Cape Townians and a must visit destination for tourists. Camps Bay beach is the ultimate sunset viewing spot and Café Caprice provides the perfect backdrop, as DJ’s fill the space with laid back music from Thursday to Sunday with a deep, chilled house soundtrack."
                    
                ],
                
                //LOCATION
                mapX:[
                    //"Cabrito Bar",
                    -33.908301,
                    //"Mother's Ruin Gin Bar",
                    -33.925598,
                    //"Tjing Tjing",
                    -33.922268,
                    //"Beer House",
                    -33.925430,
                    //"Biergarten",
                    -33.921643,
                    //"Orphanage",
                    -33.925765,
                    //"Café Caprice"
                    -33.950670
                ],
                mapY:[
                    //"Cabrito Bar",
                    18.411015,
                    //"Mother's Ruin Gin Bar",
                    18.413408,
                    //"Tjing Tjing",
                    18.418942,
                    //"Beer House",
                    18.415949,
                    //"Biergarten",
                    18.417324,
                    //"Orphanage",
                    18.413174,
                    //"Café Caprice"
                    18.378600
                ],
                webSite:[
                    //"Cabrito Bar",
                    "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjV7brQzc7JAhUJPhQKHbswAnkQFggdMAA&url=http%3A%2F%2Fwww.capetownmagazine.com%2Fbars%2Fcabrito-bar-in-cape-town%2F53_22_19049&usg=AFQjCNF3WnNBfp4orXVEsqO_burhm4KGgw&sig2=kII41F3Q-_2a2WauVk3_CA",
                    //"Mother's Ruin Gin Bar",
                    "http://mothersruin.co.za",
                    //"Tjing Tjing",
                    "http://tjingtjing.co.za/",
                    //"Beer House",
                    "http://www.beerhouse.co.za",
                    //"Biergarten",
                    "http://www.capetownmagazine.com/brewers-andunion",
                    //"Orphanage",
                    "http://www.theorphanage.co.za",
                    //"Café Caprice"
                    "http://cafecaprice.co.za"

                ]
                
            ),

            
            //Night Life
            thirdViewandSoOn(detailPageHeading: [
                "Explore Kloof street",
                "Submerged Sunday's",
                "Long street",
                "Café Caprice",
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
                    //KloofStreet (http://www.travelstart.co.za/blog/kloof-street-–-cape-town’s-most-eclectic-street/
                "If you’re looking for famous streets in Cape Town, no doubt everyone will tell you to visit Long Street, full of bars and shops and tourist traps. But they’d be wrong. Yes, Long Street has its charms, and if you’ve never visited it, it’s definitely a must-see. But isn’t the point of visiting a new city to see how the locals live? If that’s the view of Cape Town you’re after, Kloof Street should be top of your list. For starters, it’s simply packed with locals – predominantly Cape Town hipsters, but also some slightly-less-stylish types who are just going about their daily business. At the bottom of Kloof Street you’ll find the Lifestyles on Kloof Centre, and the hub of activity that surrounds it. If you’re in the mood for a spot of people watching, hang out at the Vida E Caffe two blocks below the centre, and sip on a piping hot cappuccino while you observe the streams of people coming in and out of the café. You can also pop into the stores surrounding this hotspot of style, to pick up some terribly hip items so you blend in. The Lifestyles Centre is known for a few reasons: the newly opened Knead bakery offers delightfully fresh and delicious breads, croissants and baked treats that are perfect for picnics or lazy breakfasts. The Wellness Warehouse upstairs has everything you could possibly need to live an eco-friendly life (as well as a delicious café that serves fresh, wholesome food that tastes so fantastic you won’t even know how good it is for you). They’ve also recently opened a décor shop with eco-friendly design elements: a must-visit. While you’re upstairs, be sure to check what’s on at the Labia independent cinema – this is an offshoot of the main cinema (on Orange St) but still a great spot to catch some interesting movies. And then of course, there are the good old fashioned staples of Woolworths for groceries, and Exclusive Books for reading material. Stroll up the street and you’ll no doubt be forced to stop in at one of the many quirky shops that line both sides of the street – from small art galleries to craft and design shops, to beautiful furniture stores and lust-worthy shops filled with small desirables. The Checkers centre is famous mostly because it’s open till 9pm and has an adjoining bottle store, but further up the road you’ll come to my personal favourite: upper Kloof Street. From Café Paradiso on the corner (perfect for lazy al fresco lunches and dinners) to Jackal and Hide further up the road (with delicious 2 for 1 cocktails from 4pm to 7pm), the lovely Café Milano bakery and the charming Kloof Street Library, this really is a village within a city.Browse in the antique shop, stop off for a coffee, pick up some fresh meat from the butcher, and experience what it’s like to be a real Capetonian. Then try and tell me you don’t love it…",
                    
                    //SubmergedSundays http://afterhours.nutickets.co.za
                    "If summer had a sound, it would be the jazzy electro beat of legendary local duo Goldfish. The world-renowned act’s tropical house grooves are synonymous with warm weather, so fans will be more than pleased to hear that the band has returned to the V&A Waterfront’s sexy Shimmy Beach Club this balmy season. The popular Submerged Sundays sessions will be running for ten weeks from Sunday, 29 November 2015 until the end of January 2016. Hands-down one of South Africa’s greatest musical exports, the classically trained duo has enjoyed much local and international success, and this is the third year that they are using the Mother City’s premier beach club as their summer base. It’s a fine venue for the yearly ritual too. The swanky, incredibly spacious Shimmy sits right on the water’s edge and boasts a sprawling deck that sidles up to an infinity pool and its own manmade beach, which is precisely where the souped-up outdoor stage is located. Guests can enjoy the ultimate oceanfront party, dancing to Goldfish’s infectious melodies with sand between their toes and a soft sea breeze drifting through their hair. David Poole and Dominic Peters add live instruments and vocals to their music to give it an edgy afro-jazz flair that adds to their distinctive sound and up-tempo beats. Producing hit after hit of organic and electronic music, the band has released a slew of award-winning albums, the latest of which is titled The Submerged Sunday Mix. Dominic describes their style: “It’s all about live instruments. Dave plays saxophone and flute and I play electric double bass and keyboards. We mix this with beats and basically go nuts for about an hour and a half – sort of a reinvention of the DJ.” To help turn the party into a whole afternoon of summery revelry, the band is usually supported by an assortment of local and international DJs, who specialise in a similar sort of laidback deep house sound. Most of these acts are only announced closer to the day, but there are already a few big-name guest artists on the bill, like the great German dance sensation Stimming who’ll join the boys on opening night. Otherwise, partygoers can simply while away the evening sipping on creative cocktails and snacking on tasty eats, with the beat of this famed band pulsing in the background. It’s the epitome of summer in our beautiful beachfront city and an experience you’d be unwise to miss.",
                    
                    //longStreet (http://www.capetownmagazine.com/best-of-cape-town/top-places-to-party-in-cape-town/124_22_17297
                    "Cape Town’s hottest nightlife artery, the aptly named Long street is a seemingly endless stretch of bars, clubs and restaurants. Long Street caters to almost every musical and social taste, every night of the week. Take a taxi or your walking shoes and get to know its after-hours offering. Pop into Beerhouse (home to 99 brews) for a stylish happy hour, drink in some loungy beats at speakeasy-stye cocktail joint Julep or shake a tailfeather at the Waiting Room. No matter what you’re in the mood for, you’ll come right on Cape Town’s most storied avenue of debauchery. ",
                    
                    //CafeCaprice
                    "Café Caprice combines artisan cocktails, a café-style menu, relaxing lounges and sidewalk seating to experience the epitome of Cape Town’s cosmopolitan social scene. Situated directly across from Camps Bay Beach at 37 Victoria Road, open 7 days a week since 1999, it is a home for many Cape Townians and a must visit destination for tourists. Camps Bay beach is the ultimate sunset viewing spot and Café Caprice provides the perfect backdrop, as DJ’s fill the space with laid back music from Thursday to Sunday with a deep, chilled house soundtrack.",
                   
                    
                    //Tjing tjing (http://tjingtjing.co.za/
                    "Part rooftop, part attic in the heart of the CBD in a restored two centuries old heritage building. Our specialities are our cocktails, our unique wine list, our variety of craft beers and draughts and our tapas menu. Expect new indie and electronica music.",
                    
                    //PianoBar (http://thepianobar.co.za
                    "A trendy New York-inspired music revue bar and eatery with a strong African flavour. Located at the corner of Jarvis and Napier Streets ...... our wraparound terrace enjoys views through De Waterkant village to Devil's Peak as well as towards the bay. The ideal spot to chill out over an evening cocktail .",
                    
                    //Era (http://eracapetown.com/about
                    "This is ERA. A space where electronic music is celebrated through lifestyle, where audio and visual focus come together, where technology meets imagination as the senses are taken on a journey designed for pure enjoyment. ERA is the platform for expression, borne out of the passion for music and the creative minds behind it. This is the space to experience the sensation that we believe comes from the dedication to the lifestyle that is electronic music."
                    
                ],
                
                //LOCATION
                mapX:[
                    //"Explore Kloof street",
                    -33.929765,
                    //"Submerged Sunday's",
                    -33.904739,
                    //"Long street",
                    -33.925131,
                    //"Café Caprice",
                    -33.950670,
                    //"Tjing Tjing",
                    -33.922268,
                    //"Piano bar",
                    -33.915512,
                    //"Era"
                    -33.921426,
                
                ],
                mapY:[
                    //"Explore Kloof street",
                    18.410924,
                    //"Submerged Sunday's",
                    18.429782,
                    //"Long street",
                    18.416236,
                    //"Café Caprice",
                    18.378600,
                    //"Tjing Tjing",
                    18.418942,
                    //"Piano bar",
                    18.417046,
                    //"Era"
                    18.419211,
],
                webSite:[
                    //"Explore Kloof street",
                    "http://www.travelstart.co.za/blog/kloof-street-",
                    //"Submerged Sunday's",
                    "http://www.shimmybeachclub.com/press-room/goldfish-submerged-sundays-back-at-shimmy-in-november-15/",
                    //"Long street",
                    "http://www.capetownmagazine.com/best-of-cape-town/top-places-to-party-in-cape-town/124_22_17297",
                    //"Café Caprice",
                    "http://cafecaprice.co.za",
                    //"Tjing Tjing",
                    "http://tjingtjing.co.za",
                    //"Piano bar",
                    "http://thepianobar.co.za",
                    //"Era"
                    "http://eracapetown.com/about"
]
                
            ),

            
            
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
                    //NeighborMarket (http://neighbourgoodsmarket.co.za/cape-town/about-us
                "The Neighbourgoods Market is an independent initiative founded in 2006 by entrepreneurs Justin Rhodes and Cameron Munro, whose aim is to revive and reinvent the Public Market as a civic institution. This award-winning market features over 100 specialty traders every Saturday, creating a weekly platform for local farmers, fine-food purveyors, organic merchants, bakers and distributors, grocers, mongers, butchers, artisan producers, celebrated local chefs, and micro enterprises. The market is housed in an old sky-lit brick warehouse and courtyard at the Old Biscuit Mill in the industrial neighbourhood of Woodstock, Cape Town. It is as much a source for farm fresh as well as organic foods and locally produced specialty goods, as it is a meeting point to enjoy community, swap ideas and stories, and become educated about what we buy and eat by going directly to the source. A calendar of seasonal events, specialty festivals, and live music feature throughout the year. ",
                    
                    //houtbayMarket (http://www.bayharbour.co.za
                    "Imagine...a place where the creative energy and the vibrancy of South Africa come alive in an old authentic fish factory in a working harbour .... where people of all ages and cultures gather alongside one another to celebrate our unique festive spirit .... where the hustle and bustle of a boisterous market fills the air ...... where local traders exchange banter with customers .... “that’s a bargain, fo sho, medam! ” ... an eclectic stylish wonderland of exquisite art, craft and fashion .... complemented by the delicious aromas of food to tempt all the senses...braaing fish, freshly baked breads and citrus fruits ... you pass a robotic mime drawing gasps from giggling kids ... the sound of a township guitarist and a groovy sax ...... punctuated by singing seagulls .... where the beauty of famous Chapman’s Peak looms overhead .......... and the vibe is just sommer lekker!",
                    
                    //BlueBird (http://bluebirdmarket.co.za
                    "As the cornerstone of the Muizenberg community, the Blue Bird Garage Food & Goods Market takes place every Friday night in a beautiful old postal plane hangar on the edge of this urban village.  You will find this space filled with a collection of local Artisans, specialty cooks, bakers, producers and Designers.  We bring the butcher, the baker, the t shirt maker together under one ecclectic, creative, vibey roof. South African wines, craft beer, delicious food, live music from local artists, a creative kids area and great company are all part of the tapestry that makes this a very unique and inviting market experience.  It's a great way to spend a Friday night !",
                    
                    //EarthFair ( http://capemarkets.co.za/markets/earth-fair-food-market/
                    "Earth Fair Market can be found in Main Rd Tokai (same centre as the Builders Warehouse) on a Wednesday and Saturday and in the beautiful tree lined Upper St Georges Mall on a Thursday. Each market has a distinct personality: Saturday is all about the weekly shopping; Wednesday is a buzzing hub of top up shopping, delicious dinner and drinks for the family and Thursday offers a vibey outdoor market in the heart of the City which is probably the closest to a European street market the Cape has to offer. Earth Fair has the best selection of fresh produce shopping traders in the Cape. The Saturday market has 5 free range meat traders, 2 vegetable traders (1 organic), cheese, breads (including speciality breads), fish, farm dairy, patisserie, pet foods and pretty much everything you would need for your weekly shop. Tokai is a well-established, indoor, conveniently situated market with lots of parking. Earth Fair is known for its strict trader standards and for its emphasis on getting people to take markets seriously as a shopping destination. While they take themselves seriously in the take home shopping department, that is not at the expense of a great vibe, toe tapping music and one of the biggest craft beer selections to be found. The Little People’s Corner offers great activities to keep the small people entertained while you shop and eat."
                    
                ],
                
                //LOCATION
                mapX:[
                    //"Neighborgoods market",
                    -33.927569,
                    //"Houtbay market",
                    -33.054962,
                    //"Blue bird Garage",
                    -33.103491,
                    //"Earth fair market"
                    -33.074608
                ],
                mapY:[
                    //"Neighborgoods market",
                    18.457614,
                    //"Houtbay market",
                    18.347221,
                    //"Blue bird Garage",
                    18.469481,
                    //"Earth fair market"
                    18.459444

                ],
                webSite:[
                    //"Neighborgoods market",
                    "http://neighbourgoodsmarket.co.za/cape-town/about-us",
                    //"Houtbay market",
                    "http://www.bayharbour.co.za",
                    //"Blue bird Garage",
                    "http://bluebirdmarket.co.za",
                    //"Earth fair market"
                    "http://capemarkets.co.za/markets/earth-fair-food-market/"
                ]
                
            ),


            
            //Wine
            thirdViewandSoOn(detailPageHeading: [
                "Beau Constantia",
                "Stellenbosch wine",
                "Groot Constantia",
                "Bistro 1682"
                ],
                
                detailPageImage:[
                    "Beau.png",
                    "stellenbosch.jpg",
                    "grootcon.jpg",
                    "B82.png"

                ],
                
                
                detailPageInfo:[
                    //Beau (http://www.beauconstantia.com
                "Beau Constantia is a boutique wine farm situated at the top of Constantia Nek overlooking False Bay. Vines are planted to an elevation of 350 metres above sea-level on some of the steepest agricultural slopes in the Cape. These lovingly nurtured vines are spoilt with panoramic views of the Stellenbosch and Helderberg Mountain ranges and over False Bay as far as Hangklip. Beau Constantia is a boutique wine farm owned by the Du Preez family. The farm is situated on the north-facing slope of Constantia Nek, an elevated position overlooking False Bay to the east, where vineyards are exposed to the cool ocean-chilled winds. With vineyards stretching to 350m above sea-level on the Constantia mountain range, this spectacular site produces small quantities of phenomenal grapes with cropping levels ranging from 3 – 6 tons per hectare. This allows for concentrated, yet balanced wines that have a sense of place.",
                    
                    //Stellen http://vinehopper.co.za
                    "Stellenbosch is one of the most beautiful towns in South Africa and is home to some of the best wines in the world! The town is known for its Cape Dutch Architecture and has the best preserved historic center in South Africa. The Oak lined streets of Stellenbosch are also home to the prestigious University of Stellenbosch. The Stellenbosch Winelands are in close proximity to Cape Town (40 minutes drive by car ) and a real South African attraction. The wine farms in Stellenbosch range from big farms with, high tech cellars, through multi-functional farms and historical manors to small, more intimate wine estates that lend themselves to relax and enjoy nature and the fruits of the vine! Most of these farms lie in the many valleys and hills of the Stellenbosch Wine area and boast with magical views of the winelands. With the Vine Hopper wine tour in Stellenbosch it is our intention to offer you a good representation of the Stellenbosch Wine Route, while leaving it up to you to decide where you would like to go and how long you would like to stay!",
                    
                    //GrootCon (http://www.grootconstantia.co.za
                    "Groot Constantia is South Africa’s oldest wine producing estate with an uninterrupted record of wine production since its inception in 1685, boasting a proud heritage of 330 years this year. The Groot Constantia trademark is also one of the oldest surviving trademarks in the world today. In fact, Groot Constantia bottles, bottle shards and bottle seals dating from as far back as 1774 have been found in far corners of the world in some unusual circumstances. Over the years, wine produced on the estate has caught the attention of influential people across the globe. Aristocracy made sure that they had enough stock of this acclaimed and precious product.  A glass of Groot Constantia wine was one of Napoleon’s last wishes before he died in exile on St Helena. The British Royal family as well as Frederic the Great of Prussia, have also all appreciated the Groot Constantia wine. It has changed hands many times over the centuries of course and now Groot Constantia is a National Monument and a living museum with the task of preserving the history and cultural legacy of the South African wine industry for the people of South Africa.  The current owners of the estate, the Groot Constantia Trust, a non-profit company, has ensured that Groot Constantia is beautifully maintained and operated to the highest standards.  Groot Constantia consistently produces award winning wines, and since 2003 the estates’ wines have collectively won 82 gold medals. Come and taste the Groot Constantia wines in one of the beautiful tasting rooms.  Visitors can relax in a fresh, modern and light space whilst sipping on wines that are made the old fashioned way – with attention to detail, to exacting standards, with pure ingredients that are harvested by hand and packaged in bottles labelled with the historical label. And don’t forget about the chocolate and wine pairing experience, which includes four delectable chocolates paired with four of the estates award winning wines.",
                    
                    //Steenb
                    "Named after the year in which Steenberg was established, Bistro Sixteen82 first opened its doors in 2009, and has been the tapas and bistro-style darling of the dining world ever since. An innovative and interactive wine and food destination, the Bistro sits adjacent to Steenberg’s winery, and spills into its surrounding indigenous gardens with a terraced dining area leading to reflective water features, unfurling into views of the magnificent stone mountains and expansive winelands. The Bistro Sixteen82 menu is a constant evolution, keeping up with seasonal produce and featuring inventive dishes that compliment the finest locally sourced ingredients. With Breakfast, Lunch and late-afternoon Tapas menus to choose from, the Bistro provides fine dining with an inimitable contemporary spirit. Executive Chef, Kerry Kilpin, love to create food which is seasonal, flavourful and bursts with freshness.  My greatest inspirations are derived from significant occasions in my life.  On my travels to Thailand I developed a love and passion for Asian food.  From shopping at the local food markets to creating my first authentic Thai dish, I was in heaven.  You will notice a common thread in what I do and who I am. Love. I cook with love and my food is love. Internationally, Bistro Sixteen82 has been recognised in the list of 20 of the World’s Best Winery Restaurants by Canada’s renowned Wine Access magazine. Locally, listings included prominent mentions in Fleur du Cap’s Top 100 Places; Eat in Cape Town; and EAT OUT’s Best Bistros list."
                    
                ],
                
                //LOCATION
                mapX:[
                    //"Beau Constantia",
                    -33.013568,
                    //"Stellenbosch wine",
                    -33.937076,
                    //"Groot Constantia",
                    -33.030270,
                    //"Bistro 1682"
                    -33.075838
                ],
                mapY:[
                    //"Beau Constantia",
                    18.406311,
                    //"Stellenbosch wine",
                    18.860582,
                    //"Groot Constantia",
                    18.419009,
                    //"Bistro 1682"
                    18.422583
                ],
                webSite:[
                    //"Beau Constantia",
                    "http://www.beauconstantia.com",
                    //"Stellenbosch wine",
                    "http://vinehopper.co.za",
                    //"Groot Constantia",
                    "http://www.grootconstantia.co.za",
                    //"Bistro 1682"
                    "bistro 1682 | Steenberg"
                ]
                
            ),


        
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
        DestinationViewController.MapX = theNewThird.mapX
        DestinationViewController.MapY = theNewThird.mapY
        DestinationViewController.website = theNewThird.webSite

      
    }
   
}
