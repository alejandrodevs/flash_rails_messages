require 'spec_helper'

describe ActionView::Helpers::FlashRailsMessagesHelper do
  let!(:subject){ ActionView::Base.new }

  describe "#render_flash_messages" do
    context "when flash does not have messages" do
      it "returns nothing" do
        subject.stub(:flash).and_return({})
        expect(subject.render_flash_messages).to eql("")
      end
    end

    context "when flash has messages" do
      context "when flash type is notice" do
        it "returns the correct message" do
          subject.stub(:flash).and_return({:notice => "notice"})
          expect(subject.render_flash_messages).to eql(alert_element("notice", "info"))
        end
      end

      context "when flash type is success" do
        it "returns the correct message" do
          subject.stub(:flash).and_return({:success => "success"})
          expect(subject.render_flash_messages).to eql(alert_element("success", "success"))
        end
      end

      context "when flash type is alert" do
        it "returns the correct message" do
          subject.stub(:flash).and_return({:alert => "alert"})
          expect(subject.render_flash_messages).to eql(alert_element("alert", "error"))
        end
      end

      context "when has more than one message" do
        it "returns all the correct messages" do
          flash = {:alert => "alert", :notice => "notice"}
          subject.stub(:flash).and_return(flash)
          alerts_expected = alert_element("alert", "error") +
                            alert_element("notice", "info")
          expect(subject.render_flash_messages).to eql(alerts_expected)
        end
      end
    end
  end

  def alert_element msg, type
    subject.content_tag(:div, close_element + msg ,:class => "alert alert-#{type}")
  end

  def close_element
    subject.content_tag(:span, "&times;".html_safe, :class => "close", :"data-dismiss" => "alert")
  end
end
