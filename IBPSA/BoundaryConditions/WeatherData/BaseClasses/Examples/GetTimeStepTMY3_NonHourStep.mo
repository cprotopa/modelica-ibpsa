within IBPSA.BoundaryConditions.WeatherData.BaseClasses.Examples;
model GetTimeStepTMY3_NonHourStep
  "Test model to get time step of a weather file, different than 1h"
  extends Modelica.Icons.Example;
  extends
    IBPSA.BoundaryConditions.WeatherData.BaseClasses.Examples.GetTimeStepTMY3(
    filNam = Modelica.Utilities.Files.loadResource(
 "modelica://IBPSA/Resources/Data/BoundaryConditions/WeatherData/Validation/DecemberToJanuary30minStep.mos"),
    step = 1800);

  annotation (
    Documentation(info="<html>
<p>
This example tests getting time step of a TMY3 weather data file that
starts at a non-zero time and has a time step other than 1h.
</p>
</html>",
revisions="<html>
<ul>
<li>
June 16, 2020, by Christina Protopapadaki:<br/>
First implementation, based on 
<a href=\"modelica://IBPSA.BoundaryConditions.WeatherData.BaseClasses.Examples.GetTimeSpanTMY3_NonzeroStart\">GetTimeSpanTMY3_NonzeroStart</a>.
</li>
</ul>
</html>"),
experiment(Tolerance=1e-6, StopTime=1.0),
__Dymola_Commands(file="modelica://IBPSA/Resources/Scripts/Dymola/BoundaryConditions/WeatherData/BaseClasses/Examples/GetTimeStepTMY3_NonHourStep.mos"
        "Simulate and plot"));
end GetTimeStepTMY3_NonHourStep;
