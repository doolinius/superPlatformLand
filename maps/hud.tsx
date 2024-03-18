<?xml version="1.0" encoding="UTF-8"?>
<tileset name="hud" tilewidth="8" tileheight="8" tilecount="20" columns="10">
 <image source="../graphics/hud.png" width="80" height="16"/>
 <tile id="9">
  <properties>
   <property name="type" value="heart"/>
  </properties>
 </tile>
 <tile id="18">
  <properties>
   <property name="type" value="heart"/>
  </properties>
  <animation>
   <frame tileid="18" duration="200"/>
   <frame tileid="19" duration="200"/>
   <frame tileid="9" duration="200"/>
  </animation>
 </tile>
 <tile id="19">
  <properties>
   <property name="type" value="heart"/>
  </properties>
 </tile>
</tileset>
