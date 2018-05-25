within IBPSA.Fluid.HeatExchangers.GroundHeatExchangers.BaseClasses.ThermalResponseFactors;
function finiteLineSource_erfint "Integral of the error function"
  extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;

algorithm
  y := u*Modelica.Math.Special.erf(u) - 1/sqrt(Modelica.Constants.pi)*(1 - exp(-u^2));

annotation (
Documentation(info="<html>
<p>
This function evaluates the integral of the error function, given by:
</p>
<p align=\"center\">
<img alt=\"image\" src=\"modelica://IBPSA/Resources/Images/Fluid/HeatExchangers/GroundHeatExchangers/ErrorFunctionIntegral_01.png\" />
</p>
</html>", revisions="<html>
<ul>
<li>
March 22, 2018 by Massimo Cimmino:<br/>
First implementation.
</li>
</ul>
</html>"));
end finiteLineSource_erfint;
