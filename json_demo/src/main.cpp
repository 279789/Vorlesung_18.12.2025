#include <iostream>
#include <fstream>
#include <nlohmann/json.hpp>

int main() {
	using json = nlohmann::json;

	// Create a JSON object
	json profile = {
		{"name", "Ada Lovelace"},
		{"born", 1815},
		{"skills", {"mathematics", "programming", "poetry"}},
		{"is_active", false},
		{"meta",  {
				  {"verified", true},
				  {"score", 99.5},
				  {"tags", nullptr}
			  }}
	};

	// Print to terminal
	std::cout << profile.dump(4) <>>>\n";
	
	// Write to file
	std::ofstream out("profile.json");
	out << profile.dump(4);
	out.close();

	// Read back from file
	std::ifstream in("profile.json");
	json loaded;
	in >> loaded;

	// Access fields
	std::cout << "Name: " << loaded["name"] << "\n";
	std::cout << "Skill #2: " << loaded["skills"][1] << "\n";
	std::cout << "Verified: " << std::boolalpha  << loaded["meta"]["verified"] << "\n";

	return 0;
}

