# Agrega el ensamblado necesario para trabajar con UI Automation
Add-Type -TypeDefinition @"
    using System;
    using System.Windows.Automation;

    public static class UIAutomationHelper
    {
        public static void ClickButton(string applicationTitle, string buttonName)
        {
            AutomationElement rootElement = AutomationElement.RootElement;
            Condition condition = new PropertyCondition(AutomationElement.NameProperty, applicationTitle);
            AutomationElement appElement = rootElement.FindFirst(TreeScope.Children, condition);
            
            if (appElement != null)
            {
                condition = new PropertyCondition(AutomationElement.NameProperty, buttonName);
                AutomationElement buttonElement = appElement.FindFirst(TreeScope.Descendants, condition);
                
                if (buttonElement != null)
                {
                    InvokePattern invokePattern = buttonElement.GetCurrentPattern(InvokePattern.Pattern) as InvokePattern;
                    
                    if (invokePattern != null)
                    {
                        invokePattern.Invoke();
                    }
                    else
                    {
                        Write-Output "El elemento no es un botón o no se puede invocar."
                    }
                }
                else
                {
                    Write-Output "No se encontró el botón en la aplicación."
                }
            }
            else
            {
                Write-Output "No se encontró la aplicación."
            }
        }
    }
"@

# Uso del método para hacer clic en el botón
$tituloAplicacion = "McAfee Safe Connect"
$nombreBoton = "Detener protección" 

[UIAutomationHelper]::ClickButton($tituloAplicacion, $nombreBoton)