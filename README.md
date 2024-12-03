
# HTML Table Generator Script

This PowerShell script converts a structured input string into a neatly formatted HTML table and saves it to an HTML file. The table can then be viewed in a web browser.

---

## Features

- Converts delimited text into an HTML table.
- Supports styling with simple CSS.
- Saves the output HTML file to the script's directory.
- Automatically opens the generated HTML file in the default browser.

---

## Usage

### Prerequisites
- Windows operating system with PowerShell installed.

### Running the Script

1. Save the script as `GenerateHTMLTable.ps1`.
2. Open a PowerShell terminal.
3. Run the script with the following syntax:

   ```powershell
   .\GenerateHTMLTable.ps1 -InputString "row1_col1,row1_col2;row2_col1,row2_col2"
   ```

### Input Format

- Use a semicolon (`;`) to separate rows.
- Use a comma (`,`) to separate columns within a row.

**Example:**

```plaintext
"Name,Age,Location;Alice,30,New York;Bob,25,San Francisco"
```

### Output

- The script generates an HTML file named `Table.html` in the script's directory.
- The file automatically opens in the default web browser.

---

## Example

### Input Command:
```powershell
.\GenerateHTMLTable.ps1 -InputString "Name,Age,Location;Alice,30,New York;Bob,25,San Francisco"
```

### Output:
An HTML table displayed in the browser:

| Name   | Age | Location         |
|--------|-----|------------------|
| Alice  | 30  | New York         |
| Bob    | 25  | San Francisco    |

---

## Customization

### Modify the CSS
You can update the style block in the script's HTML to change the table's appearance.

```html
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
```

---

## Troubleshooting

- **Missing Input:** If no input string is provided, the script shows a usage message:
  ```plaintext
  Usage: .\GenerateHTMLTable.ps1 'row1_col1,row1_col2;row2_col1,row2_col2'
  ```
- **File Location:** The `Table.html` file is saved in the same directory as the script.

---

## License

This script is released under the MIT License. Feel free to modify and use it as needed.
