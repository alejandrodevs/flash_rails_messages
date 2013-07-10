require 'spec_helper'

describe ActionView::Helpers::FlashRailsMessagesHelper do
  let!(:subject){ MockedClass.new }

  describe "#flash_messages" do
    context "when is not defined" do
      it "returns a empty string" do
        expect(subject.send(:flash_messages)).to eql("")
      end
    end

    context "when is defined" do
      it "returns the previous value" do
        subject.send(:flash_messages) << "foo"
        expect(subject.send(:flash_messages)).to eql("foo")
      end
    end
  end
end
