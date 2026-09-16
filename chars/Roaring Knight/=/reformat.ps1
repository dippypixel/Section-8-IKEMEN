# Define input and output file paths
$inputFile = "main.cns"
$outputFile = "mainre.cns"
$startPoint = "[statedef 170]"
$startProcessing = $false
$previousLineEmpty = $false

# Initialize the output file
Set-Content -Path $outputFile -Value ""

# Read the file line by line
Get-Content $inputFile | ForEach-Object {
    $line = $_

    # Check for the start point in the file
    if ($line -eq $startPoint) {
        $startProcessing = $true
        Add-Content -Path $outputFile -Value $line
        return
    }

    # Process all lines, even before the [statedef 170] point
    if (-not $startProcessing) {
        Add-Content -Path $outputFile -Value $line
        return
    }

    # Only apply formatting and state rewriting after [statedef 170]
    if ($startProcessing) {
        # Skip comments starting with ';'
        if ($line.TrimStart().StartsWith(";")) {
            return
        }

        # Handle empty lines and remove double new lines
        if ($line.Trim() -eq "") {
            if (-not $previousLineEmpty) {
                # If the previous line was not empty, keep this line (single newline)
                Add-Content -Path $outputFile -Value ""
            }
            $previousLineEmpty = $true
            return
        } else {
            # Reset the flag when a non-empty line is found
            $previousLineEmpty = $false
        }

        # Remove double spaces
        while ($line -match "  ") {
            $line = $line -replace "  ", " "
        }

        # Apply space rule for '=' but skip '>=', '<=', '!=', and ':='
        $line = $line -replace "(?<![<>!:])\s*=\s*(?![=])", " = "

        # Remove spaces before commas, add space after commas
        $line = $line -replace "\s*,\s*", ", "

        # Remove lines containing 'juggle = (number)'
        if ($line -match "^juggle\s*=\s*\d+") {
            return
        }

        # Convert to lowercase
        $line = $line.ToLower()

        # Rewrite any line that matches [state <anything>] to [state 0]
        if ($line -match "^\[state\s+[^\]]+\]") {
            $line = "[state 0]"
        }

        # Write the modified line to the output file
        Add-Content -Path $outputFile -Value $line
    }
}

Write-Host "Reformatting complete. Output saved to $outputFile"
