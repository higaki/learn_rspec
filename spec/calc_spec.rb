require 'calc'

RSpec.describe "A calc" do
  before do
    @calc = Calc.new
  end

  # describe は入れ子にできる
  # describe と context は同じだが、「状況」を表わす場合は context を使う
  context "when normal mode" do
    it 'given 2 and 3, returns 5' do
      @calc.add(2, 3).to eq(5)
    end

    it 'given 5 and 8, returns 13' do
      @calc.add(5, 8).to eq(13)
    end
  end

  context "when graph mode" do
    it "draw graph" do
    end
  end
end
