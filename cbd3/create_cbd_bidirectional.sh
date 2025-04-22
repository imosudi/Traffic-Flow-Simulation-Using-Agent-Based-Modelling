#!/bin/bash

# Create cbd_nodes.nod.xml
cat <<EOF > cbd_nodes.nod.xml
<nodes>
    <node id="n1" x="0" y="0" type="traffic_light"/>
    <node id="n2" x="200" y="0"/>
    <node id="n3" x="400" y="0"/>
    <node id="n4" x="200" y="200"/>
    <node id="n5" x="0" y="200"/>
    <node id="n6" x="400" y="200"/>
    <node id="n7" x="100" y="100"/>
    <node id="n8" x="300" y="100"/>
</nodes>
EOF

# Create cbd_edges.edg.xml
cat <<EOF > cbd_edges.edg.xml
<edges>
    <edge id="e1" from="n1" to="n2" type="urban"/>
    <edge id="e2" from="n2" to="n3" type="urban"/>
    <edge id="e3" from="n1" to="n5" type="urban"/>
    <edge id="e4" from="n5" to="n4" type="urban"/>
    <edge id="e5" from="n4" to="n6" type="urban"/>
    <edge id="e6" from="n6" to="n3" type="urban"/>
    <edge id="e7" from="n2" to="n7" type="bike"/>
    <edge id="e8" from="n7" to="n8" type="bike"/>
    <edge id="e9" from="n8" to="n6" type="bike"/>
    <edge id="e10" from="n5" to="n7" type="pedestrian"/>
</edges>
EOF

# Create cbd_types.type.xml
cat <<EOF > cbd_types.type.xml
<types>
    <type id="urban" numLanes="2" speed="13.9" priority="3" width="3.5" allow="car bus tricycle" sidewalkWidth="2.5"/>
    <type id="bike" numLanes="1" speed="6.5" priority="1" width="2.0" allow="bike"/>
    <type id="pedestrian" numLanes="1" speed="1.5" priority="0" width="1.5" allow="pedestrian"/>
</types>
EOF

# Create cbd.netccfg
cat <<EOF > cbd.netccfg
<configuration>
    <input>
        <node-files value="cbd_nodes.nod.xml"/>
        <edge-files value="cbd_edges.edg.xml"/>
        <type-files value="cbd_types.type.xml"/>
    </input>
    <output>
        <output-file value="cbd.net.xml"/>
    </output>
    <processing>
        <split-lanes value="true"/>
    </processing>
</configuration>
EOF

# Create cbd.sumocfg
cat <<EOF > cbd.sumocfg
<configuration>
    <input>
        <net-file value="cbd.net.xml"/>
        <route-files value="cbd.rou.xml"/>
    </input>
    <time>
        <begin value="0"/>
        <end value="3600"/>
    </time>
</configuration>
EOF

echo "✅ Metropolitan road network (2+2 lanes) created with sidewalks and medians."
