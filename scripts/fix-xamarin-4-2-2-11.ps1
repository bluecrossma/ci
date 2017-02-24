$xmlPath = 'C:\Program Files (x86)\MSBuild\Xamarin\Android\Xamarin.Android.Common.Debugging.targets'
$xml = [xml](get-content $xmlPath)
$target = $xml.Project.Target | where {$_.Name -eq "_GetPrimaryCpuAbi"}
$c = $target.RemoveChild($target.FirstChild)
$xml.Save($xmlPath)