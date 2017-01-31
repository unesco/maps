A collection of tools and scripts used to parse data.

- unstats2osm.xslt 
    Used to convert [this UN list of cities](http://unstats.un.org/unsd/geoinfo/geonames/Cities.ashx) to a compliant OSM file to be used with osmtogeojson cities.osm > cities.geojson (npm install -g osmtogeojson). Usage:
    
    ```
    xsltproc -o cities.osm unstats2osm.xslt http://unstats.un.org/unsd/geoinfo/geonames/Cities.ashx
    ````
    
