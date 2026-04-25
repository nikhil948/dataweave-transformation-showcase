# DataWeave Transformation Showcase 🔄

Real-world data transformation examples using **MuleSoft DataWeave 2.0** —
the enterprise equivalent of XSLT/map steps in webMethods IS.

## Transformations

| # | Scenario | Input | Output | Key Concepts |
|---|----------|-------|--------|--------------|
| 1 | Nested JSON → Flat JSON | JSON | JSON | Field selectors, upper() |
| 2 | Product Catalog → XML | JSON | XML | map, XML attributes |
| 3 | Employee XML → Filtered JSON | XML | JSON | filter, multi-value selector |
| 4 | Sales Data → CSV Report | JSON | CSV | CSV output, computed fields |
| 5 | Banking Transaction Restructure | JSON | JSON | Date coercion, if/else |
## How to Run

### Prerequisites
- Anypoint Studio OR VS Code with MuleSoft extension
- Java 8+
- Maven 3.x
- Postman (for testing)
### Steps
1. Clone this repo
```bash
   git clone https://github.com/nikhil948/dataweave-transformation-showcase.git```
2. Open project in Anypoint Studio or VS Code
3. Run the application:
```bash
   mvn mule:run
```
4. Test using Postman — send POST requests to:

| Endpoint | Description |
|----------|-------------|
| `http://localhost:8082/transform1` | Nested JSON → Flat JSON |
| `http://localhost:8082/transform2` | JSON Array → XML |
| `http://localhost:8082/transform3` | XML → Filtered JSON |
| `http://localhost:8082/transform4` | JSON → CSV |
| `http://localhost:8082/transform5` | Complex Restructure + Date Format |
## Project Structure
transformations/
├── 01-nested-json-to-flat-json/
│   ├── input.json
│   ├── transform.dwl
│   └── output.json
├── 02-json-array-to-xml/
├── 03-xml-to-json-with-filter/
├── 04-json-to-csv/
└── 05-complex-restructure-date-format/
mule-project/
└── src/main/mule/
└── dataweave-transformation-showcase.xml
## Tools Used
- MuleSoft Anypoint Studio / VS Code
- DataWeave 2.0
- Apache Maven
- Postman         
"

