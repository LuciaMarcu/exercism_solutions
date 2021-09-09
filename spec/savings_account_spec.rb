require './lib/savings_account/savings_account.rb'

describe SavingsAccount do
    describe "#interest_rate(balance)" do
        it "returns minimal first interest rate" do
            expect(SavingsAccount.interest_rate(0)).to eql(0.5)
        end

        it "returns minimal first interest rate" do
            expect(SavingsAccount.interest_rate(0.0000001)).to eql(0.5)
        end

        it "returns maximal first interest rate" do
            expect(SavingsAccount.interest_rate(999.999)).to eql(0.5)
        end

        it "returns minimal second interest rate" do
            expect(SavingsAccount.interest_rate(1000)).to eql(1.621)
        end

        it "returns maximal second interest rate" do
            expect(SavingsAccount.interest_rate(4999.999)).to eql(1.621)
        end

        it "returns minimal negative interest rate" do
            expect(SavingsAccount.interest_rate(-0.0001)).to eql(-3.213)
        end

        it "returns large negative interest rate" do
            expect(SavingsAccount.interest_rate(-55555.444)).to eql(-3.213)
        end
    end

    describe "#annual_balance_update(balance)" do
        it "returns annual balance update for empty balance" do
            expect(SavingsAccount.annual_balance_update(0)).to eql(0.0)
        end

        it "returns annual balance update for small positive balance" do
            expect(SavingsAccount.annual_balance_update(0.000001)).to eql(0.000001005)
        end

        it "returns annual balance update for positive balance" do
            expect(SavingsAccount.annual_balance_update(1000.0)).to eql(1016.21)
        end

        it "returns annual balance update for huge positive balance" do
            expect(SavingsAccount.annual_balance_update(898124017.826243404425)).to eql(920352587.26744292868451875)
        end

        it "returns annual balance update for negative balance" do
            expect(SavingsAccount.annual_balance_update(-0.123)).to eql(-0.12695199)
        end
    end

    describe "#years_before_desired_balance(current_balance, desired_balance)" do
        it "returns years before desired balance" do
            expect(SavingsAccount.years_before_desired_balance(100.0, 125.8)).to eql(47)
        end

        it "returns years before desired balance" do
            expect(SavingsAccount.years_before_desired_balance(2345.67, 12345.6789)).to eql(85)
        end
    end
end
