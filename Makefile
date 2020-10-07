help:
	@echo "make"
	@echo "    data-validation"
	@echo "        Run data validation"
	@echo "    data-validation-turns"
	@echo "        Run data validation with max history."
	@echo "    cross-validation"
	@echo "        Run nlu cross validation tests."
	@echo "    train"
	@echo "        Train a new model."
	@echo "    test-stories"
	@echo "        Test stories against model."
	@echo "    merge-to-dev"
	@echo "			Merge branch into dev"
	@echo "    upload-model-dev"
	@echo "			Upload model to dev"
	@echo "    merge-to-test"
	@echo "			Merge branch into test"
	@echo "    upload-model-test"
	@echo "			Upload model to test"
	@echo "    merge-to-prod"
	@echo "			Merge branch into prod"
	@echo "    upload-model-prod"
	@echo "			Upload model to prod"

data-validation:
	rasa data validate --debug --fail-on-prediction-errors
data-validation-turns:
	rasa data validate --max-history 3 --fail-on-prediction-errors
cross-validation:
	rasa test nlu -f 5 --cross-validation
train:
	rasa train
test-stories:
	rasa test --fail-on-prediction-errors
merge-to-dev:
	@echo "merge branch into dev"
upload-model-dev:
	@echo "Upload model to dev"
merge-to-test:
	@echo "merge branch into test"
upload-model-test:
	@echo "Upload model to test"
merge-to-prod:
	@echo "merge branch into prod"
upload-model-prod:
	@echo "Upload model to prod