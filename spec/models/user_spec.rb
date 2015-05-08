describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it { should respond_to(:name) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  describe 'after create' do
    let(:user) { described_class.new }
    #let(:stub) user.stub('create_account') }
    it 'fires after create' do
      expect(user).to receive(:create_account)
      user.save
    end

  end

end
