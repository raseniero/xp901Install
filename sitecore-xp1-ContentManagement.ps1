<#
Exposed parameters for creating the Content Management Role, so you can change it for production
#>
$Prefix = "xp901" #This is usually the name of the site
$PSScriptRoot = "c:\xp" #This is the default destination folder from the git clone, if different then update this to point to the new location.
$Path = "$PSScriptRoot\config\sitecore-XP1-cm.json"

$Package = "$PSScriptRoot\Sitecore 9.0.1 rev. 171219 (OnPrem)_cm.scwdp.zip"
$LicenseFile = "$PSScriptRoot\license.xml" #The Sitecore License.xml file
$SiteName = "$Prefix.contentmanagement" 
$SitecoreAdminPassword = "b"

$SSLCert = "" #Todo: needs to be provided (applicable for production environment), if not then generated by the script (applicable for development environment).
$XConnectCert = "$Prefix.xconnect_client"

<#
The $Prefix, $SqlAdminUser, $SqlAdminPassword and $SqlServer needs to be changes. The rest can use the default values (for development environment purposes) but for production it's recommended to be changed.
#>
$SqlDbPrefix = $Prefix
$SqlServer = "RAMONASENIE0E1F"
$SqlAdminUser = "sa" 
$SqlAdminPassword="jajnav5@" 
$SqlCoreUser = "coreuser"
$SqlCorePassword = "Test12345"
$SqlMasterUser = "masteruser"
$SqlMasterPassword = "Test12345"
$SqlWebUser = "webuser"
$SqlWebPassword = "Test12345"
$SqlReportingUser = "reportinguser"
$SqlReportingPassword = "Test12345"
$SqlReferenceDataUser = "referencedatauser"
$SqlReferenceDataPassword = "Test12345"
$SqlFormsUser = "formsuser"
$SqlFormsPassword = "Test12345"
$SqlExmMasterUser = "exmmasteruser"
$SqlExmMasterPassword = "Test12345"
$SqlMessagingUser = "messaginguser"
$SqlMessagingPassword = "Test12345" 

$ExmEdsProvider = "CustomSMTP"

$SolrCorePrefix = $Prefix
$SolrUrl = "https://localhost:8983/solr" 

$ProcessingService = "https://$Prefix.processing"
$ReportingService = "https://$Prefix.reporting"
$ReportingServiceApiKey = "abcde111112222233333444445555566"

$XConnectCollectionSearchService = "https://$Prefix.collectionsearch"
$XConnectReferenceDataService = "https://$Prefix.referencedata"

$MarketingAutomationOperationsService = "https://$Prefix.marketingautomation"
$MarketingAutomationReportingService = "https://$Prefix.marketingautomationreporting"

$EXMCryptographicKey = "0x0000000000000000000000000000000000000000000000000000000000000000"
$EXMAuthenticationKey = "0x0000000000000000000000000000000000000000000000000000000000000000"
$TelerikEncryptionKey = "PutYourCustomEncryptionKeyHereFrom32To256CharactersLong"

#Configure Content Management role
$ContentManagementParams = @{     
    Path = $Path
    Package = $Package     
    LicenseFile = "$PSScriptRoot\license.xml"     
    SqlDbPrefix = $Prefix  
    SolrCorePrefix = $SolrCorePrefix
    SSLCert = $SSLCert
    XConnectCert = $XConnectCert
    SiteName = $SiteName
    SitecoreAdminPassword = $SitecoreAdminPassword
    SqlAdminUser = $SqlAdminUser
    SqlAdminPassword = $SqlAdminPassword
    SqlCoreUser = $SqlCoreUser
    SqlCorePassword = $SqlCorePassword
    SqlMasterUser = $SqlMasterUser
    SqlMasterPassword = $SqlMasterPassword
    SqlWebUser = $SqlWebUser
    SqlWebPassword = $SqlWebPassword
    SqlReportingUser = $SqlReportingUser
    SqlReportingPassword = $SqlReportingPassword
    SqlReferenceDataUser = $SqlReferenceDataUser
    SqlReferenceDataPassword = $SqlReferenceDataPassword
    SqlFormsUser = $SqlFormsUser
    SqlFormsPassword = $SqlFormsPassword
    SqlExmMasterUser = $SqlExmMasterUser
    SqlExmMasterPassword = $SqlExmMasterPassword
    SqlMessagingUser = $SqlMessagingUser
    SqlMessagingPassword = $SqlMessagingPassword
    SqlServer = $SqlServer
    ExmEdsProvider = $ExmEdsProvider
    SolrUrl = $SolrUrl
    ProcessingService = $ProcessingService
    ReportingService = $ReportingService
    ReportingServiceApiKey = $ReportingServiceApiKey
    XConnectCollectionSearchService  = $XConnectCollectionSearchService
    XConnectReferenceDataService = $XConnectReferenceDataService
    MarketingAutomationOperationsService = $MarketingAutomationOperationsService
    MarketingAutomationReportingService = $MarketingAutomationReportingService
    EXMCryptographicKey = $EXMCryptographicKey
    EXMAuthenticationKey = $EXMAuthenticationKey
    TelerikEncryptionKey = $TelerikEncryptionKey
} 
Write-Host @ContentManagementParams
Install-SitecoreConfiguration @ContentManagementParams

<#
MIT License

Copyright (c) 2018 Ramon Aseniero

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#> 