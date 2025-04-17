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
1. 1. Install NetLogo and SUMO.
2. 2. Use SUMO to design road networks and generate traffic flows.
3. 3. Import into NetLogo using road grid patches.
4. 4. Define car agents, lights, intersections.

## Implementation Guide
1. 1. Define agent behaviour for cars: acceleration, deceleration, turning.
2. 2. Implement traffic light logic.
3. 3. Simulate different traffic loads and measure wait times, congestion.
4. 4. Use plots and histograms in NetLogo to visualise flow metrics.

## Expected Output(s)
1. Traffic density heatmaps
2. average wait time statistics
3. congestion zone visualisation
4. animation of cars and lights.

## Background Studies
### Urban Traffic Modelling
This area involves the simulation of how vehicles behave and interact within a city or highway road network. It helps predict traffic congestion, test light-timing schemes, and optimise infrastructure.

### Cellular Automata
A discrete model used in traffic flow to simulate the behaviour of vehicles on roads using grid-like cells that evolve with simple rules.

### Multi-Agent Systems in Transport
These systems use autonomous "agents" (e.g., cars) that interact based on rules and communicate to resolve conflicts or adapt to real-time traffic conditions.

### SUMO–NetLogo Integration
By combining the microscopic traffic simulation of SUMO with NetLogo's agent-centric framework, more complex behaviours like adaptive routing and driver reactions can be modelled.
