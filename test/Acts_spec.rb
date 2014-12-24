
describe "my first test" do
 

before :each do
  @jury1 = Jury.new("male")
  @jury2 = Jury.new("female")
  @jury3 = Jury.new("female")
  @act1 = Player.new("male",27)
  @act2 = Player.new("male",67)
  @act3 = Player.new("female",23)
  @act4 = Player.new("female",67)
  @role1 = Role.new("Garry",25..30,"male")
  @role2 = Role.new("Old",65..70,"male")
  @role3 = Role.new("Ron",25..30,"male")
  @role4 = Role.new("Whore",20..25,"female")
end

  it "more(equal) than 21 points because actor young girl and say more than 30 words" do
  expect( @act3.rate_role(@role4,45,226) ).to be >= 21
  end

  it "best role" do
  @act1.rate_role(@role1,29,130)  
  @act1.rate_role(@role3,129,130)  
  expect(@act1.best_role).to eq(:Ron)
  end

  it "total duration" do
  @act1.rate_role(@role1,29,130)
  @act1.rate_role(@role3,45,145)
  expect(@act1.total_duration).to be == (275)
  end

  it "man want play femail role" do
  expect(@act1.may_play?(@role4)).to eq(false)
  end

  it "man want play role much older than him" do
  expect(@act1.may_play?(@role2)).to eq(false)
  end

  it "try to rate role " do
  expect( @act4.rate_role(@role2,45,226) ).to eq (nil)
  end

end
