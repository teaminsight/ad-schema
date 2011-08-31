require 'assert'

module AD::Schema::AttributeTypes::Flags::UserAccountControl

  module Values
    extend AD::Schema::AttributeTypes::Flags::UserAccountControl
  end

  class BaseTest < Assert::Context
    desc "the flags attribute type as user account control"
    setup do
      attr_ldap_name = :useraccountcontrol
      @value = 544
      @structural_class = Factory.structural_class
      @instance = @structural_class.new
      @flags = AD::Schema::AttributeTypes::Flags.new(@instance, attr_ldap_name, @value)
      @accepted = Values.user_account_control_values[attr_ldap_name]
    end
    subject{ @flags }

    should "have the correct accepted values" do
      @accepted.keys.each do |name|
        assert_includes name, subject.accepted_values
        assert_respond_to name, subject
        assert_respond_to "#{name}=", subject
      end
    end
  end

end