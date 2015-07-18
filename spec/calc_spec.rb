require 'calc'

RSpec.describe "A calc" do
  before do
    @calc = Calc.new
  end

  # describe は入れ子にできる
  # describe と context は同じだが、「状況」を表わす場合は context を使う
  context "when normal mode" do
    # it / example / specify は全て同じ。英語的な記述にこだわるなら使い分ける
    it 'given 2 and 3, returns 5' do
      @calc.add(2, 3).should eq(5)
    end

    it 'given 5 and 8, returns 13' do
      @calc.add(5, 8).should eq(13)
    end
  end

  context "when graph mode" do
    it "draw graph" # pending
  end
end
