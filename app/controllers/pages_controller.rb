class PagesController < ApplicationController
  before_action :authenticate_user!,
                except: %i[about contact contact_submit blog news faq signup signup_submit login login_submit privacy terms cookies
                           marketplace tutorials changelog status careers partners developers get_started schedule_demo schedule_demo_submit start_free]

  # Public Pages
  def about; end

  def contact; end

  def contact_submit
    # Handle contact form submission
    redirect_to contact_path, notice: 'Message sent successfully!'
  end

  def blog; end

  def news; end

  def faq; end

  def signup; end

  def signup_submit
    # Handle user registration
    redirect_to dashboard_path, notice: 'Account created successfully!'
  end

  def login; end

  def login_submit
    # Handle user login
    redirect_to dashboard_path, notice: 'Logged in successfully!'
  end

  def logout
    # Handle user logout
    redirect_to root_path, notice: 'Logged out successfully!'
  end

  # CTA Section Actions
  def get_started
    # Handle Get Started action - redirect to signup or onboarding
  end

  def schedule_demo
    # Show demo scheduling form
  end

  def schedule_demo_submit
    # Handle demo scheduling form submission
    name = params[:name]
    email = params[:email]
    company = params[:company]
    message = params[:message]

    # In a real application, you would:
    # 1. Save demo request to database
    # 2. Send notification emails
    # 3. Integrate with calendar system

    Rails.logger.info "Demo scheduled: #{name} (#{email}) from #{company} - Message: #{message}"
    redirect_to schedule_demo_path, notice: 'Demo scheduled successfully! We will contact you soon.'
  end

  def start_free
    # Handle Start Free action - redirect to free trial signup
    redirect_to signup_path
  end

  # User Dashboard & Account
  def dashboard; end

  def my_agents; end

  def settings; end

  def settings_update
    # Handle settings update
    redirect_to settings_path, notice: 'Settings updated successfully!'
  end

  def billing; end

  def subscriptions; end

  def billing_update
    # Handle billing update
    redirect_to billing_path, notice: 'Billing information updated!'
  end

  # Platform Features
  def api_docs; end

  def integrations; end

  def templates; end

  def support; end

  def support_ticket
    # Handle support ticket creation
    redirect_to support_path, notice: 'Support ticket created!'
  end

  # Legal & Policy Pages
  def privacy; end

  def terms; end

  def cookies; end

  # Additional Platform Features
  def marketplace; end

  def tutorials; end

  def changelog; end

  def status; end

  def careers; end

  def partners; end

  def developers; end

  def newsletter; end

  def newsletter_subscribe
    email = params[:email]
    recipient = params[:recipient] || 'info@onelastai.com'

    if email.blank?
      render json: { success: false, error: 'Email is required' }, status: 400
      return
    end

    unless valid_email?(email)
      render json: { success: false, error: 'Please enter a valid email address' }, status: 400
      return
    end

    begin
      # In a real application, you would:
      # 1. Save to database
      # 2. Send to email service (like Mailchimp, SendGrid, etc.)
      # 3. Send confirmation email
      # 4. Forward to info@onelastai.com

      # For now, we'll simulate the process
      Rails.logger.info "Newsletter subscription: #{email} -> #{recipient}"

      # Simulate email processing
      sleep(0.5) # Simulate processing time

      # In production, you might use:
      # NotificationMailer.new_subscription(email, recipient).deliver_now
      # NewsletterService.subscribe(email)

      render json: {
        success: true,
        message: "Successfully subscribed! Your subscription has been forwarded to #{recipient}.",
        email:,
        recipient:
      }
    rescue StandardError => e
      Rails.logger.error "Newsletter subscription error: #{e.message}"
      render json: {
        success: false,
        error: 'There was an error processing your subscription. Please try again.'
      }, status: 500
    end
  end

  private

  def authenticate_user!
    # Mock authentication - in real app, implement proper authentication
    # redirect_to login_path unless user_signed_in?
  end

  def valid_email?(email)
    email =~ /\A[\w+\-.]+@[a-z\d-]+(\.[a-z\d-]+)*\.[a-z]+\z/i
  end
end
