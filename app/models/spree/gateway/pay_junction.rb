module Spree
  class Gateway::PayJunction < Gateway
    preference :login, :string
    preference :password, :string

    def provider_class
      ActiveMerchant::Billing::PayJunctionGateway
    end

    def options
      super.merge(test: self.preferred_test_mode)
    end

    # def options_with_test_preference
    #   options_without_test_preference.merge(:test => self.preferred_test_mode)
    # end
    # alias_method_chain :options, :test_preference
  end
end
