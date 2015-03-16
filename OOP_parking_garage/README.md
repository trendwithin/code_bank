**OO: Model a Parking Garage**

**Objective:** Create a domain model for simiulating a parking garage using class skeletons in Ruby.  Describe methods only.  Focus upon descrpition, not implementation.

**Specification:**
1.  4 floor garage with 40-60 parking spaces per floor.
2.  First floor has four dedicated spots for EV.
3.  These 4 spots charge $2/hr for charging services.
4.  This is valet service. Number of employees unkown at this time.
5.  Punch tickets for entry/exit

**Assumptions:**
1.  $/hr to park not given- assume 15 minute increments
2.  No specification of vehicle type, so assume cars/trucks/motorcycles allowed.
3.  Assume handicap spots due to federal requirements.
4.  EV can park in any space except handicap unless handicap
5.  Only EV cars can park in EV spaces
6.  Compact cars can fit in any space, larger vehicles may not
7.  First come first serve
8.  Fill in 1st floor before moving to second unless vehicle size issue
9.  Motorcycle are one per spot


**Class Garage:**
A Garage has floors.
A Garage has tickets.

**Class Floors:**
Floors have parking spots

**Class ParkingSpot**
Parking spot has a car or is empty
Parking spot has a number

**Class Car**
Has a licence (unless dealer plates)
Is parked.

**Class Valet**
Valet parks cars.
Valet knows if car is parked and which spot.
A Valet handles tickets and cash.

**Class Ticket**
Ticket has entry time/exit stamp
Ticket has a number

What does a garage know and what information does it need to receive or give?
1.  A Garage knows the total number of parking spots in the lot.
2.  A Garage recieves information about the amount of money taken in

What does a floor know and what information does it need to recieve or give?
1.  A Floor knows how many parking spots are are available.
2.  A Floor know which spots have vehicles parked in them
3.  A Floor passes this information to Garage to determine capacity

What does a parking spot know and what information does it need to recieve or give?
1.  A parking spot knows if it is empty of filled
2.  A parking spot knows its number
3.  A parking spot sends status to floor so floor can tally open slots

What does a valet know and what information does it need to receive or give?
1.  A valet knows which spots are open/empty
2.  A valet knows where a car is parked
3.  A valet handles cash/charge upon exit
