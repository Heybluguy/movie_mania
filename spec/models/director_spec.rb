require 'rails_helper'

describe Director, type: :model do
  describe "validations" do
    it {is_expected.to validate_presence_of(:name)}

  end
end