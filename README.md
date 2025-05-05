# Traffic Flow Simulation Using Agent-Based Modelling

## Objective
To model urban traffic flow and identify bottlenecks for optimising signal timing and traffic light coordination.

## Simulation Type
Agent-Based Simulation

## Types of Dataset
1. Vehicle movement data
2. road layout
3. traffic density

## Possible Sources for Dataset
1. Kaggle
2. OpenStreetMap
3. SUMO

## Dataset URLs
1. https://sumo.dlr.de/docs/Data/Scenarios.html

## Setup Instructions
1. Install NetLogo and SUMO.
2. Use SUMO to design road networks and generate traffic flows.
3. Import into NetLogo using road grid patches.
4. Define car agents, lights, intersections.

## Implementation Guide
1. Define agent behaviour for cars: acceleration, deceleration, turning.
2. Implement traffic light logic.
3. Simulate different traffic loads and measure wait times, congestion.
4. Use plots and histograms in NetLogo to visualise flow metrics.

## Expected Output(s)
1. Traffic density heatmaps
2. average wait time statistics
3. congestion zone visualisation
4. animation of cars and lights.

## Background Studies

### Urban Traffic Modelling
Urban traffic modelling is a critical aspect of smart city development and intelligent transport systems (ITS). It involves creating abstract representations of real-world road networks and vehicle behaviours to study traffic dynamics such as congestion, delays, route choices, and signal optimisation. These models help city planners and researchers evaluate scenarios, plan infrastructure upgrades, and test policy interventions like congestion pricing or signal retiming. Traffic models are often categorised into:
Macroscopic models: Treat traffic as a continuous flow (like fluid dynamics).
Microscopic models: Focus on individual vehicle interactions.
Mesoscopic models: A hybrid of both, capturing vehicle platoons.
Urban traffic simulation tools like SUMO (Simulation of Urban Mobility) offer the ability to simulate thousands of vehicles on realistic road networks, generating valuable metrics like travel time, vehicle emissions, and bottleneck locations.

### Cellular Automata in Traffic Simulation
Cellular Automata (CA) are grid-based computational models in which each cell changes its state based on a set of local rules and the states of neighbouring cells. In traffic modelling:

Roads are divided into discrete cells, each representing a segment of the road (e.g., 7.5m per cell).
Vehicles occupy these cells and transition based on velocity, braking, and obstacle detection rules.
Rules mimic real-world behaviour like acceleration, lane changing, and collision avoidance.
One popular CA traffic model is the Nagel-Schreckenberg model, which simplifies the simulation of traffic jams and free-flowing movement. CA models are particularly useful for fast, large-scale simulations where computational simplicity and emergent behaviour patterns are key.

### Multi-Agent Systems in Transport
A Multi-Agent System (MAS) consists of autonomous entities (agents), each capable of independent decision-making, interaction, and adaptation. In traffic simulations, agents can represent:

Vehicles: With goals (e.g., destination), capabilities (speed, size), and behaviours (aggressiveness, route choice).
Traffic Lights: Adaptive or fixed-timing agents reacting to flow changes.
Pedestrians, emergency services, and cyclists: Each with unique navigation logic.
Agent-based traffic modelling allows researchers to simulate complex interactions, such as:
Lane merging under congestion.
Adaptive rerouting during incidents.
Cooperative driving in connected vehicle scenarios. MAS encourages decentralised logic, making the system robust and closer to real-world unpredictability.

### SUMO–NetLogo Integration
<div style="text-align: justify"> 
SUMO (Simulation of Urban MObility) is a powerful, open-source microscopic traffic simulation tool capable of modelling complex networks and generating detailed traffic flow data. NetLogo, on the other hand, is a high-level agent-based modelling environment designed for visualisation, experimentation, and educational simulations.
</div>
<div style="text-align: justify"> 
Integrating SUMO with NetLogo allows the strengths of both tools to be combined:
SUMO handles detailed traffic flow generation and network simulation.
NetLogo visualises the simulation using user-defined car agents, traffic lights, and urban features, adding custom logic or social behaviours (e.g., pedestrian reactions, emergency response).
Data export from SUMO (via XML or CSV) can be used to initialise car agents in NetLogo, where their movement can be tracked, modified, or visualised dynamically. This hybrid approach offers both computational accuracy and experimental flexibility, ideal for academic exploration and smart city prototyping."
</div>