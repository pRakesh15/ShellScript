
url_descriptions=(
    "https://example.com/data/ai Example AI Overview - Test"
    "https://example.com/data/ai/campus Example AI Campus - Test"
    "https://example.com/data/ai/courses Example AI Courses 2023-2024"
    "https://example.com/data/php/campus PHP Institute, India Campus Facilities – PHP"
    "https://example.com/data/php/courses PHP Institute, India Courses & Fees – PHP"
    "https://example.com/data/php/scholarships PHP Institute, India Scholarships – PHP"
    "https://example.com/data/php/admission PHP Institute, India Admission Process – PHP"
    "https://example.com/data/python Python Institute - India overview – Python"
    "https://example.com/data/python/campus Python Institute - India Campus Facilities – Python"
    "https://example.com/data/python/courses Python Institute - India Courses & Fees – Python"
    "https://example.com/data/python/scholarships Python Institute - India Scholarships – Python"
    "https://example.com/data/python/placement Python Institute - India Results – Python"
    "https://example.com/data/python/results Python Institute - India Results – Python"
)


echo "URL,Description" > url_descriptions.csv


for desc in "${url_descriptions[@]}"; do

    url=$(echo "$desc" | awk '{print $1}')
    description=$(echo "$desc" | cut -d ' ' -f 2-)

    echo "$url,$description" >> url_descriptions.csv
done

echo "CSV file generated successfully."
