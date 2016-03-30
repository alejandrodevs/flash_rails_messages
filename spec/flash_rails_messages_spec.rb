require 'spec_helper'

describe FlashRailsMessages::Helper do
  let!(:subject){ ActionView::Base.new }

  describe '#render_flash_messages' do
    context 'when flash does not have messages' do
      it 'returns nothing' do
        allow(subject).to receive(:flash).and_return({})
        expect(subject.render_flash_messages).to eql('')
      end
    end

    context 'when flash has messages' do
      context 'when flash type is notice' do
        it 'returns the correct message' do
          allow(subject).to receive(:flash).and_return({ notice: 'notice' })
          alert_expected = alert_element('notice', 'info')
          expect(subject.render_flash_messages).to eql(alert_expected)
        end
      end

      context 'when flash type is success' do
        it 'returns the correct message' do
          allow(subject).to receive(:flash).and_return({ success: 'success' })
          alert_expected = alert_element('success', 'success')
          expect(subject.render_flash_messages).to eql(alert_expected)
        end
      end

      context 'when flash type is alert' do
        it 'returns the correct message' do
          allow(subject).to receive(:flash).and_return({ alert: 'alert' })
          alert_expected = alert_element('alert', 'error')
          expect(subject.render_flash_messages).to eql(alert_expected)
        end
      end

      context 'when flash type is error' do
        it 'returns the correct message' do
          allow(subject).to receive(:flash).and_return({ error: 'error' })
          alert_expected = alert_element('error', 'error')
          expect(subject.render_flash_messages).to eql(alert_expected)
        end
      end

      context 'when has more than one message' do
        it 'returns all the correct messages' do
          allow(subject).to receive(:flash).and_return({ alert: 'alert', notice: 'notice' })
          alerts_expected = alert_element('alert', 'error') +
                            alert_element('notice', 'info')
          expect(subject.render_flash_messages).to eql(alerts_expected)
        end
      end
    end
  end

  def alert_element msg, klass
    subject.content_tag(:div, close_element + msg.html_safe, class: 'alert')
  end

  def close_element
    subject.content_tag(:a, '&times;'.html_safe, class: 'close', href: '#')
  end
end
