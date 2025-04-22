✅ Option 1: Create a Network from Scratch Using netconvert
netconvert is a command-line tool in SUMO that generates the .net.xml file (SUMO network) from a description of the road layout.

🛠 Basic Steps:
1. Create a Node File (nodes.nod.xml)
This defines junctions (intersections or endpoints).

#touch nodes.nod.xml

<nodes>
  <node id="n1" x="0.0" y="0.0" type="priority"/>
  <node id="n2" x="100.0" y="0.0" type="priority"/>
</nodes>

2. Create an Edge File (edges.edg.xml)
This defines roads connecting nodes.


<edges>
  <edge id="e1" from="n1" to="n2" numLanes="1" speed="13.9"/>
</edges>

3. Generate the Network
Run netconvert from your terminal or command prompt:


netconvert -n nodes.nod.xml -e edges.edg.xml -o mynet.net.xml
This creates mynet.net.xml — the SUMO network file.

✅ Option 2: Visualise the Network Using sumo-gui
After generating the network, you can open it visually:

1. Open SUMO GUI

sumo-gui
2. Load the Network
Go to File → Open Network

Select your file mynet.net.xml

You should see your network with nodes and edges.

🚦 Optional: Add Routes and Simulate Traffic
Create a Route File (routes.rou.xml)

<routes>
  <vType id="car" accel="2.0" decel="4.5" length="5" maxSpeed="13.9" color="1,0,0"/>

  <route id="r1" edges="e1"/>
  
  <vehicle id="veh1" type="car" route="r1" depart="0"/>
  <vehicle id="veh2" type="car" route="r1" depart="10"/>
</routes>

Run a Simulation in GUI

sumo-gui -n mynet.net.xml -r routes.rou.xml
You can now observe vehicles moving along the defined roads.

🗺️ Bonus: Use OSM Data for Realistic Networks
If you want a realistic road network:

1. Download OSM data from https://extract.bbbike.org
2. Convert OSM to SUMO network:

netconvert --osm-files yourfile.osm -o map.net.xml
3. Visualise with:

sumo-gui -n map.net.xml
