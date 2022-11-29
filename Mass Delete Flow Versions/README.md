# Mass Delete Flow Versions
A utility to delete flow versions in bulk.

The package contains a flow, Flows Manager, that allows you to select a flow and delete it's versions.
You can embed this flow in a lighnting app/home/record page or add it to utility bar, whatever suits you best.

Also, you can extend the flow to support selection of multiple flows and delete flow versions for all the selected flows.

## Installation
Use the following link(s) to install the unmanaged(unlocked) package (make sure to read the post installation instructions) 

| Version | Fixes | Package Link*	    
|-|-|-|
| 1.0 | Base Version | https://login.salesforce.com/packaging/installPackage.apexp?p0=04t6F000004HDc9QAG |

*To install the package in sandbox, replace login.salesforce.com with test.salesforce.com.

## Post installation instructions

Once you've succesfully installed the package, add your org's URL to the Remote site settings.
<br/>
To do that, copy your org's domain URL (Setup -> My Domain) and go to Setup -> Remote Site Settings -> New Remote Settings.
**Remote Site Name**: Enter a suitable name. <br/>
**Remote Site URL**: Paste the domain URL you copied. <br/>
**Disable Protocol Security**: Keep it unchecked. <br/>
**Description**: Add a description, if you fancy it. <br/>
**Active**: Keep it checked.