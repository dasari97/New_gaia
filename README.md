# ***Automated script for creating VM's in Betsol VSphere.***

The terraform modules in this repository are used for creating VM's in Betsol's VSphere.

# ***Pre-requiestes***

--> ***Terraform installed in the machine where you are cloning the repo.***

        * Refer "https://learn.hashicorp.com/tutorials/terraform/install-cli" for terrafrom installation.

--> ***Vcenter Server details***

--> ***Login Credentials into the server***

--> ***VM's resource details***
     like (template-Name, datacenter, etc.. full required details are in the vars/values.tfvars file).. details should be mentioned in vars/values.tfvars file. ***  


***Note: You should be connected to Betsol VPN.***

-----------------------------------------

# ***Procedure to Deploy the VM's.***

1)  Clone the repository using

***git clone https://git.betsol.com/betsol_it/terraformscripts/vsphere-vm-creation.git***

Note: Clone the repo into a fresh directory/folder to avoid conflicts.

2) Fill the requied details in vars/values.tfvars

Note: Read the Comments next to each variable for smooth work flow.

3) Command Execution>

i) first execute 

***"terraform init"*** command

ii) then, run

***"terraform plan --var-file vars/values.tfvars"*** command.

        * Check the output once for "firmware_type" variable.

        * It may have either "bios" or "efi" as values. If value is **bios**, 
        then "***efi_mode***" value in vars/values.tfvars file should be "***false***".
        * If the value is  **efi**, then "***efi_mode***" value in vars/values.tfvars file should be "***true***".


iii) Finally, run 

***"terraform apply --var-file vars/values.tfvars"*** command.

It will promte for approval. Provide ***"yes"*** if the output show is as execpted.

-------------------------------------------

# ***Procedure to Destroy the VM's.***

i) Run this command to destroy the above created VM's.

***"terrafrom destory --var-file vars/values.tfvars"***


-------------------------------------------

***Aleart***

Please do not forget to take intial snapshot for the VM's created.

***Note:*** You can login to created VM's with ***default user*** and ***default password*** share to you.