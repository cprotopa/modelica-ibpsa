within IBPSA.BoundaryConditions.WeatherData.BaseClasses.Examples;
model GetTimeStepTMY3
  "Test model to get the time step of a weather file"
  extends Modelica.Icons.Example;

  parameter String filNam = Modelica.Utilities.Files.loadResource(
  "modelica://IBPSA/Resources/weatherdata/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.mos")
    "Name of weather data file";
  parameter String tabNam = "tab1" "Name of table on weather file";

  parameter Modelica.SIunits.Time timeStep(fixed=false)
    "Average time interval of weather data";

protected
  constant Modelica.SIunits.Time step = 3600.;

initial equation
  timeStep = IBPSA.BoundaryConditions.WeatherData.BaseClasses.getTimeStepTMY3(
  filNam, tabNam);

  assert(abs(timeStep-step) < 1E-5,
      "Error in weather file, time step " + String(timeStep) +
      ", but expected " + String(step) + ".");

  annotation (
    Documentation(info="<html>
<p>
This example tests getting the time step of a TMY3 weather data file.
</p>
</html>",
revisions="<html>
<ul>
<li>
June 16, 2020, by Christina Protopapadaki:<br/>
First implementation, based on 
<a href=\"modelica://IBPSA.BoundaryConditions.WeatherData.BaseClasses.Examples.GetTimeSpanTMY3\">GetTimeSpanTMY3</a>.
</li>
</ul>
</html>"),
experiment(Tolerance=1e-6, StopTime=1.0),
__Dymola_Commands(file="modelica://IBPSA/Resources/Scripts/Dymola/BoundaryConditions/WeatherData/BaseClasses/Examples/GetTimeSpanTMY3.mos"
        "Simulate and plot"));
end GetTimeStepTMY3;
