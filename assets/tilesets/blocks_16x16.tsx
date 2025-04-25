<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.10" tiledversion="1.11.2" name="blocks_16x16" tilewidth="16" tileheight="16" tilecount="112" columns="14">
 <image source="../graphics/tilesets/blocks_tiles/blocks.png" width="224" height="128"/>
 <tile id="0" type="block">
  <properties>
   <property name="type" propertytype="block_types" value="grey_crumble"/>
  </properties>
 </tile>
 <tile id="1" type="block"/>
 <tile id="2" type="block"/>
 <tile id="3" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
  </properties>
 </tile>
 <tile id="4" type="block"/>
 <tile id="5" type="terrain"/>
 <tile id="6" type="block">
  <objectgroup draworder="index" id="2">
   <object id="1" type="terrain" x="0" y="0" width="16" height="8">
    <properties>
     <property name="jump_through" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="7" type="terrain"/>
 <tile id="8" type="block">
  <objectgroup draworder="index" id="2">
   <object id="1" type="terrain" x="0" y="0" width="16" height="8">
    <properties>
     <property name="jump_through" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="9" type="block">
  <properties>
   <property name="lethal" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="spikes"/>
  </properties>
 </tile>
 <tile id="10" type="block">
  <properties>
   <property name="movable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="red_box"/>
  </properties>
 </tile>
 <tile id="11" type="block">
  <properties>
   <property name="movable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="orange_box"/>
  </properties>
 </tile>
 <tile id="12" type="block">
  <properties>
   <property name="movable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="green_box"/>
  </properties>
 </tile>
 <tile id="13" type="block">
  <properties>
   <property name="movable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="blue_box"/>
  </properties>
 </tile>
 <tile id="14" type="block">
  <properties>
   <property name="type" propertytype="block_types" value="tan_crumble"/>
  </properties>
 </tile>
 <tile id="15" type="block"/>
 <tile id="16" type="block"/>
 <tile id="17" type="block"/>
 <tile id="18" type="block"/>
 <tile id="19" type="terrain"/>
 <tile id="20" type="block">
  <objectgroup draworder="index" id="2">
   <object id="1" type="terrain" x="0" y="0" width="16" height="8">
    <properties>
     <property name="jump_through" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="21" type="terrain"/>
 <tile id="22" type="block">
  <objectgroup draworder="index" id="2">
   <object id="1" type="terrain" x="0" y="0" width="16" height="8">
    <properties>
     <property name="jump_through" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="23" type="block"/>
 <tile id="24" type="block"/>
 <tile id="25" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="blue_brick_breakable"/>
  </properties>
 </tile>
 <tile id="26" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="blue_brick"/>
  </properties>
 </tile>
 <tile id="27" type="block">
  <properties>
   <property name="type" propertytype="block_types" value="blue_brick_thin"/>
  </properties>
 </tile>
 <tile id="28" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="orange_brick_breakable"/>
  </properties>
 </tile>
 <tile id="29" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="orange_brick"/>
  </properties>
 </tile>
 <tile id="30" type="block"/>
 <tile id="31" type="block">
  <properties>
   <property name="type" propertytype="block_types" value="ice"/>
  </properties>
 </tile>
 <tile id="32" type="block"/>
 <tile id="33" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="dk_green_brick_breakable"/>
  </properties>
 </tile>
 <tile id="34" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="dk_green_brick"/>
  </properties>
 </tile>
 <tile id="35" type="block"/>
 <tile id="36" type="block">
  <properties>
   <property name="bonkable" type="bool" value="false"/>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="grey_brick_breakable"/>
  </properties>
 </tile>
 <tile id="37" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="grey_brick"/>
  </properties>
 </tile>
 <tile id="38" type="block"/>
 <tile id="39" type="terrain">
  <properties>
   <property name="type" propertytype="block_types" value="grey_solid"/>
  </properties>
 </tile>
 <tile id="40" type="terrain">
  <properties>
   <property name="jump_through" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="grey_solid_thin"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" type="terrain" x="0" y="0" width="16" height="8">
    <properties>
     <property name="jump_through" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="41" type="block">
  <properties>
   <property name="movable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="grey_box"/>
  </properties>
 </tile>
 <tile id="42" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="green_brick_breakable"/>
  </properties>
 </tile>
 <tile id="43" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="green_brick"/>
  </properties>
 </tile>
 <tile id="44" type="block"/>
 <tile id="45" type="block">
  <properties>
   <property name="lethal" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="ice_spikes"/>
  </properties>
 </tile>
 <tile id="46" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="ice_breakable"/>
  </properties>
 </tile>
 <tile id="47" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="red_brick_breakable"/>
  </properties>
 </tile>
 <tile id="48" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
  </properties>
 </tile>
 <tile id="49" type="block"/>
 <tile id="50" type="block">
  <properties>
   <property name="breakable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="brown_brick_breakable"/>
  </properties>
 </tile>
 <tile id="51" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="brown_brick"/>
  </properties>
 </tile>
 <tile id="52" type="block"/>
 <tile id="53" type="terrain">
  <properties>
   <property name="type" propertytype="block_types" value="brown_solid"/>
  </properties>
 </tile>
 <tile id="54" type="terrain">
  <properties>
   <property name="collidable" type="bool" value="false"/>
   <property name="jump_through" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="brown_solid_thin"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" type="terrain" x="0" y="0" width="16" height="8">
    <properties>
     <property name="jump_through" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="55" type="block">
  <properties>
   <property name="movable" type="bool" value="true"/>
   <property name="type" propertytype="block_types" value="brown_box"/>
  </properties>
 </tile>
 <tile id="56" type="block"/>
 <tile id="57" type="block"/>
 <tile id="58" type="block"/>
 <tile id="59" type="block"/>
 <tile id="60" type="block"/>
 <tile id="61" type="block"/>
 <tile id="62" type="block"/>
 <tile id="63" type="block"/>
 <tile id="64" type="block"/>
 <tile id="65" type="block"/>
 <tile id="66" type="block"/>
 <tile id="70" type="block"/>
 <tile id="71" type="block"/>
 <tile id="72" type="block"/>
 <tile id="73" type="block"/>
 <tile id="74" type="block"/>
 <tile id="75" type="block"/>
 <tile id="76" type="block"/>
 <tile id="77" type="block"/>
 <tile id="78" type="block"/>
 <tile id="79" type="block"/>
 <tile id="80" type="block"/>
 <tile id="84" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
 <tile id="85" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
 <tile id="86" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
 <tile id="87" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
 <tile id="88" type="block">
  <properties>
   <property name="type" propertytype="block_types" value="dead"/>
  </properties>
 </tile>
 <tile id="98" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
 <tile id="99" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
 <tile id="100" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
 <tile id="101" type="block">
  <properties>
   <property name="bonkable" type="bool" value="true"/>
   <property name="replacement" propertytype="block_types" value="dead"/>
   <property name="type" propertytype="block_types" value="look"/>
  </properties>
 </tile>
</tileset>
