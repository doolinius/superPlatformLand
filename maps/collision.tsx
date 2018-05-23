<?xml version="1.0" encoding="UTF-8"?>
<tileset name="collision" tilewidth="16" tileheight="16" tilecount="4" columns="2">
 <image source="collision.png" width="32" height="32"/>
 <tile id="0">
  <properties>
   <property name="blockType" value="solid"/>
   <property name="colType" value="slide"/>
  </properties>
 </tile>
 <tile id="1">
  <properties>
   <property name="blockType" value="solid"/>
   <property name="colType" value="touch"/>
  </properties>
 </tile>
 <tile id="2">
  <properties>
   <property name="blockType" value="invisible"/>
   <property name="colType" value="cross"/>
  </properties>
 </tile>
 <tile id="3">
  <properties>
   <property name="blockType" value="ledge"/>
   <property name="colType" value="bounce"/>
  </properties>
 </tile>
</tileset>
