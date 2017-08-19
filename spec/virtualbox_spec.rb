describe "Chef::Provisioning::Virtualbox" do
  include_context "run with driver", :driver_string => "virtualbox"

  with_chef_server do
    context "the test environment" do
      let(:let_var) { "a let variable in the enclosing context"}

      it "can use a virtualbox_example_resource" do
        expect_converge {
          virtualbox_example_resource "should load the resource with no errors" do
            action :nothing
          end
        }.not_to raise_error
      end

      it "can use machine:allocate to crash on 'Driver does not implement'" do
        expect_converge {
          machine "glug" do
            action :allocate
          end
        }.to raise_error(RuntimeError, /Driver does not implement allocate_machine/)
      end

      it "correctly overrides the default driver (to fail in a different way)" do
        expect_converge {
          machine "glug" do
            driver "bogus_nonexistent_driver"
            action :allocate
          end
        }.to raise_error(LoadError, /cannot load such file -- chef\/provisioning\/driver_init/)
      end

      # it "can use a machine_spec resource" do
      # end

      # it "can use a machine_image resource" do
      # end

      it "can use a let variable in a recipe, no matter what kind of RSpec-ception we engage in" do
        expect_converge {
          log "should be able to use let_var as '#{let_var}' with no error."
        }.not_to raise_error
      end

      it "has access to the driver object" do
        expect(provisioning_driver.driver_url).to start_with("virtualbox:")
      end

      it "has a running Chef-Zero server available" do
        expect_recipe {
          chef_data_bag "spec-#{Time.now.to_i}" do
            action :delete
          end
        }.to be_truthy
      end
    end
  end
end
