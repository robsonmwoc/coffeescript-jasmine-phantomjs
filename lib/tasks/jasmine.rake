desc "Run all JavaScript specs with Istanbul"
task :jscov => :environment do
  # Run Jasmine tests with code coverage on and generate Jenkins-compatible Jasmine code coverage report file.
  # Must run assets:clean first to force re-compilation.
  # Make sure to fail this task if there are unit test failures.
  # For some reason does not work if run as separate exec's, so combine into one.
  exec('rake assets:clean; guard-jasmine --coverage --coverage-html --coverage-summary; \
        code=$?; if [ $code != "0" ]; then exit $code; fi; istanbul report cobertura')
end