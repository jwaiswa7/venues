module VenueStateLogic
  extend ActiveSupport::Concern
  included do
    include AASM

    aasm column: :status do
      state :pending_approval, initial: true # Initial state of the veneue
      state :approved # The venue has been approved
      state :suspended # Suspended will take place if the venue for example hasn't staicfied certian requirements
      state :cancelled # Cancelled if the user opts out of the approval process
    end
  end
end
