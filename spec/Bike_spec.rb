require_relative '../lib/Bike'

describe Bike do
  it { should respond_to (:working?) }

  it 'check if bike is working' do
    expect(subject.working?).to eq true
  end

  it 'should allow a user to report the bike as broken' do
    subject.report_broken
    expect(subject.working?).to be false  
  end

end
