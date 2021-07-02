# frozen_string_literal: true

require "spec_helper"

RSpec.describe Neoway::Auth do
  describe ".configure" do
    before do
      Neoway.configuration = nil
      ENV.clear
    end

    subject { Neoway.configuration }

    context "when configuration is defined" do
      before do
        Neoway.configure do |config|
          config.application_name = "application_name"
          config.application_secret = "application_secret"
        end
      end

      it { expect(subject).not_to be_nil }

      it { expect(subject.application_name).to eq("application_name") }

      it { expect(subject.application_secret).to eq("application_secret") }
    end

    context "when configuration is not defined" do
      it { expect(subject).not_to be_nil }

      it { expect(subject.application_name).to be_nil }

      it { expect(subject.application_secret).to be_nil }
    end

    describe "I18n calls" do
      it { expect(I18n.default_locale).to eq(:en) }

      it { expect(I18n.config.available_locales).to contain_exactly(:en, :'pt-BR') }
    end
  end
end
