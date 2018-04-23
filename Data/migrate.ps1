cd ..\Web
dotnet publish
cd ..\Data
$publishDir = '..\Web\bin\Debug\netcoreapp2.0\publish\'
dotnet exec --depsfile $publishDir\Web.deps.json --additionalprobingpath $home\.nuget\packages ef.dll database update --assembly $publishDir\Web.dll --startup-assembly $publishDir\Web.dll --project-dir $publishDir --data-dir $publishDir --verbose --root-namespace Data
