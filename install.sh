# Clone Aqua Tone repository
git clone https://github.com/michenriksen/aquatone.git

# Change directory to Aqua Tone
cd aquatone

# Initialize Go module
go mod init aquatone

# Update dependencies
go mod tidy


#!/bin/bash

# Update regex.go file in the first location
sed -i 's/for _, target := range xurls.Relaxed().FindAllString(scanner.Text(), -1) {/for _, target := range xurls.Relaxed.FindAllString(scanner.Text(), -1) {/' /root/go/pkg/mod/github.com/michenriksen/aquato>

# Update regex.go file in the second location (assuming it's in the Aqua Tone directory)
sed -i 's/for _, target := range xurls.Relaxed().FindAllString(scanner.Text(), -1) {/for _, target := range xurls.Relaxed.FindAllString(scanner.Text(), -1) {/' parsers/regex.go

# Display the content of regex.go for debugging purposes
echo "Content of /root/go/pkg/mod/github.com/michenriksen/aquatone@v1.7.0/parsers/regex.go:"
cat /root/go/pkg/mod/github.com/michenriksen/aquatone@v1.7.0/parsers/regex.go

echo "Content of parsers/regex.go:"
cat parsers/regex.go

# Try to build Aqua Tone and capture the output
build_output=$(go build 2>&1)

if [ $? -eq 0 ]; then
    # Move the executable to /usr/local/bin
    mv aquatone /usr/local/bin/
    # Display success message
    echo "Script completed successfully!"
else
    # Display an error message and the build output
    echo "Error: Failed to build Aqua Tone."
    echo "Build output:"
    echo "$build_output"
    exit 1
fi


