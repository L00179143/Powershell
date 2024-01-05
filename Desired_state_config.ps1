{
    param
    (
        [string[]]$ComputerName='localhost'
    )

    Import-DscResource -ModuleName PsDesiredStateConfiguration

    Node $ComputerName
    {
        WindowsFeature 'FTP Server'
        {
            Ensure = 'Present'
            Name = 'FTP-server'
        }

        WindowsFeature 'IISServer'
        {
            Ensure = 'Present'
            Name = 'web-server'
        }
        File HelloWorld {
            SourcePath = "C:\Users\sudha\Documents\output.txt"
            DestinationPath = "C:\Temp\HelloWorld.txt"
            Ensure = "Present"
            Contents   = "Hello World message from Desired State Configuration Script!"
        }
    }
}
Get-DscConfiguration