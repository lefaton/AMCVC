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
<library name="74xx-eu">
<description>&lt;b&gt;TTL Devices, 74xx Series with European Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.81" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-3.1941" x2="-4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-4.4" x2="-3.1941" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="3.1941" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-3.1941" width="0.2032" layer="21"/>
<wire x1="4.4" y1="3.1941" x2="4.4" y2="4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="4.4" x2="3.1941" y2="4.4" width="0.2032" layer="21"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-4.0051" y="6.065" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.5601" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO14">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.064" y1="1.9558" x2="-4.064" y2="1.9558" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-1.9558" x2="4.445" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.445" y1="1.5748" x2="-4.064" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.064" y1="1.9558" x2="4.445" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.5748" x2="-4.064" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.064" y1="-1.9558" x2="4.064" y2="-1.9558" width="0.1524" layer="51"/>
<wire x1="4.445" y1="-1.5748" x2="4.445" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.5748" x2="-4.445" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-4.445" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.445" y1="-1.6002" x2="4.445" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="-1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="0" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="0" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.175" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.826" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.254" y1="1.9558" x2="0.254" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="-3.0988" x2="-3.556" y2="-1.9558" layer="51"/>
<rectangle x1="-2.794" y1="-3.0988" x2="-2.286" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="-3.0734" x2="-1.016" y2="-1.9304" layer="51"/>
<rectangle x1="-0.254" y1="-3.0988" x2="0.254" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="1.9558" x2="-1.016" y2="3.0988" layer="51"/>
<rectangle x1="-2.794" y1="1.9558" x2="-2.286" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="1.9558" x2="-3.556" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="1.9558" x2="1.524" y2="3.0988" layer="51"/>
<rectangle x1="2.286" y1="1.9558" x2="2.794" y2="3.0988" layer="51"/>
<rectangle x1="3.556" y1="1.9558" x2="4.064" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="-3.0988" x2="1.524" y2="-1.9558" layer="51"/>
<rectangle x1="2.286" y1="-3.0988" x2="2.794" y2="-1.9558" layer="51"/>
<rectangle x1="3.556" y1="-3.0988" x2="4.064" y2="-1.9558" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="74595">
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="12.7" x2="-7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="13.335" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="QB" x="12.7" y="7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="QC" x="12.7" y="5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QD" x="12.7" y="2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QE" x="12.7" y="0" length="middle" direction="hiz" rot="R180"/>
<pin name="QF" x="12.7" y="-2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QG" x="12.7" y="-5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QH" x="12.7" y="-7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="SCL" x="-12.7" y="2.54" length="middle" direction="in" function="dot"/>
<pin name="SCK" x="-12.7" y="5.08" length="middle" direction="in" function="clk"/>
<pin name="RCK" x="-12.7" y="-2.54" length="middle" direction="in" function="clk"/>
<pin name="G" x="-12.7" y="-12.7" length="middle" direction="in" function="dot"/>
<pin name="SER" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="QA" x="12.7" y="10.16" length="middle" direction="hiz" rot="R180"/>
<pin name="QH*" x="12.7" y="-12.7" length="middle" direction="hiz" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="7404">
<wire x1="-5.08" y1="5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I" x="-10.16" y="0" visible="pad" length="middle" direction="in"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*595" prefix="IC">
<description>8-bit &lt;b&gt;SHIFT REGISTER&lt;/b&gt;, output latch</description>
<gates>
<gate name="A" symbol="74595" x="22.86" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="G" pad="13"/>
<connect gate="A" pin="QA" pad="15"/>
<connect gate="A" pin="QB" pad="1"/>
<connect gate="A" pin="QC" pad="2"/>
<connect gate="A" pin="QD" pad="3"/>
<connect gate="A" pin="QE" pad="4"/>
<connect gate="A" pin="QF" pad="5"/>
<connect gate="A" pin="QG" pad="6"/>
<connect gate="A" pin="QH" pad="7"/>
<connect gate="A" pin="QH*" pad="9"/>
<connect gate="A" pin="RCK" pad="12"/>
<connect gate="A" pin="SCK" pad="11"/>
<connect gate="A" pin="SCL" pad="10"/>
<connect gate="A" pin="SER" pad="14"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="G" pad="13"/>
<connect gate="A" pin="QA" pad="15"/>
<connect gate="A" pin="QB" pad="1"/>
<connect gate="A" pin="QC" pad="2"/>
<connect gate="A" pin="QD" pad="3"/>
<connect gate="A" pin="QE" pad="4"/>
<connect gate="A" pin="QF" pad="5"/>
<connect gate="A" pin="QG" pad="6"/>
<connect gate="A" pin="QH" pad="7"/>
<connect gate="A" pin="QH*" pad="9"/>
<connect gate="A" pin="RCK" pad="12"/>
<connect gate="A" pin="SCK" pad="11"/>
<connect gate="A" pin="SCL" pad="10"/>
<connect gate="A" pin="SER" pad="14"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="G" pad="17"/>
<connect gate="A" pin="QA" pad="19"/>
<connect gate="A" pin="QB" pad="2"/>
<connect gate="A" pin="QC" pad="3"/>
<connect gate="A" pin="QD" pad="4"/>
<connect gate="A" pin="QE" pad="5"/>
<connect gate="A" pin="QF" pad="7"/>
<connect gate="A" pin="QG" pad="8"/>
<connect gate="A" pin="QH" pad="9"/>
<connect gate="A" pin="QH*" pad="12"/>
<connect gate="A" pin="RCK" pad="15"/>
<connect gate="A" pin="SCK" pad="14"/>
<connect gate="A" pin="SCL" pad="13"/>
<connect gate="A" pin="SER" pad="18"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*04" prefix="IC">
<description>Hex &lt;b&gt;INVERTER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="7404" x="17.78" y="0" swaplevel="1"/>
<gate name="B" symbol="7404" x="17.78" y="-12.7" swaplevel="1"/>
<gate name="C" symbol="7404" x="17.78" y="-25.4" swaplevel="1"/>
<gate name="D" symbol="7404" x="45.72" y="0" swaplevel="1"/>
<gate name="E" symbol="7404" x="45.72" y="-12.7" swaplevel="1"/>
<gate name="F" symbol="7404" x="45.72" y="-25.4" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="-5.08" y="-10.16" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I" pad="1"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I" pad="3"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I" pad="5"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I" pad="9"/>
<connect gate="D" pin="O" pad="8"/>
<connect gate="E" pin="I" pad="11"/>
<connect gate="E" pin="O" pad="10"/>
<connect gate="F" pin="I" pad="13"/>
<connect gate="F" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I" pad="1"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I" pad="3"/>
<connect gate="B" pin="O" pad="4"/>
<connect gate="C" pin="I" pad="5"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I" pad="9"/>
<connect gate="D" pin="O" pad="8"/>
<connect gate="E" pin="I" pad="11"/>
<connect gate="E" pin="O" pad="10"/>
<connect gate="F" pin="I" pad="13"/>
<connect gate="F" pin="O" pad="12"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="ALS"/>
<technology name="AS"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="B" pin="I" pad="4"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="C" pin="I" pad="8"/>
<connect gate="C" pin="O" pad="9"/>
<connect gate="D" pin="I" pad="13"/>
<connect gate="D" pin="O" pad="12"/>
<connect gate="E" pin="I" pad="16"/>
<connect gate="E" pin="O" pad="14"/>
<connect gate="F" pin="I" pad="19"/>
<connect gate="F" pin="O" pad="18"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name=""/>
<technology name="AC"/>
<technology name="ACT"/>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="maxim">
<description>&lt;b&gt;Maxim Components&lt;/b&gt;&lt;p&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL24-3">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt; 0.3 inch</description>
<wire x1="-14.986" y1="-0.635" x2="-14.986" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="0.635" x2="-14.986" y2="-0.635" width="0.1524" layer="21" curve="-180"/>
<wire x1="14.986" y1="-2.794" x2="14.986" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="-2.794" x2="14.986" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="2.794" x2="14.986" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="2.794" x2="-14.986" y2="0.635" width="0.1524" layer="21"/>
<pad name="1" x="-13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="-13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-15.2908" y="-2.667" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-13.462" y="-0.889" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MAX526">
<wire x1="-10.16" y1="-25.4" x2="10.16" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="10.16" y1="25.4" x2="10.16" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="10.16" y1="25.4" x2="-10.16" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-25.4" x2="-10.16" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-7.747" y1="-19.177" x2="-2.667" y2="-19.177" width="0.1524" layer="95"/>
<wire x1="-7.747" y1="-21.717" x2="-5.461" y2="-21.717" width="0.1524" layer="95"/>
<wire x1="-7.747" y1="-16.637" x2="-1.397" y2="-16.637" width="0.1524" layer="95"/>
<wire x1="-7.747" y1="-14.097" x2="-1.397" y2="-14.097" width="0.1524" layer="95"/>
<text x="-10.16" y="26.035" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-27.94" size="1.778" layer="96">&gt;VALUE</text>
<pin name="D5" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="D6" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="D7" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="D0/D8" x="-15.24" y="15.24" length="middle" direction="in"/>
<pin name="D1/D9" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="D2/D10" x="-15.24" y="10.16" length="middle" direction="in"/>
<pin name="D3/D11" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="D4" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="A0" x="-15.24" y="22.86" length="middle" direction="in"/>
<pin name="A1" x="-15.24" y="20.32" length="middle" direction="in"/>
<pin name="LDAC" x="-15.24" y="-20.32" length="middle" direction="in" function="dot"/>
<pin name="VOUTA" x="15.24" y="20.32" length="middle" direction="out" rot="R180"/>
<pin name="WR" x="-15.24" y="-22.86" length="middle" direction="in" function="dot"/>
<pin name="AGND" x="15.24" y="-20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="DGND" x="15.24" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="15.24" y="-12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="VOUTB" x="15.24" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="VOUTC" x="15.24" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="VOUTD" x="15.24" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="VREFAB" x="-15.24" y="-7.62" length="middle" direction="in"/>
<pin name="VREFCD" x="-15.24" y="-10.16" length="middle" direction="in"/>
<pin name="CSLSB" x="-15.24" y="-15.24" length="middle" direction="in" function="dot"/>
<pin name="CSMSB" x="-15.24" y="-17.78" length="middle" direction="in" function="dot"/>
<pin name="VSS" x="15.24" y="-22.86" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX526CNG" prefix="IC">
<description>&lt;b&gt;DIGITAL/ANALOG CONVERTER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MAX526" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL24-3">
<connects>
<connect gate="G$1" pin="A0" pad="18"/>
<connect gate="G$1" pin="A1" pad="17"/>
<connect gate="G$1" pin="AGND" pad="5"/>
<connect gate="G$1" pin="CSLSB" pad="21"/>
<connect gate="G$1" pin="CSMSB" pad="22"/>
<connect gate="G$1" pin="D0/D8" pad="16"/>
<connect gate="G$1" pin="D1/D9" pad="15"/>
<connect gate="G$1" pin="D2/D10" pad="14"/>
<connect gate="G$1" pin="D3/D11" pad="13"/>
<connect gate="G$1" pin="D4" pad="12"/>
<connect gate="G$1" pin="D5" pad="11"/>
<connect gate="G$1" pin="D6" pad="10"/>
<connect gate="G$1" pin="D7" pad="9"/>
<connect gate="G$1" pin="DGND" pad="7"/>
<connect gate="G$1" pin="LDAC" pad="8"/>
<connect gate="G$1" pin="VDD" pad="23"/>
<connect gate="G$1" pin="VOUTA" pad="3"/>
<connect gate="G$1" pin="VOUTB" pad="2"/>
<connect gate="G$1" pin="VOUTC" pad="1"/>
<connect gate="G$1" pin="VOUTD" pad="24"/>
<connect gate="G$1" pin="VREFAB" pad="6"/>
<connect gate="G$1" pin="VREFCD" pad="19"/>
<connect gate="G$1" pin="VSS" pad="4"/>
<connect gate="G$1" pin="WR" pad="20"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
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
<part name="SERIAL-PARALLEL" library="74xx-eu" deviceset="74*595" device="N" technology="HC"/>
<part name="DAC" library="maxim" deviceset="MAX526CNG" device=""/>
<part name="IC3" library="74xx-eu" deviceset="74*04" device="N" technology="HC"/>
<part name="OPTO-COUPLER" library="optocoupler" deviceset="6N138" device=""/>
<part name="MICRO-CONTROLER" library="teensypp" deviceset="ARDUINO-TEENSY++" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SERIAL-PARALLEL" gate="A" x="96.52" y="96.52"/>
<instance part="DAC" gate="G$1" x="142.24" y="91.44"/>
<instance part="IC3" gate="A" x="127" y="-2.54"/>
<instance part="OPTO-COUPLER" gate="G$1" x="27.94" y="0"/>
<instance part="MICRO-CONTROLER" gate="G$1" x="-35.56" y="93.98" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QA"/>
<pinref part="DAC" gate="G$1" pin="D0/D8"/>
<wire x1="109.22" y1="106.68" x2="127" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QB"/>
<pinref part="DAC" gate="G$1" pin="D1/D9"/>
<wire x1="109.22" y1="104.14" x2="127" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QC"/>
<pinref part="DAC" gate="G$1" pin="D2/D10"/>
<wire x1="109.22" y1="101.6" x2="127" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QD"/>
<pinref part="DAC" gate="G$1" pin="D3/D11"/>
<wire x1="109.22" y1="99.06" x2="127" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QE"/>
<pinref part="DAC" gate="G$1" pin="D4"/>
<wire x1="109.22" y1="96.52" x2="127" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QF"/>
<pinref part="DAC" gate="G$1" pin="D5"/>
<wire x1="109.22" y1="93.98" x2="127" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QG"/>
<pinref part="DAC" gate="G$1" pin="D6"/>
<wire x1="109.22" y1="91.44" x2="127" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="QH"/>
<pinref part="DAC" gate="G$1" pin="D7"/>
<wire x1="109.22" y1="88.9" x2="127" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SERIAL-PARALLEL" gate="A" pin="RCK"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="12"/>
<wire x1="83.82" y1="93.98" x2="10.16" y2="101.6" width="0.1524" layer="91"/>
<wire x1="10.16" y1="101.6" x2="-7.62" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="11"/>
<pinref part="SERIAL-PARALLEL" gate="A" pin="SCK"/>
<wire x1="-7.62" y1="99.06" x2="12.7" y2="99.06" width="0.1524" layer="91"/>
<wire x1="12.7" y1="99.06" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="10"/>
<pinref part="SERIAL-PARALLEL" gate="A" pin="SCL"/>
<wire x1="-7.62" y1="96.52" x2="20.32" y2="96.52" width="0.1524" layer="91"/>
<wire x1="20.32" y1="96.52" x2="83.82" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="OPTO-COUPLER" gate="G$1" pin="VO"/>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="2,RX,INT2"/>
<wire x1="40.64" y1="0" x2="50.8" y2="17.78" width="0.1524" layer="91"/>
<wire x1="50.8" y1="17.78" x2="-7.62" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="4"/>
<pinref part="DAC" gate="G$1" pin="CSMSB"/>
<wire x1="-7.62" y1="81.28" x2="66.04" y2="71.12" width="0.1524" layer="91"/>
<wire x1="66.04" y1="71.12" x2="127" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="13"/>
<pinref part="DAC" gate="G$1" pin="CSLSB"/>
<wire x1="-7.62" y1="104.14" x2="25.4" y2="78.74" width="0.1524" layer="91"/>
<wire x1="25.4" y1="78.74" x2="127" y2="76.2" width="0.1524" layer="91"/>
<label x="-20.32" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="5"/>
<pinref part="DAC" gate="G$1" pin="WR"/>
<wire x1="-7.62" y1="83.82" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="55.88" x2="127" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="7"/>
<pinref part="DAC" gate="G$1" pin="LDAC"/>
<wire x1="-7.62" y1="88.9" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<wire x1="53.34" y1="53.34" x2="127" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="8"/>
<pinref part="DAC" gate="G$1" pin="A0"/>
<wire x1="-7.62" y1="91.44" x2="33.02" y2="116.84" width="0.1524" layer="91"/>
<wire x1="33.02" y1="116.84" x2="127" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="MICRO-CONTROLER" gate="G$1" pin="9"/>
<pinref part="DAC" gate="G$1" pin="A1"/>
<wire x1="-7.62" y1="93.98" x2="40.64" y2="114.3" width="0.1524" layer="91"/>
<wire x1="40.64" y1="114.3" x2="127" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
