.PHONY: all

ALL_EXERCISES = 01_intro/exercise.md \
		02_information/exercise.md \
		03_codes/exercise.md \
		04_hardware/exercise.md \
		05_digital_logic/exercise.md \
		06_os/exercise.md \
		07_programming/exercise.md \
		08_automata/exercise.md \
		09_computability/exercise.md \
		10_networks/exercise.md \
		11_internet/exercise.md \
		12_data_management/exercise.md \
		13_security/exercise.md \
		14_software_engineering/exercise.md

ALL_TESTATE = 01_intro/testat.md \
		02_information/testat.md \
		03_codes/testat.md \
		04_hardware/testat.md \
		05_digital_logic/testat.md \
		06_os/testat.md \
		07_programming/testat.md \
		08_automata/testat.md \
		09_computability/testat.md \
		10_networks/testat.md \
		11_internet/testat.md \
		12_data_management/testat.md \
		13_security/testat.md \
		14_software_engineering/testat.md

ALL_INSTRUCTIONS = 01_intro/readme.md \
				02_information/readme.md \
				03_codes/readme.md \
				04_hardware/readme.md \
				05_digital_logic/readme.md \
				06_os/readme.md \
				07_programming/readme.md \
				08_automata/readme.md \
				09_computability/readme.md \
				10_networks/readme.md \
				11_internet/readme.md \
				12_data_management/readme.md \
				13_security/readme.md \
				14_software_engineering/readme.md

all: $(ALL_EXERCISES) $(ALL_TESTATE) readme.md

clean:
	rm $(ALL_EXERCISES) $(ALL_TESTATE)

.PHONY: publish
publish: all
	git add .
	git commit -m "Update of exercises"
	git push cogs master

01_intro/exercise.md: 01_intro/exercise-solution.md
	./converter.rb $^ > $@

02_information/exercise.md: 02_information/exercise-solution.md
	./converter.rb $^ > $@

03_codes/exercise.md: 03_codes/exercise-solution.md
	./converter.rb $^ > $@

04_hardware/exercise.md: 04_hardware/exercise-solution.md
	./converter.rb $^ > $@

05_digital_logic/exercise.md: 05_digital_logic/exercise-solution.md
	./converter.rb $^ > $@

06_os/exercise.md: 06_os/exercise-solution.md
	./converter.rb $^ > $@

07_programming/exercise.md: 07_programming/exercise-solution.md
	./converter.rb $^ > $@

08_automata/exercise.md: 08_automata/exercise-solution.md
	./converter.rb $^ > $@

09_computability/exercise.md: 09_computability/exercise-solution.md
	./converter.rb $^ > $@

10_networks/exercise.md: 10_networks/exercise-solution.md
	./converter.rb $^ > $@

11_internet/exercise.md: 11_internet/exercise-solution.md
	./converter.rb $^ > $@

12_data_management/exercise.md: 12_data_management/exercise-solution.md
	./converter.rb $^ > $@

13_security/exercise.md: 13_security/exercise-solution.md
	./converter.rb $^ > $@

14_software_engineering/exercise.md: 14_software_engineering/exercise-solution.md
	./converter.rb $^ > $@

01_intro/testat.md: 01_intro/testat-solution.md
	./converter.rb $^ > $@

02_information/testat.md: 02_information/testat-solution.md
	./converter.rb $^ > $@

03_codes/testat.md: 03_codes/testat-solution.md
	./converter.rb $^ > $@

04_hardware/testat.md: 04_hardware/testat-solution.md
	./converter.rb $^ > $@

05_digital_logic/testat.md: 05_digital_logic/testat-solution.md
	./converter.rb $^ > $@

06_os/testat.md: 06_os/testat-solution.md
	./converter.rb $^ > $@

07_programming/testat.md: 07_programming/testat-solution.md
	./converter.rb $^ > $@

08_automata/testat.md: 08_automata/testat-solution.md
	./converter.rb $^ > $@

09_computability/testat.md: 09_computability/testat-solution.md
	./converter.rb $^ > $@

10_networks/testat.md: 10_networks/testat-solution.md
	./converter.rb $^ > $@

11_internet/testat.md: 11_internet/testat-solution.md
	./converter.rb $^ > $@

12_data_management/testat.md: 12_data_management/testat-solution.md
	./converter.rb $^ > $@

13_security/testat.md: 13_security/testat-solution.md
	./converter.rb $^ > $@

14_software_engineering/testat.md: 14_software_engineering/testat-solution.md
	./converter.rb $^ > $@

readme.md: $(ALL_INSTRUCTIONS) $(ALL_EXERCISES) readme_template.md
	cat readme_template.md > readme.md
	./index.rb >> readme.md
