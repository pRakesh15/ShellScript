# Function to sanitize URL
sanitize_url() {
    url=$1

    sanitized_url=$(echo "$url" | sed 's/[^[:alnum:]\/]//g' | sed 's/\/$//')
    echo "$sanitized_url"
}

# Function to sanitize title
sanitize_title() {
    title=$1

    sanitized_title=$(echo "$title" | sed 's/[^[:alnum:][:space:]-]//g')
    echo "$sanitized_title"
}

# Function to categorize URLs
categorize_urls() {
    url=$1
    case $url in
        *data/ai*) echo "data/ai";;
        *data/php*) echo "data/php";;
        *data/python*) echo "data/python";;
        *) echo "Other";;
    esac
}

# Input and Output files
input_file="D:\hyscalear\url_descriptions.csv"
output_file="D:\hyscalear\output.csv"


if [ ! -f "$input_file" ]; then
    echo "Error: Input file not found."
    exit 1
fi

# Defining the CSV header for the table
echo "URL,overview,campus,courses,scholarships,admission,placements,results" > "$output_file"

# Read input file line by line
while IFS=, read -r url description; do
    
    sanitized_url=$(sanitize_url "$url")
    sanitized_description=$(sanitize_title "$description")
    
    category=$(categorize_urls "$sanitized_url")
    

    overview=""
    campus=""
    courses=""
    scholarships=""
    admission=""
    placements=""
    results=""

    case $sanitized_description in
        *"Overview"*) overview="$sanitized_description";;
        *"Campus"*) campus="$sanitized_description";;
        *"Courses"*) courses="$sanitized_description";;
        *"Scholarships"*) scholarships="$sanitized_description";;
        *"Admission"*) admission="$sanitized_description";;
        *"Placement"*) placements="$sanitized_description";;
        *"Results"*) results="$sanitized_description";;
        *) ;;
    esac

    echo "$category,$sanitized_url,$overview,$campus,$courses,$scholarships,$admission,$placements,$results" >> "$output_file"
done < "$input_file"

echo "Output CSV generated successfully."
