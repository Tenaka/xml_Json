
$xmlPath = "C:\Program Files\SomeApp\settings.xml"

#AppConfig
$HideAButton = "true"
$HideBButton = "false"

#ProfileSettings
$Resolution = "300"

$xmldoc = new-object System.XML.XMLdocument
$xmldoc.Load($xmlPath)

$AppConfig = $xmldoc.AppConfig
$AppConfig.HideAButton = $HideAButton
$AppConfig.HideBButton = $HideBButton

$ProfileSettings = $xmldoc.AppConfig.ProfileSettings
$ProfileSettings.Resolution = $Resolution

$xmldoc.Save($xmlPath)


















