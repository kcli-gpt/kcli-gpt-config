# KCLI GPT Config - WIP

This repository provides the main script to pull down specific configuration repositories ( To deploy a vm or deploy a OpenShift cluster on KVM ) and execute their setup using GPTScript. The script is used to automate the deployment of vms and OpenShift clusters using KCLI and GPTScript. Through natural language processing, the script can understand and process user queries related to KCLI and deploy the required configurations.

## Structure

- **main.gpt**: Main script to pull and execute configuration repositories.
- **helper_functions.sh**: Contains reusable shell functions.
- **kcli-credentials.gpt**: Creates environment variables for KCLI and GPTScript.
- **default.env**: Contains default environment variables for KCLI and GPTScript.
- 

## Quick install 
```
curl https://get.gptscript.ai/install.sh | sh
```

## Usage

1. Make sure you have `kcli` and `GPTScript` installed.
2. Clone this repository.
3. Navigate to the repository directory.
4. Run the main GPTScript:
   ```sh
   export OPENAI_API_KEY=sk-proj-yourkey
   gptscript main.gpt
   ```
5. To interact with kcli-gpt scripts, use the following command:
   ```sh
      $ gptscript main.gpt

      How can I assist you with KCLI today?                                                                                                   

       @KCLI GPT Agent>  tell me aboout kcli

      KCLI (Kubernetes Command Line Interface) is a tool designed to simplify the management and deployment of Kubernetes clusters and virtual
      machines. It provides a set of commands to interact with Kubernetes clusters, manage virtual machines, and automate various tasks       
      related to infrastructure management.                                                                                                   
                                                                                                                                              
      Here are some key features and capabilities of KCLI:                                                                                    
                                                                                                                                              
      1. Cluster Management: KCLI allows you to create, delete, and manage Kubernetes clusters. It supports different types of clusters,      
      including local clusters, cloud-based clusters, and more.                                                                               
      2. Virtual Machine Management: You can use KCLI to create, delete, and manage virtual machines. It supports various hypervisors and     
      cloud providers.                                                                                                                        
      3. Templates and Plans: KCLI supports the use of templates and plans to define the configuration of clusters and virtual machines. This 
      allows for consistent and repeatable deployments.                                                                                       
      4. Integration with Ansible: KCLI can integrate with Ansible to automate complex deployment and configuration tasks.                    
      5. Command Line Interface: KCLI provides a rich set of commands that can be used from the command line to perform various tasks. This   
      makes it easy to script and automate workflows.                                                                                         
      6. Customization: KCLI is highly customizable, allowing users to define their own templates, plans, and configurations.                 
                                                                                                                                              
      To get started with KCLI, you can use the  kcli  command followed by various sub-commands to perform specific tasks. For example, you can
      create a new Kubernetes cluster, manage virtual machines, or deploy applications.                                                       
                                                                                                                                              
      Would you like to see a specific command or example of how to use KCLI?
   ```

6. To Configure environment variables, use the following command:
   ```
   @KCLI GPT Agent> configure-environment
   ```




