# Transport Network Simulation Setup Guide

This guide will help you prepare your environment for the upcoming transport network simulations. Please complete all the setup steps **before class** to ensure you're ready to participate in the simulation exercises.

## 1. Repository Setup

Follow these steps to set up the repository on your local machine:

### Fork the Repository

1. Navigate to the original GitHub repository in your web browser.
    https://github.com/imosudi/Traffic-Flow-Simulation-Using-Agent-Based-Modelling.git
2. Click the "Fork" button in the top-right corner to create a copy in your GitHub account.
3. Wait for the forking process to complete.

### Clone Your Fork

Once you've forked the repository, clone it to your local machine:

```bash
git clone https://github.com/YOUR-USERNAME/Traffic-Flow-Simulation-Using-Agent-Based-Modelling.git
cd Traffic-Flow-Simulation-Using-Agent-Based-Modelling/
```

### Create a Working Branch

Create a new branch for your environment setup:

```bash
git checkout -b setup-env
```

This branch name is suggested, but you can use any meaningful name that reflects its purpose.

## 2. Installation (Ubuntu & Debian-based Systems)

### Installing SUMO and Required Tools

SUMO (Simulation of Urban MObility) is the primary simulation tool we'll be using. Install the required packages:

```bash
# Update your package lists
sudo apt update

# Install SUMO and related tools
sudo apt install -y sumo sumo-gui sumo-tools netconvert
```

### Verify Installation

Confirm that the installation was successful:

```bash
sumo --version
sumo-gui --version
netconvert --version
```

Each command should display version information rather than errors.

### Notes for Other Debian-based Distributions

If you're using a different Debian-based distribution:
- The package names are generally the same
- If the packages aren't found, you might need to add the appropriate repository

For more detailed installation instructions or troubleshooting:
- [SUMO Installation Guide](https://sumo.dlr.de/docs/Installing/index.html)
- [SUMO on Linux](https://sumo.dlr.de/docs/Installing/Linux_Build.html)

## 3. Task 1: Visualise a Basic Road Network

Now that you have the tools installed, let's create and visualize a basic road network:

1. Locate the `create_visualise_road_networks.md` file in the repository.
2. Follow the step-by-step instructions in that document.
3. By the end of this task, you should be able to see a basic intersection or road segment rendered in `sumo-gui`.

If you encounter any issues during this task, review the error messages carefully as they often provide clues about what went wrong.

## 4. Task 2: Generate Realistic Networks Using Shell Scripts

The repository includes scripts to generate more complex, realistic transport networks:

### Running the Generation Scripts

Execute the following scripts from the repository root:

```bash
# Make the scripts executable
chmod +x vuna_transport.sh cbd3_transport.sh

# Run the Vuna Road network generator
./vuna_transport.sh

# Run the CBD network generator
./cbd3_transport.sh
```

### What These Scripts Generate

- **vuna_transport.sh**: Generates a simulation of the Vuna Road corridor, including intersections and traffic patterns.
- **cbd3_transport.sh**: Creates a more complex central business district (CBD) network with multiple road types and intersections.

### Exploring the Generated Networks

To visualize the networks you've generated:

```bash
# For the Vuna Road network
sumo-gui vuna/vuna.sumocfg

# For the CBD network
sumo-gui cbd/cbd.sumocfg
```

Take some time to explore the interface. Try:
- Zooming in/out
- Using the simulation controls to start/stop
- Changing the visualization settings

## 5. Objective & Expectations

### Purpose of These Tasks

The primary goal of these setup tasks is **environment familiarization**. By completing them before class, you'll:
- Become comfortable with the basic tools
- Understand the simulation environment
- Have a foundation for the more complex simulations we'll be working on in class

### What We Expect

Before attending class, you should:
- Have successfully installed all required tools
- Be able to create and visualize basic networks
- Have generated both the Vuna and CBD networks using the provided scripts
- Be familiar with the basic SUMO-GUI interface

If you encounter problems that you can't solve after consulting the documentation, make note of:
- The exact error messages
- What you were trying to do
- What steps you've already taken to troubleshoot

This will help us address your specific issues more efficiently during class.

---


## Setup Instructions for Windows and macOS Users

If you're using Windows or macOS instead of Ubuntu/Debian, follow these platform-specific instructions to set up your environment.

### 1. Installation Instructions

#### Windows

You have two main options for installing SUMO on Windows:

**Option 1: Official Windows Installer (Recommended for most users)**

1. Download the latest SUMO installer from the [official Eclipse SUMO website](https://sumo.dlr.de/docs/Downloads.php)
2. Run the installer and follow the on-screen instructions
3. The installer will add SUMO to your PATH automatically

**Verify the installation:**

```powershell
# Open Command Prompt or PowerShell and run:
sumo --version
sumo-gui --version
netconvert --version
```

**Option 2: Windows Subsystem for Linux (WSL)**

If you prefer a Linux-like environment or encounter issues with the Windows installer:

```powershell
# Install WSL (Run in PowerShell as Administrator)
wsl --install
```

Once WSL is installed with Ubuntu:
1. Open Ubuntu on WSL
2. Follow the Ubuntu installation instructions from the earlier section

#### macOS

**Installation via Homebrew (Recommended)**

If you don't have Homebrew installed yet:

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install SUMO:

```bash
# Install SUMO using Homebrew
brew install sumo

# Verify installation
sumo --version
sumo-gui --version
netconvert --version
```

**Alternative: Installation from Source**

If you need a specific version or Homebrew installation fails:
1. Follow the [macOS build instructions](https://sumo.dlr.de/docs/Installing/MacOS_Build.html) from the SUMO documentation
2. This method requires more technical knowledge but offers more control over the installation

### 2. Running the Provided Shell Scripts

#### Windows

**Option 1: Using Git Bash (Easiest)**

If you installed Git for Windows, you have Git Bash which can run shell scripts:

```bash
# Navigate to repository root
cd path/to/repository

# Make scripts executable (if needed)
chmod +x vuna_transport.sh cbd3_transport.sh

# Run scripts
./vuna_transport.sh
./cbd3_transport.sh
```

**Option 2: Using WSL**

If you're using WSL:

```bash
# Navigate to repository in WSL
cd /mnt/c/path/to/repository  # Adjust path as needed

# Make scripts executable
chmod +x vuna_transport.sh cbd3_transport.sh

# Run scripts
./vuna_transport.sh
./cbd3_transport.sh
```

**Option 3: PowerShell Alternative**

If you're more comfortable with PowerShell, you might need to create equivalent PowerShell scripts or run the commands manually. Consult with your instructor if you need assistance with this approach.

#### macOS

Running scripts on macOS is straightforward:

```bash
# Navigate to repository root
cd path/to/repository

# Make scripts executable
chmod +x vuna_transport.sh cbd3_transport.sh

# Run scripts
./vuna_transport.sh
./cbd3_transport.sh
```

### Important Notes for Non-Linux Users

- Some paths in the scripts might need adjustment depending on your installation
- Graphics performance might vary between platforms
- If a script doesn't run properly, check file permissions and line endings (Windows text editors sometimes change these)
- For any persistent issues, try running SUMO directly with the configuration files the scripts generate

---

**Remember**: The goal is not just to follow these steps mechanically, but to understand what each tool does and how they work together to create transport network simulations. Take your time to explore and experiment with the tools as you set up your environment.