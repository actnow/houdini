# License: AGPL-3.0-or-later WITH Web-Template-Output-Additional-Permission-3.0-or-later
require 'rails_helper.rb'

describe JobTypes::ExportRecurringDonationsFailedJob do
  describe '.perform' do
    it 'calls the correct active mailer' do
      expect(ExportMailer).to receive(:export_recurring_donations_failed_notification).with(1).and_wrap_original{|m, *args|  mailer = double('object'); expect(mailer).to receive(:deliver).and_return(nil); mailer}

      job = JobTypes::ExportRecurringDonationsFailedJob.new(1)
      job.perform
    end
  end
end