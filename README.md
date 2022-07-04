# csvcubed-demo
Demonstration data for csvcubed

## Sweden at Eurovision
The Sweden at Eurovision data sets are used extensively within csvcubed documentation; the data provides several challenges for well structured FAIR expression of Sweden's track record in the song contest.

### `sweden_at_eurovision_no_missing/`
This dataset is described to a minimal standard, to demonstrate the assumptions made by csvcubed to help iterative development of data. There are three output folders progressively making a better described CSV-W.

1. The output folder `convetion_out/` shows the results of a minimal build command
```bash
csvcubed build sweden_at_eurovision_no_missing.csv
```
2. The output folder `metadata_out/` shows the results of a build command when metadata describing the whole data set is provided
```bash
csvcubed build sweden_at_eurovision_no_missing.csv --config metadata_only.json
```
3. The output folder `linked_out/` shows the results of a build command when metadata describing the whole dataset is provided along with a column being described using a template
```bash
csvcubed build sweden_at_eurovision_no_missing --config linked_data.json
```


### `swden_at_eurovision_full/`
This dataset is described to a standard which contains links to year representations, as well as covers missing observations. This is a well described dataset which meets FAIR requirements in CSV-W format.

The output folder `out/` contains the output of the following build command:
```bash
csvcubed build sweden_at_eurovision_full.csv --config full.json
```