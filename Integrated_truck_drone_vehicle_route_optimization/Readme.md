Problem Description: 

A dispatch center(origin) has to deliver the parcels to n different predetermined customers/nodes using a brand-new integrated vehicle in Tempe. The vehicle starts from the origin and must return to the origin at the end of the trip. The center owner’s objective is to reduce total travel time as compared to the time in the truck-only scenario while using the traditional VRP routes. The drone and truck can deliver different parcels at the same time. The drone takes off from the truck and meets it after delivering one parcel, later in the route before leaving for the next possible delivery.

Main Assumptions:
1. The drone can carry one parcel at a time
2. Truck travel times are asymmetric given the road and traffic variabilities
3. Drone travel times are symmetric
4. The truck can wait only on nodes (delivery points) to launch or receive drones 
5. Drones travel at a constant speed with linear battery consumption

Modeling approach: Backward Dynamic Programming

1. The aforedescribed problem structure can be broken up into smaller linked sub-problems to be solved (since the sequence of nodes is fixed)
2. Dynamic Programming is a systematic technique for solving Multistage Decision problems.
3. Dynamic programming (DP) describes a process in terms of states, stages, decisions, transitions and returns.
4. The process begins in some initial state where a decision is made
5. The decision causes a transition to a new state.
6. Based on the starting state, ending state and decision a return is realized. The process continues through a sequence of states until a final state is reached.
