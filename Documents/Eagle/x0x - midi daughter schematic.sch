<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="optocoupler">
<description>&lt;b&gt;Opto Couplers&lt;/b&gt;&lt;p&gt;
Siemens, Hewlett-Packard, Texas Instuments, Sharp, Motorola&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL08">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="5.08" y1="2.921" x2="-5.08" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.08" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" shape="offset" rot="R270"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" shape="offset" rot="R270"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" shape="offset" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" shape="offset" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" shape="offset" rot="R270"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" shape="offset" rot="R270"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" shape="offset" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" shape="offset" rot="R90"/>
<text x="-5.334" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-3.556" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="138">
<wire x1="3.81" y1="1.27" x2="3.81" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="6.35" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.715" y1="2.54" x2="-6.985" y2="0" width="0.254" layer="94"/>
<wire x1="-6.985" y1="0" x2="-8.255" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.715" y1="0" x2="-6.985" y2="0" width="0.254" layer="94"/>
<wire x1="-6.985" y1="0" x2="-8.255" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="1.905" x2="-3.81" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="1.905" x2="-4.191" y2="2.159" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="1.905" x2="-4.191" y2="1.651" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0.635" x2="-4.191" y2="0.889" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0.635" x2="-4.191" y2="0.381" width="0.1524" layer="94"/>
<wire x1="-5.715" y1="2.54" x2="-6.985" y2="2.54" width="0.254" layer="94"/>
<wire x1="-6.985" y1="2.54" x2="-6.985" y2="0" width="0.254" layer="94"/>
<wire x1="-6.985" y1="2.54" x2="-8.255" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="3.81" y1="5.08" x2="-1.27" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-6.985" y1="2.54" x2="-6.985" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="10.16" y2="2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="5.08" x2="10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="9.525" y1="7.62" x2="-9.525" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-6.985" y2="5.08" width="0.1524" layer="94"/>
<wire x1="9.525" y1="-7.62" x2="-9.525" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-6.985" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-6.985" y1="-5.08" x2="-6.985" y2="0" width="0.1524" layer="94"/>
<wire x1="-9.525" y1="7.62" x2="-9.525" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="9.525" y1="7.62" x2="9.525" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="1.27" x2="1.27" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="3.556" y2="-3.556" width="0.1524" layer="94"/>
<wire x1="3.81" y1="-3.81" x2="5.08" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="3.048" y1="-2.286" x2="3.556" y2="-3.556" width="0.1524" layer="94"/>
<wire x1="3.556" y1="-3.556" x2="3.81" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="3.556" y1="-3.556" x2="2.286" y2="-3.048" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-3.048" x2="3.048" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="8.89" y1="0" x2="6.35" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-2.54" x2="8.636" y2="-4.826" width="0.1524" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="8.89" y1="0" x2="10.16" y2="0" width="0.1524" layer="94"/>
<wire x1="8.128" y1="-3.556" x2="8.636" y2="-4.826" width="0.1524" layer="94"/>
<wire x1="8.636" y1="-4.826" x2="8.89" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="8.636" y1="-4.826" x2="7.366" y2="-4.318" width="0.1524" layer="94"/>
<wire x1="7.366" y1="-4.318" x2="8.128" y2="-3.556" width="0.1524" layer="94"/>
<circle x="3.81" y="5.08" radius="0.127" width="0.4064" layer="94"/>
<circle x="5.08" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-9.525" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-9.525" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-8.255" y="4.064" size="0.8128" layer="93">A</text>
<text x="-8.255" y="-4.318" size="0.8128" layer="93">C</text>
<text x="5.08" y="5.334" size="0.8128" layer="93">Vcc</text>
<text x="5.08" y="2.794" size="0.8128" layer="93">Vb</text>
<text x="7.62" y="0.381" size="0.8128" layer="93">Vo</text>
<text x="6.858" y="-6.223" size="0.8128" layer="93">GND</text>
<rectangle x1="0.889" y1="-3.81" x2="1.651" y2="1.27" layer="94"/>
<rectangle x1="5.969" y1="-5.08" x2="6.731" y2="0" layer="94"/>
<pin name="A" x="-12.7" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="C" x="-12.7" y="-5.08" visible="pad" length="short" direction="pas"/>
<pin name="VB" x="12.7" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="VCC" x="12.7" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="GND" x="12.7" y="-5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="VO" x="12.7" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="6N138" prefix="OK">
<description>&lt;b&gt;MOTOROLA OPTO COUPLER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="138" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL08">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="C" pad="3"/>
<connect gate="G$1" pin="GND" pad="5"/>
<connect gate="G$1" pin="VB" pad="7"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="VO" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="VISHAY/TELEFUNKEN" constant="no"/>
<attribute name="MPN" value="6N138" constant="no"/>
<attribute name="OC_FARNELL" value="9860150" constant="no"/>
<attribute name="OC_NEWARK" value="35K5294" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="teensypp">
<packages>
<package name="TEENSY++">
<description>teensy ++</description>
<wire x1="25.4" y1="8.89" x2="-25.4" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-8.89" x2="25.4" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="25.4" y1="8.89" x2="25.4" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="8.89" x2="-25.4" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-8.89" x2="-25.4" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="1.016" x2="-25.4" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<wire x1="-25.4" y1="6.35" x2="-25.4" y2="1.016" width="0.1524" layer="21"/>
<wire x1="25.4" y1="6.35" x2="25.4" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-6.35" x2="25.4" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-6.35" x2="-25.4" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-6.35" x2="25.4" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="6.35" x2="25.4" y2="6.35" width="0.1524" layer="21"/>
<pad name="GND" x="-24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B7" x="-21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D2" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D3" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D0" x="-19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D1" x="-16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D4" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D5" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D6" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="D7" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="E0" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="E1" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C0" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C1" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C2" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C3" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C4" x="16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C5" x="19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C6" x="21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="C7" x="24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F7" x="24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F6" x="21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F5" x="19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F4" x="16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F3" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F2" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F1" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="F0" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="REF" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="GRND1" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="E6" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="E7" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B0" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B1" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B2" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B3" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B4" x="-16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B5" x="-19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="B6" x="-21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="+5V" x="-24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="A4" x="8.89" y="2.54" drill="0.8" shape="square"/>
<pad name="A5" x="11.43" y="2.54" drill="0.8" shape="square"/>
<pad name="A6" x="13.97" y="2.54" drill="0.8" shape="square"/>
<pad name="A7" x="16.51" y="2.54" drill="0.8" shape="square"/>
<pad name="A3" x="16.51" y="0" drill="0.8" shape="square"/>
<pad name="A2" x="13.97" y="0" drill="0.8" shape="square"/>
<pad name="A1" x="11.43" y="0" drill="0.8" shape="square"/>
<pad name="A0" x="8.89" y="0" drill="0.8" shape="square"/>
<pad name="RST" x="24.13" y="2.54" drill="0.8" shape="square"/>
<pad name="GND2" x="24.13" y="0" drill="0.8" shape="square"/>
<pad name="5V" x="24.13" y="-2.54" drill="0.8" shape="square"/>
<pad name="E4" x="-9.144" y="0.9144" drill="0.635" diameter="1.0668" rot="R180"/>
<pad name="E5" x="-9.144" y="-0.4064" drill="0.635" diameter="1.0668" rot="R180"/>
<text x="-22.225" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-25.908" y="-8.255" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="ARDUNIO">
<wire x1="-22.86" y1="30.48" x2="17.78" y2="30.48" width="0.254" layer="94"/>
<wire x1="17.78" y1="30.48" x2="17.78" y2="-45.72" width="0.254" layer="94"/>
<wire x1="17.78" y1="-45.72" x2="-22.86" y2="-45.72" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-45.72" x2="-22.86" y2="30.48" width="0.254" layer="94"/>
<text x="-20.32" y="33.02" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-15.24" size="1.778" layer="96" rot="R270">&gt;VALUE</text>
<pin name="GND" x="-27.94" y="27.94" length="middle" direction="pwr"/>
<pin name="27,PWM" x="-27.94" y="25.4" length="middle"/>
<pin name="0,PWM,INT0" x="-27.94" y="22.86" length="middle"/>
<pin name="1,PWM,INT1" x="-27.94" y="20.32" length="middle"/>
<pin name="2,RX,INT2" x="-27.94" y="17.78" length="middle"/>
<pin name="3,TX,INT3" x="-27.94" y="15.24" length="middle"/>
<pin name="4" x="-27.94" y="12.7" length="middle"/>
<pin name="5" x="-27.94" y="10.16" length="middle"/>
<pin name="6,LED" x="-27.94" y="7.62" length="middle"/>
<pin name="7" x="-27.94" y="5.08" length="middle"/>
<pin name="8" x="-27.94" y="2.54" length="middle"/>
<pin name="9" x="-27.94" y="0" length="middle"/>
<pin name="10" x="-27.94" y="-2.54" length="middle"/>
<pin name="11" x="-27.94" y="-5.08" length="middle"/>
<pin name="12" x="-27.94" y="-7.62" length="middle"/>
<pin name="13" x="-27.94" y="-10.16" length="middle"/>
<pin name="14,PWM" x="-27.94" y="-12.7" length="middle"/>
<pin name="15,PWM" x="-27.94" y="-15.24" length="middle"/>
<pin name="16,PWM" x="-27.94" y="-17.78" length="middle"/>
<pin name="17" x="-27.94" y="-20.32" length="middle"/>
<pin name="VCC" x="22.86" y="27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="26,PWM" x="22.86" y="25.4" length="middle" rot="R180"/>
<pin name="25,PWM" x="22.86" y="22.86" length="middle" rot="R180"/>
<pin name="24,PWM" x="22.86" y="20.32" length="middle" rot="R180"/>
<pin name="23" x="22.86" y="17.78" length="middle" rot="R180"/>
<pin name="22" x="22.86" y="15.24" length="middle" rot="R180"/>
<pin name="21" x="22.86" y="12.7" length="middle" rot="R180"/>
<pin name="20" x="22.86" y="10.16" length="middle" rot="R180"/>
<pin name="19" x="22.86" y="7.62" length="middle" rot="R180"/>
<pin name="18,INT6" x="22.86" y="5.08" length="middle" rot="R180"/>
<pin name="GND@1" x="22.86" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="AREF" x="22.86" y="0" length="middle" direction="in" rot="R180"/>
<pin name="38,A0" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="39,A1" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="40,A2" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="41,A3" x="22.86" y="-10.16" length="middle" rot="R180"/>
<pin name="42,A4" x="22.86" y="-12.7" length="middle" rot="R180"/>
<pin name="43,A5" x="22.86" y="-15.24" length="middle" rot="R180"/>
<pin name="44,A6" x="22.86" y="-17.78" length="middle" rot="R180"/>
<pin name="45,A7" x="22.86" y="-20.32" length="middle" rot="R180"/>
<pin name="28" x="22.86" y="-25.4" length="middle" rot="R180"/>
<pin name="29" x="22.86" y="-27.94" length="middle" rot="R180"/>
<pin name="30" x="22.86" y="-30.48" length="middle" rot="R180"/>
<pin name="31" x="22.86" y="-33.02" length="middle" rot="R180"/>
<pin name="32" x="22.86" y="-35.56" length="middle" rot="R180"/>
<pin name="33" x="22.86" y="-38.1" length="middle" rot="R180"/>
<pin name="34" x="22.86" y="-40.64" length="middle" rot="R180"/>
<pin name="35" x="22.86" y="-43.18" length="middle" rot="R180"/>
<pin name="_RST" x="-27.94" y="-25.4" length="middle" direction="in"/>
<pin name="_GND2" x="-27.94" y="-27.94" length="middle" direction="pwr"/>
<pin name="+5V" x="-27.94" y="-30.48" length="middle" direction="pwr"/>
<pin name="36,INT4" x="-27.94" y="-35.56" length="middle"/>
<pin name="37,INT5" x="-27.94" y="-38.1" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO-TEENSY++">
<gates>
<gate name="G$1" symbol="ARDUNIO" x="-2.54" y="15.24"/>
</gates>
<devices>
<device name="" package="TEENSY++">
<connects>
<connect gate="G$1" pin="+5V" pad="+5V"/>
<connect gate="G$1" pin="0,PWM,INT0" pad="D0"/>
<connect gate="G$1" pin="1,PWM,INT1" pad="D1"/>
<connect gate="G$1" pin="10" pad="C0"/>
<connect gate="G$1" pin="11" pad="C1"/>
<connect gate="G$1" pin="12" pad="C2"/>
<connect gate="G$1" pin="13" pad="C3"/>
<connect gate="G$1" pin="14,PWM" pad="C4"/>
<connect gate="G$1" pin="15,PWM" pad="C5"/>
<connect gate="G$1" pin="16,PWM" pad="C6"/>
<connect gate="G$1" pin="17" pad="C7"/>
<connect gate="G$1" pin="18,INT6" pad="E6"/>
<connect gate="G$1" pin="19" pad="E7"/>
<connect gate="G$1" pin="2,RX,INT2" pad="D2"/>
<connect gate="G$1" pin="20" pad="B0"/>
<connect gate="G$1" pin="21" pad="B1"/>
<connect gate="G$1" pin="22" pad="B2"/>
<connect gate="G$1" pin="23" pad="B3"/>
<connect gate="G$1" pin="24,PWM" pad="B4"/>
<connect gate="G$1" pin="25,PWM" pad="B5"/>
<connect gate="G$1" pin="26,PWM" pad="B6"/>
<connect gate="G$1" pin="27,PWM" pad="B7"/>
<connect gate="G$1" pin="28" pad="A0"/>
<connect gate="G$1" pin="29" pad="A1"/>
<connect gate="G$1" pin="3,TX,INT3" pad="D3"/>
<connect gate="G$1" pin="30" pad="A2"/>
<connect gate="G$1" pin="31" pad="A3"/>
<connect gate="G$1" pin="32" pad="A4"/>
<connect gate="G$1" pin="33" pad="A5"/>
<connect gate="G$1" pin="34" pad="A6"/>
<connect gate="G$1" pin="35" pad="A7"/>
<connect gate="G$1" pin="36,INT4" pad="E4"/>
<connect gate="G$1" pin="37,INT5" pad="E5"/>
<connect gate="G$1" pin="38,A0" pad="F0"/>
<connect gate="G$1" pin="39,A1" pad="F1"/>
<connect gate="G$1" pin="4" pad="D4"/>
<connect gate="G$1" pin="40,A2" pad="F2"/>
<connect gate="G$1" pin="41,A3" pad="F3"/>
<connect gate="G$1" pin="42,A4" pad="F4"/>
<connect gate="G$1" pin="43,A5" pad="F5"/>
<connect gate="G$1" pin="44,A6" pad="F6"/>
<connect gate="G$1" pin="45,A7" pad="F7"/>
<connect gate="G$1" pin="5" pad="D5"/>
<connect gate="G$1" pin="6,LED" pad="D6"/>
<connect gate="G$1" pin="7" pad="D7"/>
<connect gate="G$1" pin="8" pad="E0"/>
<connect gate="G$1" pin="9" pad="E1"/>
<connect gate="G$1" pin="AREF" pad="REF"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND@1" pad="GRND1"/>
<connect gate="G$1" pin="VCC" pad="5V"/>
<connect gate="G$1" pin="_GND2" pad="GND2"/>
<connect gate="G$1" pin="_RST" pad="RST"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Microchip_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 11:22:31</description>
<packages>
<package name="DIP254P762X533-14">
<pad name="1" x="-7.62" y="15.24" drill="0.9906" shape="square"/>
<pad name="2" x="-7.62" y="12.7" drill="0.9906"/>
<pad name="3" x="-7.62" y="10.16" drill="0.9906"/>
<pad name="4" x="-7.62" y="7.62" drill="0.9906"/>
<pad name="5" x="-7.62" y="5.08" drill="0.9906"/>
<pad name="6" x="-7.62" y="2.54" drill="0.9906"/>
<pad name="7" x="-7.62" y="0" drill="0.9906"/>
<pad name="8" x="0" y="0" drill="0.9906"/>
<pad name="9" x="0" y="2.54" drill="0.9906"/>
<pad name="10" x="0" y="5.08" drill="0.9906"/>
<pad name="11" x="0" y="7.62" drill="0.9906"/>
<pad name="12" x="0" y="10.16" drill="0.9906"/>
<pad name="13" x="0" y="12.7" drill="0.9906"/>
<pad name="14" x="0" y="15.24" drill="0.9906"/>
<wire x1="-0.254" y1="16.2814" x2="-0.254" y2="17.4752" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="13.7414" x2="-0.254" y2="14.1986" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="11.2014" x2="-0.254" y2="11.6586" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="8.6614" x2="-0.254" y2="9.1186" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="6.1214" x2="-0.254" y2="6.5786" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="-2.2352" x2="-0.254" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-2.2352" x2="-0.254" y2="-1.0414" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="17.4752" x2="-3.5052" y2="17.4752" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="17.4752" x2="-4.1148" y2="17.4752" width="0.1524" layer="21"/>
<wire x1="-4.1148" y1="17.4752" x2="-7.366" y2="17.4752" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="17.4752" x2="-7.366" y2="16.3322" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="14.1478" x2="-7.366" y2="13.7414" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="11.6586" x2="-7.366" y2="11.2014" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="9.1186" x2="-7.366" y2="8.6614" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="6.5786" x2="-7.366" y2="6.1214" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="4.0386" x2="-7.366" y2="3.5814" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="1.4986" x2="-7.366" y2="1.0414" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="-1.0414" x2="-7.366" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.0414" x2="-0.254" y2="1.4986" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="3.5814" x2="-0.254" y2="4.0386" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="17.4752" x2="-4.1148" y2="17.4752" width="0" layer="21" curve="-180"/>
<text x="-8.2042" y="16.1036" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-7.366" y1="14.732" x2="-7.366" y2="15.748" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="15.748" x2="-8.128" y2="15.748" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="15.748" x2="-8.128" y2="14.732" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="14.732" x2="-7.366" y2="14.732" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="12.192" x2="-7.366" y2="13.208" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="13.208" x2="-8.128" y2="13.208" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="13.208" x2="-8.128" y2="12.192" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="12.192" x2="-7.366" y2="12.192" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="9.652" x2="-7.366" y2="10.668" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="10.668" x2="-8.128" y2="10.668" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="10.668" x2="-8.128" y2="9.652" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="9.652" x2="-7.366" y2="9.652" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="7.112" x2="-7.366" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="8.128" x2="-8.128" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="8.128" x2="-8.128" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="7.112" x2="-7.366" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="4.572" x2="-7.366" y2="5.588" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="5.588" x2="-8.128" y2="5.588" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.588" x2="-8.128" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.572" x2="-7.366" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="2.032" x2="-7.366" y2="3.048" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="3.048" x2="-8.128" y2="3.048" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.048" x2="-8.128" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.032" x2="-7.366" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.508" x2="-7.366" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="0.508" x2="-8.128" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.4826" x2="-8.128" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.508" x2="-7.366" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.508" x2="0.508" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.4826" x2="0.508" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.508" x2="-0.254" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="3.048" x2="-0.254" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="2.032" x2="0.508" y2="2.0574" width="0.1524" layer="51"/>
<wire x1="0.508" y1="2.0574" x2="0.4826" y2="3.048" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="3.048" x2="-0.254" y2="3.048" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="5.588" x2="-0.254" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="4.572" x2="0.4826" y2="4.572" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="4.572" x2="0.4826" y2="5.588" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="5.588" x2="-0.254" y2="5.588" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="8.128" x2="-0.254" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="7.112" x2="0.4826" y2="7.112" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="7.112" x2="0.4826" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="8.128" x2="-0.254" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="10.668" x2="-0.254" y2="9.652" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="9.652" x2="0.4826" y2="9.652" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="9.652" x2="0.4826" y2="10.668" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="10.668" x2="-0.254" y2="10.668" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="13.208" x2="-0.254" y2="12.192" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="12.192" x2="0.4826" y2="12.192" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="12.192" x2="0.4826" y2="13.208" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="13.208" x2="-0.254" y2="13.208" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="15.748" x2="-0.254" y2="14.732" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="14.732" x2="0.4826" y2="14.732" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="14.732" x2="0.4826" y2="15.748" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="15.748" x2="-0.254" y2="15.748" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-2.2352" x2="-0.254" y2="-2.2352" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-2.2352" x2="-0.254" y2="17.4752" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="17.4752" x2="-3.5052" y2="17.4752" width="0.1524" layer="51"/>
<wire x1="-3.5052" y1="17.4752" x2="-4.1148" y2="17.4752" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="17.4752" x2="-7.366" y2="17.4752" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="17.4752" x2="-7.366" y2="-2.2352" width="0.1524" layer="51"/>
<wire x1="-3.5052" y1="17.4752" x2="-4.1148" y2="17.4752" width="0" layer="51" curve="-180"/>
<text x="-8.2042" y="16.1036" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-8.4074" y="18.3642" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-9.8552" y="-5.1816" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MCP4922-E/P">
<pin name="VDD" x="-17.78" y="15.24" length="middle" direction="pwr"/>
<pin name="VREFA" x="-17.78" y="10.16" length="middle" direction="in"/>
<pin name="VREFB" x="-17.78" y="7.62" length="middle" direction="in"/>
<pin name="~CS" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="SCK" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="SDI" x="-17.78" y="-2.54" length="middle" direction="in"/>
<pin name="~LDAC" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="~SHDN" x="-17.78" y="-7.62" length="middle" direction="in"/>
<pin name="NC_2" x="-17.78" y="-12.7" length="middle" direction="nc"/>
<pin name="NC_3" x="-17.78" y="-15.24" length="middle" direction="nc"/>
<pin name="NC" x="-17.78" y="-17.78" length="middle" direction="nc"/>
<pin name="AVSS" x="-17.78" y="-22.86" length="middle" direction="pwr"/>
<pin name="VOUTA" x="17.78" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="VOUTB" x="17.78" y="12.7" length="middle" direction="out" rot="R180"/>
<wire x1="-12.7" y1="20.32" x2="-12.7" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-27.94" x2="12.7" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-27.94" x2="12.7" y2="20.32" width="0.4064" layer="94"/>
<wire x1="12.7" y1="20.32" x2="-12.7" y2="20.32" width="0.4064" layer="94"/>
<text x="-4.5212" y="22.733" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.1722" y="-32.2072" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCP4922-E/P">
<description>12-Bit DAC</description>
<gates>
<gate name="A" symbol="MCP4922-E/P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP254P762X533-14">
<connects>
<connect gate="A" pin="AVSS" pad="12"/>
<connect gate="A" pin="NC" pad="7"/>
<connect gate="A" pin="NC_2" pad="2"/>
<connect gate="A" pin="NC_3" pad="6"/>
<connect gate="A" pin="SCK" pad="4"/>
<connect gate="A" pin="SDI" pad="5"/>
<connect gate="A" pin="VDD" pad="1"/>
<connect gate="A" pin="VOUTA" pad="14"/>
<connect gate="A" pin="VOUTB" pad="10"/>
<connect gate="A" pin="VREFA" pad="13"/>
<connect gate="A" pin="VREFB" pad="11"/>
<connect gate="A" pin="~CS" pad="3"/>
<connect gate="A" pin="~LDAC" pad="8"/>
<connect gate="A" pin="~SHDN" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="MCP4922-E/P" constant="no"/>
<attribute name="OC_FARNELL" value="1292244" constant="no"/>
<attribute name="OC_NEWARK" value="61K2950" constant="no"/>
<attribute name="PACKAGE" value="DIP-14" constant="no"/>
<attribute name="SUPPLIER" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="OPTO-COUPLER" library="optocoupler" deviceset="6N138" device=""/>
<part name="MICRO-CONTROLER" library="teensypp" deviceset="ARDUINO-TEENSY++" device=""/>
<part name="U$1" library="Microchip_By_element14_Batch_1" deviceset="MCP4922-E/P" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="OPTO-COUPLER" gate="G$1" x="22.86" y="38.1"/>
<instance part="MICRO-CONTROLER" gate="G$1" x="-35.56" y="93.98" rot="R180"/>
<instance part="U$1" gate="A" x="38.1" y="119.38"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="A" pin="SCK"/>
<wire x1="20.32" y1="119.38" x2="2.54" y2="119.38" width="0.1524" layer="91"/>
<wire x1="2.54" y1="119.38" x2="2.54" y2="144.78" width="0.1524" layer="91"/>
<wire x1="2.54" y1="144.78" x2="-81.28" y2="144.78" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="144.78" x2="-81.28" y2="81.28" width="0.1524" layer="91"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="21"/>
<wire x1="-58.42" y1="81.28" x2="-81.28" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="A" pin="SDI"/>
<wire x1="20.32" y1="116.84" x2="0" y2="116.84" width="0.1524" layer="91"/>
<wire x1="0" y1="116.84" x2="0" y2="142.24" width="0.1524" layer="91"/>
<wire x1="0" y1="142.24" x2="-78.74" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="142.24" x2="-78.74" y2="78.74" width="0.1524" layer="91"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="22"/>
<wire x1="-78.74" y1="78.74" x2="-58.42" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="A" pin="~CS"/>
<wire x1="20.32" y1="121.92" x2="5.08" y2="121.92" width="0.1524" layer="91"/>
<wire x1="5.08" y1="121.92" x2="5.08" y2="96.52" width="0.1524" layer="91"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="10"/>
<wire x1="5.08" y1="96.52" x2="-7.62" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="48.26" y1="38.1" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<pinref part="OPTO-COUPLER" gate="G$1" pin="VO"/>
<wire x1="35.56" y1="38.1" x2="48.26" y2="38.1" width="0.1524" layer="91"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="2,RX,INT2"/>
<wire x1="48.26" y1="76.2" x2="-7.62" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="A" pin="VDD"/>
<wire x1="20.32" y1="134.62" x2="10.16" y2="134.62" width="0.1524" layer="91"/>
<wire x1="10.16" y1="134.62" x2="10.16" y2="129.54" width="0.1524" layer="91"/>
<pinref part="U$1" gate="A" pin="VREFB"/>
<wire x1="10.16" y1="127" x2="20.32" y2="127" width="0.1524" layer="91"/>
<pinref part="U$1" gate="A" pin="VREFA"/>
<wire x1="20.32" y1="129.54" x2="10.16" y2="129.54" width="0.1524" layer="91"/>
<junction x="10.16" y="129.54"/>
<wire x1="10.16" y1="129.54" x2="10.16" y2="127" width="0.1524" layer="91"/>
<wire x1="10.16" y1="127" x2="10.16" y2="58.42" width="0.1524" layer="91"/>
<wire x1="10.16" y1="58.42" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="58.42" x2="10.16" y2="58.42" width="0.1524" layer="91"/>
<junction x="10.16" y="58.42"/>
<wire x1="-71.12" y1="58.42" x2="-71.12" y2="66.04" width="0.1524" layer="91"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="VCC"/>
<wire x1="-71.12" y1="66.04" x2="-58.42" y2="66.04" width="0.1524" layer="91"/>
<junction x="10.16" y="127"/>
<wire x1="43.18" y1="58.42" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<pinref part="OPTO-COUPLER" gate="G$1" pin="VCC"/>
<wire x1="43.18" y1="43.18" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$1" gate="A" pin="~SHDN"/>
<wire x1="20.32" y1="111.76" x2="15.24" y2="111.76" width="0.1524" layer="91"/>
<wire x1="15.24" y1="111.76" x2="15.24" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$1" gate="A" pin="AVSS"/>
<wire x1="15.24" y1="96.52" x2="20.32" y2="96.52" width="0.1524" layer="91"/>
<wire x1="15.24" y1="96.52" x2="15.24" y2="78.74" width="0.1524" layer="91"/>
<wire x1="15.24" y1="78.74" x2="53.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="53.34" y1="78.74" x2="53.34" y2="33.02" width="0.1524" layer="91"/>
<pinref part="OPTO-COUPLER" gate="G$1" pin="GND"/>
<wire x1="53.34" y1="33.02" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
<junction x="15.24" y="96.52"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="GND"/>
<wire x1="-7.62" y1="66.04" x2="15.24" y2="66.04" width="0.1524" layer="91"/>
<wire x1="15.24" y1="66.04" x2="15.24" y2="78.74" width="0.1524" layer="91"/>
<junction x="15.24" y="78.74"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
