# Chef :fork_and_knife:

A configuration management and orchestrating tool.

### Recipe :pencil:

A recipe is a provisioning script which uses pure-Ruby with its own methods, and has its domain-specific language (DSL)

These live in the recipes folder < default.rb >

### Cookbooks :book:

Hold many recipes


### Test kitchen

- Creates and environment for testing the cookbook
- Runs the chef code against the environment to provision it
- Runs unit tests and integration test suites to ensure that the environment is correct (Test the environment)
- closes everything down

### Commands to use Kitchen
```
 $ kitchen create (creates a virtual machine)
 $ kitchen converge (run your recipes/provision)
 $ kitchen destroy (destroys virtual machine)
 $ kitchen setup (setup kitchen to run test)
 $ kitchen verify (will run tests on newly created environment)
 $ kitchen test (create, coverage, setup, verify and destroy)

```
