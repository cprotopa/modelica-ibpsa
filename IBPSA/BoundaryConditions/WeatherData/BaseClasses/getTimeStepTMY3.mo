within IBPSA.BoundaryConditions.WeatherData.BaseClasses;
function getTimeStepTMY3
  "Get the time step of the weather data from the file"
  extends Modelica.Icons.Function;

  input String filNam "Name of weather data file";
  input String tabNam "Name of table on weather file";
  output Modelica.SIunits.Time timeStep "Average time interval of weather data";

external "C" getTimeStep(filNam, tabNam, timeStep)
  annotation (
  Include="#include <getTimeStep.c>",
  IncludeDirectory="modelica://IBPSA/Resources/C-Sources");

  annotation (Documentation(info="<html>
<p>
This function returns the time step (average interval between datapoints) of the TMY3 weather data file.<br/>
The data in the weather file should be equidistantly spaced in order to get an accurate time step.
</p>
</html>", revisions="<html>
<ul>
<li>
June 16, 2020, by Christina Protopapadaki:<br/>
First implementation, as part of solution to <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1375\">#1375</a>.
</li>
</ul>
</html>"));
end getTimeStepTMY3;
