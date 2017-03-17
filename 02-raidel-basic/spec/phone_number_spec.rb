require_relative '../phone_number'

describe PhoneNumber do
  it "normalizes" do
    expect(PhoneNumber).new("+34-6899/100").noramlized).to eq("346899100")
  end
end