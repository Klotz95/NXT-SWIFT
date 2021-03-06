<h1>NXT-SWIFT</h1>
<h2>About</h2>
<p>NXT-SWIFT has the goal to create an API in SWIFT for LEGO Mindstorm NXT. It will be possible to regulate the engine and read out all important sensor values.<br> At first we will only focus on the bluetooth connection. The serial connection will be developed later on. </p>
<h2>Diagrams</h2>
<h3>Class Diagram</h3>
<p>The class diagram is structured like this: </p>
<img src='Diagrams/classDiagram.bmp' />
<h2>Return Values Of Functions</h2>
<p>As you can see the funtions "GetOutputState" and "GetInputValues" are returning a dictionary. These are optional properties which will be nil if something went wrong during the connection. The following table shows the indexes and the related attribute types of these dictionaries. </p>
<h3>Dictionary of GetOutputState</h3>
  <table>
  <tr>
    <th>Index</th>
    <th>Attribute Type</th>
  </tr>
  <tr>
    <td>OutputPort</td>
    <td>Byte</td>
  </tr>
  <tr>
    <td>PowerSetPoint</td>
    <td>Byte</td>
  </tr>
  <tr>
    <td>Mode</td>
    <td>Byte</td>
  </tr>
  <tr>
    <td>RegulationMode</td>
    <td>Ubyte</td>
  </tr>
  <tr>
    <td>TurnRatio</td>
    <td>SByte</td>
  </tr>
  <tr>
    <td>RunState</td>
    <td>UByte</td>
  </tr>
  <tr>
    <td>TachoLimit</td>
    <td>ULong</td>
  </tr>
  <tr>
    <td>TachoCount</td>
    <td>SLong</td>
  </tr>
  <tr>
    <td>BlockTachoCount</td>
    <td>SLong</td>
  </tr>
  <tr>
    <td>RotationCount</td>
    <td>SLong</td>
  </tr>
  </table>
<h3>Dictionary of GetInputValues</h3>
<table>
  <tr>
    <th>Index</th>
    <th>Attribute Type</th>
  </tr>
  <tr>
    <td>InputPort</td>
    <td>Byte</td>
  </tr>
  <tr>
    <td>Valid</td>
    <td>Boolean</td>
  </tr>
  <tr>
    <td>Calibrated</td>
    <td>Boolean</td>
  </tr>
  <tr>
    <td>SensorType</td>
    <td>Byte</td>
  </tr>
  <tr>
    <td>SensorMode</td>
    <td>Byte</td>
  </tr>
  <tr>
    <td>RawADValue</td>
    <td>String</td>
  </tr>
  <tr>
    <td>NormalizedADValue</td>
    <td>String</td>
  </tr>
  <tr>
    <td>ScaledValue</td>
    <td>String</td>
  </tr>
  <tr>
    <td>CalibratedValue</td>
    <td>String</td>
  </tr>
</table>
<h2>Error Handling</h2>
 <p>To handle the errors almost every function has as a return value a NSError Datatype. This return value is an optional property and will be nil if everything went correctly. </p>
<h2>More Information</h2>
<p>For further information please visit the official LEGO Mindstorm NXT documentations which can be found via the following links: </p>
<p><b>NXT Bluetooth Developer Kit:</b> <a href='http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/bdk_download1.zip?l.r2=-1144978407'>http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/bdk_download1.zip?l.r2=-1144978407</a><br><br>
<b>NXT Hardware Developer Kit:</b> <a href='http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/hdk_download1.zip?l.r2=-1260971408'> http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/hdk_download1.zip?l.r2=-1260971408</a><br><br>
<b>NXT Mobile Application Kit:</b> <a href='http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/nxtmobileapplicationsoftware_download1.zip?l.r2=-450002426'>http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/nxtmobileapplicationsoftware_download1.zip?l.r2=-450002426</a><br><br>
<b>NXT Software Developer Kit:</b> <a href='http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/sdk_download1.zip?l.r2=1640501448'>http://cache.lego.com/r/www/r/mindstorms/-/media/franchises/mindstorms%202014/downloads/firmware%20and%20software/nxt%20software/sdk_download1.zip?l.r2=1640501448</a></p>
