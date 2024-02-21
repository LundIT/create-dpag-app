import os
import subprocess
import sys

def clone_github_repo():
    # Ask for the GitHub repository URL
    repo_url = input("Enter the GitHub repository URL: ").strip()

    # Extract the repository name from the URL
    repo_name = repo_url.split('/')[-1]
    if repo_name.endswith('.git'):
        repo_name = repo_name[:-4]

    # Create a new directory for the repository
    cwd = os.getcwd()
    target_dir = os.path.join(cwd, repo_name, repo_name)

    try:
        if not os.path.exists(target_dir):
            os.makedirs(target_dir)
        else:
            print(f"Directory '{target_dir}' already exists. Exiting to avoid overwriting.")
            sys.exit(1)

        # Clone the repository into the target directory
        print(f"Cloning {repo_url} into {target_dir}...")
        subprocess.run(['git', 'clone', repo_url, target_dir], check=True)
        print(f"Repository {repo_name} cloned successfully.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    clone_github_repo()
