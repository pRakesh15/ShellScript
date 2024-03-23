

CSV Data Merger(ShellScript)
This is a simple shell script to merge rows in a CSV file based on the endpoint of the URLs.

Usage
Clone the repository:

gut bash
Copy code
git clone https://github.com/your_username/csv-data-merger.git
Navigate to the project directory:

bash
Copy code
cd csv-data-merger
Run the script:

bash
Copy code
./sanitize.sh
Output:
The merged data will be saved in the output.csv file in the project directory.

Requirements
Bash shell environment or git Bash NOTE* im using the git bash for run  the potiicular code.
Example
Suppose you have a CSV file input.csv with the following data:

csv
Copy code
URL,overview,campus,courses,scholarships,admission,placements,results
https://example.com/data/ai,Example AI Overview - Test,AI Campus - Test,Example AI Courses 2023-2024,,,,,
https://example.com/data/php,PHP Institute, India Campus Facilities - PHP,PHP Institute, India Courses & Fees - PHP,PHP Institute, India Scholarships - PHP,PHP Institute, India Admission Process - PHP,,,,
https://example.com/data/python,Python Institute - India overview - Python,Python Institute - India Campus Facilities - Python,Python Institute - India Courses & Fees - Python,Python Institute - India Scholarships - Python,Python Institute - India Results - Python,Python Institute - India Results - Python,
Running the script will generate the following output in output.csv:


License
This project is licensed under the MIT License - see the LICENSE file for details.

