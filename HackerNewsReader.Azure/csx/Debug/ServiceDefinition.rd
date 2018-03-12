<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="HackerNewsReader.Azure" generation="1" functional="0" release="0" Id="cb937e8f-e637-475b-a792-584b9c333d69" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="HackerNewsReader.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="HackerNewsReader:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/LB:HackerNewsReader:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/LB:HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapCertificate|HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="HackerNewsReaderInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/MapHackerNewsReaderInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:HackerNewsReader:Endpoint1">
          <toPorts>
            <inPortMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapHackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapHackerNewsReaderInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReaderInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="HackerNewsReader" generation="1" functional="0" release="0" software="C:\Users\Michael Warren\source\repos\Nextech code problem\HackerNewsReader\HackerNewsReader.Azure\csx\Debug\roles\HackerNewsReader" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/SW:HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;HackerNewsReader&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;HackerNewsReader&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReaderInstances" />
            <sCSPolicyUpdateDomainMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReaderUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReaderFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="HackerNewsReaderUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="HackerNewsReaderFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="HackerNewsReaderInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="16d7509e-8267-40b5-ad94-2a485eb31d7c" ref="Microsoft.RedDog.Contract\ServiceContract\HackerNewsReader.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="39ea49a1-e534-4648-9e02-c748f9ea6622" ref="Microsoft.RedDog.Contract\Interface\HackerNewsReader:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="76ab8097-2ac4-4a9d-a86e-ccce349ddf85" ref="Microsoft.RedDog.Contract\Interface\HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/HackerNewsReader.Azure/HackerNewsReader.AzureGroup/HackerNewsReader:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>