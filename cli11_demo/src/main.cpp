#include <CLI/CLI.hpp>
#include <iostream>
#include <string>
#include <vector>

int main(int argc, char** argv) {
	CLI::App app{"clitest: a CLI demo using CLI11"};

	//Feature 1: --version
	app.set_version_flag("--version", "1.0.0");

	//Feature 2: Positional arguments
	std::vector<std::string> input_files;
	app.add_option("files", input_files, "Input files")->required()->check(CLI::ExistingFile);

	//Feature 3: Option with value
	std::string output_file = "out.txt";
	app.add_option("-o, --output", output_file, "Output file name");

	//Feature 4: Boolean flag
	bool verbose = false;
	app.add_flag("-v, --verbose", verbose, "Enable verbose output");

	//Feature 5: Required option with default
	int repeat =1;
	app.add_option ("-r, --repeat", repeat, "Repeat count")->required()->check(CLI::PositiveNumber);
	
	//This is where the magical parsing happens!
	CLI11_PARSE(app, argc, argv);


	// Print configuration
	std::cout << "Verbose: " << std::boolalpha << verbose << "\n";
	std::cout << "Output: " << output_file << "\n";
	std::cout << "Repeat: " << repeat << "\n";
	std::cout << "Files:\n";
	for (const auto& file : input_files) {
		std::cout << " - " << file << "\n";
	}

	return 0;
}
