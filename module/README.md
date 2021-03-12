# how to use this submodule

- this module creates a vpc network , compute instance and google storage bucket
- if you like to reserve a public static IP - please uncomment content in static-ip.tf file
- when using this module , the value for following variables must be passed
	- network_name
	- instance_name
	- instance_type  
	- instance_tags
	- static_ip
	- bucket_name
	- bucket_location
