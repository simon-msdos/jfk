# JFK Document Downloader

This script downloads PDF documents related to the JFK assassination from the National Archives website.

## Usage

1. Clone the repository:
    ```bash
    git clone git@github.com:simon-msdos/jfk.git
    cd jfk
    ```

2. Make the script executable:
    ```bash
    chmod +x curl.sh
    ```

3. Run the script:
    ```bash
    ./curl.sh
    ```

The script will create a `downloads` directory and download all the PDF files listed on the [National Archives JFK release page](https://www.archives.gov/research/jfk/release-2025).

## Script Details

The script performs the following steps:
1. Defines color variables for output messages.
2. Creates a `downloads` directory if it doesn't exist.
3. Fetches the list of PDF links from the National Archives JFK release page.
4. Iterates over each link, constructs the full URL, and downloads the PDF file to the `downloads` directory.
5. Displays progress and completion messages with colors.

## Example Output

```bash
Downloading: 104-10003-10041.pdf
######################################################################## 100.0%
 Done
Downloading: 104-10004-10143.pdf
######################################################################## 100.0%
 Done
...
Download complete! Files are in the downloads directory.
