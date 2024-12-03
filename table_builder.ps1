param (
    [string]$InputString
)

function Build-HTMLTable {
    param (
        [string]$InputString
    )

    # Split the input into rows using ';' as a delimiter
    $rows = $InputString -split ';'

    # Initialize the HTML structure
    $html = @"
<html>
<head>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
        }
        table, th, td {
            border: 1px solid black;
            text-align: center;
            padding: 8px;
        }
    </style>
</head>
<body>
    <table>
"@

    # Add rows to the table
    foreach ($row in $rows) {
        $html += "        <tr>`n"
        $columns = $row -split ','
        foreach ($column in $columns) {
            $html += "            <td>$column</td>`n"
        }
        $html += "        </tr>`n"
    }

    # Close the HTML structure
    $html += @"
    </table>
</body>
</html>
"@

    # Return the HTML as output
    return $html
}

# Check if InputString is provided
if (-not $InputString) {
    Write-Host "Usage: .\Untitled2.ps1 'row1_col1,row1_col2;row2_col1,row2_col2'"
    exit 1
}

# Generate the HTML table
$htmlTable = Build-HTMLTable -InputString $InputString

# Save the HTML to a file and open it
$outputPath = "$PSScriptRoot\Table.html"
$htmlTable | Set-Content -Path $outputPath
Write-Host "HTML table created at: $outputPath"
Start-Process $outputPath
