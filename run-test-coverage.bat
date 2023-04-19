: Step 1 - Execute only once!
: Disable NugetStone in VS Studio to be able to install.
dotnet tool install --global dotnet-reportgenerator-globaltool

set path-projeto-test=C:\Users\55219\Downloads\Repos\StoneChallenge\StoneChallenge.Tests
set path-do-arquivo-coverage=C:\Users\55219\Downloads\Repos\StoneChallenge\StoneChallenge.Tests\coverage.cobertura.xml
set pasta-destino-gerar-relatorio=C:\Users\55219\Downloads\Repos\StoneChallenge\StoneChallenge.Tests\Coverage

: Step 2
dotnet test %path-projeto-test% --no-build /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura

: Step 3
: You can have multiple xml coverage files to be added to the report, just separating them by semicolon.
reportgenerator "-reports:%path-do-arquivo-coverage%" "-targetdir:%pasta-destino-gerar-relatorio%" -reporttypes:Html

start %pasta-destino-gerar-relatorio%\index.html

cmd / k
