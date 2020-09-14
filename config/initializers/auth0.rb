Rails.application.config.middleware.use OmniAuth::Builder do
    provider(
      :auth0,
      'DWFu4gYXimJriMG50Xn6468bOhoW7NtY',
      'AyVRrw4PsZ8Ij-cognpsdAiRAeaqhz3TxIfEMgDoXU85UejgsB-19d3gBKNTt3r4',
      'richardadev.us.auth0.com',
      callback_path: '/auth/auth0/callback',
      authorize_params: {
        scope: 'openid email profile'
      }
    )
  end