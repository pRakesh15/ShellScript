
input_file="D:\hyscalear\output6.csv"


output_file="mergoutput.csv"

# Check if input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file not found."
    exit 1
fi

ai_data=()
php_data=()
python_data=()

while IFS=, read -r url overview campus courses scholarships admission placements results; do
    case "$url" in
        *"data/ai") ai_data+=("$overview" "$campus" "$courses" "$scholarships" "$admission" "$placements" "$results");;
        *"data/php") php_data+=("$overview" "$campus" "$courses" "$scholarships" "$admission" "$placements" "$results");;
        *"data/python") python_data+=("$overview" "$campus" "$courses" "$scholarships" "$admission" "$placements" "$results");;
    esac
done < "$input_file"


echo "URL,overview,campus,courses,scholarships,admission,placements,results" > "$output_file"

# Write AI data to output CSV
echo "AI" >> "$output_file"
for i in "${!ai_data[@]}"; do
    echo "${ai_data[i]}" | tr ' ' ',' >> "$output_file"
done

# Write PHP data to output CSV
echo "PHP" >> "$output_file"
for i in "${!php_data[@]}"; do
    echo "${php_data[i]}" | tr ' ' ',' >> "$output_file"
done

# Write Python data to output CSV
echo "Python" >> "$output_file"
for i in "${!python_data[@]}"; do
    echo "${python_data[i]}" | tr ' ' ',' >> "$output_file"
done

echo "Output CSV generated successfully: $output_file"
