# Installation instructions

## Step 1: Review the Script: 
* First, open the URL in your web browser or use a command-line tool like curl to download the script content to review. This is important to ensure that the script is safe to execute.
```bash
curl https://raw.githubusercontent.com/ClassroomTraining/Setups/main/mac/setup.sh
```

## Step 2: Download the Script

* Once you've reviewed the script and confirmed it's safe, you can download it using curl with the -o option to specify the output filename, or you can directly execute it in the terminal (shown in Step 3).
```bash
curl https://raw.githubusercontent.com/ClassroomTraining/Setups/main/mac/setup.sh -o setup.sh
```

## Step 3: Make the Script Executable

* Change the permissions of the downloaded script to make it executable.
```bash
chmod +x setup.sh
```

## Step 4: Execute the Script
* Now, you can execute the script. Since it involves installing software, you might need to run it with sudo to provide the necessary permissions, depending on what the script does.
```
sudo ./setup.sh
```