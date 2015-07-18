require 'calc'

RSpec.describe Calc do # class を指定すると new してくれて subject で参照できる
  subject(:calc) {Calc.new} # でも subject が何か自分で書いた方が分かりやすい

  # describe は入れ子にできる
  # describe と context は同じだが、「状況」を表わす場合は context を使う
  context "when normal mode" do
    # it / example / specify は全て同じ。英語的な記述にこだわるなら使い分ける
    it 'given 2 and 3, returns 5' do
      calc.add(2, 3).should eq(5)
    end

    it 'given 5 and 8, returns 13' do
      calc.add(5, 8).should eq(13)
    end

    example 'matchers'do
      5.should eq(5)            # 等しい
      5.should_not eq(4)        # 等しくない
      (5==5).should be true
      5.should be > 0
      5.should be_between(2, 7).inclusive # 2..7
      expect(calc).to respond_to(:add)
    end
  end

  context "when tax is 5%" do
    let(:tax){0.05}
    it "given 100, return 105" do
      calc.price(100, tax).should eq(105)
    end
  end

  context "when tax is 8%" do
    let(:tax){0.08}
    it "given 100, return 108" do
      calc.price(100, tax).should eq(108)
    end
  end

  context "when graph mode" do
    it "draw graph" # pending
  end
end
