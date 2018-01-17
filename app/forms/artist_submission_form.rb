class ArtistSubmissionForm
  include ActiveModel::Model
  # include ActionView::Helpers::FormOptionsHelper 

  attr_accessor :title, :description, :for_grant, :includes_flames, :power, :volunteers, :setup_at

  def initialize(options: {})
    #might actually be nothing to do here
  end

  def prepare_params(params:, user: )
    # massage the params + conditional stuff or w.e

    # validations
    # errors.add(:power, "something")
  end

  def submit
    if valid? #given by active model
      # do whatever hand off
      # pass the new persisted @submission back to controller somehow
      # maybe self.submission (needs getter/setter still)
    else
      false #submit fails
    end
  end


  # input helpers

  def volunteer_options
    [ 
      [true, "Yes"],
      [false, "No"],
      ["custom value", "Would be nice, but not necessary"]
    ]
  end

  def grant_options
    Grant.all.map{ |grant| [grant.id, grant.title]}
  end

end