<h1 align="center">

[![Gsoc2 Logo](https://github.com/Gsoc2/Gsoc2/blob/main/frontend/public/images/Gsoc2_logo_new.png)](https://gsoc2r.io)

Gsoc2 Automation

[![CodeQL](https://github.com/Gsoc2/Gsoc2/actions/workflows/codeql-analysis.yml/badge.svg?branch=launch)](https://github.com/Gsoc2/Gsoc2/actions/workflows/codeql-analysis.yml)
[![Autobuild](https://github.com/Gsoc2/Gsoc2/actions/workflows/dockerbuild.yaml/badge.svg?branch=launch)](https://github.com/Gsoc2/Gsoc2/actions/workflows/dockerbuild.yaml)

</h1><h4 align="center">

[Gsoc2](https://gsoc2r.io) is an automation platform for and by the community, focusing on accessibility for anyone to automate. Security operations is complex, but it doesn't have to be.

[_Key Features_](https://gsoc2r.io/docs/features) —
[_Community & Support_](https://discord.gg/B2CBzUm) —
[_Documentation_](https://gsoc2r.io/docs) —
[_Getting Started_](https://gsoc2r.io/docs/getting_started) —
[_Development_](https://github.com/gsoc2/Gsoc2/blob/master/.github/CONTRIBUTING.md) 

Follow us on Twitter at [@gsoc2io](https://twitter.com/gsoc2io).

</h4>

![Example Gsoc2 webhook integration](https://github.com/gsoc2/Gsoc2/blob/main/frontend/src/assets/img/github_gsoc2_img.png)

## Try it
* Self-hosted: Check out the [installation guide](https://github.com/gsoc2/gsoc2/blob/master/.github/install-guide.md)
* Cloud: Register at https://gsoc2r.io/register and get cooking (missing a lot of features)

Please consider [sponsoring](https://github.com/sponsors/gsoc2) the project if you want to see more rapid development.

## Support
* [Discord](https://discord.gg/B2CBzUm)
* [Twitter](https://twitter.com/gsoc2io)
* [Email](mailto:gsoc2@gsoc2r.io)
* [Open issue](https://github.com/gsoc2/Gsoc2/issues/new)
* [Gsoc2r.io](https://gsoc2r.io/contact)

## Blogposts
* [1. Introducing Gsoc2](https://medium.com/security-operation-capybara/introducing-gsoc2-an-open-source-soar-platform-part-1-58a529de7d12)
* [2. Getting started with Gsoc2](https://medium.com/security-operation-capybara/getting-started-with-gsoc2-an-open-source-soar-platform-part-2-1d7c67a64244)
* [3. Integrating Gsoc2 with Virustotal and TheHive](https://medium.com/@Gsoc2likeme/integrating-gsoc2-with-virustotal-and-thehive-open-source-soar-part-3-8e2e0d3396a9)
* [4. Real-time executions with TheHive, Cortex and MISP](https://medium.com/@Gsoc2likeme/indicators-and-webhooks-with-thehive-cortex-and-misp-open-source-soar-part-4-f70cde942e59)

## Documentation
[Documentation](https://gsoc2r.io/docs) can be found on [https://gsoc2r.io/docs](https://gsoc2r.io/docs) and is written here: [https://github.com/gsoc2/gsoc2-docs](https://github.com/gsoc2/gsoc2-docs).

### Setting up a local development environment

Please follow the steps mentioned [here](https://github.com/Gsoc2/Gsoc2/blob/main/.github/install-guide.md#local-development-installation)!

## Related repositories
* OpenAPI apps: [https://github.com/gsoc2/security-openapis](https://github.com/gsoc2/security-openapis)
* Documentation: [https://github.com/gsoc2/gsoc2-docs](https://github.com/gsoc2/gsoc2-docs)
* Workflows: [https://github.com/gsoc2/gsoc2-workflows](https://github.com/gsoc2/gsoc2-workflows)
* Python apps: [https://github.com/gsoc2/gsoc2-apps](https://github.com/gsoc2/gsoc2-apps)

## Features
* Simple, feature rich [workflow editor](https://gsoc2r.io/docs/workflows)
* App creator using [OpenAPI](https://github.com/gsoc2/OpenAPI-security-definitions)
* Premade apps for your security tools
* Organization and sub-organization control
* Hybrid resource sharing with gsoc2r.io (optional)

## Website
[https://gsoc2r.io](https://gsoc2r.io)

## Contributing
We want to make the world of cybersecurity more accessible and need all the help we can get. Send an email to [gsoc2@gsoc2r](mailto:gsoc2@gsoc2r.io) and we'll make sure to give you any training you may need.

These are the main areas to contribute in:
* Frontend (ReactJS)
* Backend (Golang)
* App Creation (Python & GUI w/OpenAPI)
* Documentation (Markdown)
* Workflow creation (GUI & Conceptualizing) 
* Content Creation (Blogs, videos etc) 

Contributing guidelines are outlined [here](https://github.com/gsoc2/Gsoc2/blob/master/.github/CONTRIBUTING.md).

## Contributors 
![ICPL logo](https://github.com/Gsoc2/Gsoc2/blob/main/frontend/src/assets/img/icpl_logo.png)

**Gsoc2**
<a href="https://github.com/gsoc2/gsoc2/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=gsoc2/gsoc2" />
</a>

[**App magicians**](https://github.com/gsoc2/gsoc2-apps)
<a href="https://github.com/gsoc2/gsoc2-apps/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=gsoc2/gsoc2-apps" />
</a>


## License
All modular information related to Gsoc2 will be under MIT (anyone can use it for whatever purpose), with Gsoc2 itself using AGPLv3. 

Workflows: MIT
Documentation: MIT
Gsoc2 backend: AGPLv3 
Apps, specification and App SDK: MIT

## Architecture
![Gsoc2 Architecture](https://github.com/gsoc2/Gsoc2/blob/main/frontend/src/assets/img/gsoc2_architecture.png)

### Repository overview 
Below is the folder structure with a short explanation
```bash
├── README.md				# What you're reading right now
├── backend					# Contains backend related code.
│   ├── go-app 			# The backend golang webserver
│   └── app_sdk			# The SDK used for apps
├── frontend				# Contains frontend code. ReactJS, Material UI and cytoscape
├── functions				# Has execution and extension resources, such as the Wazuh integration
│   ├── onprem				# Code for onprem solutions
│   │   ├── Orborus 	# Distributes execution locations
│   │   ├── Worker		# Runs a workflow
└ docker-compose.yml 	# Used for deployments
```

[Get in touch](https://gsoc2r.io/contact), send a mail to [gsoc2@gsoc2r.io](mailto:gsoc2@gsoc2r.io) or poke me on twitter [@gsoc2likeme](https://twitter.com/gsoc2likeme)
