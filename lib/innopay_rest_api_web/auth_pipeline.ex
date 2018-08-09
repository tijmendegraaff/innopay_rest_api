defmodule InnopayRestApi.Guardian.AuthPipeline do
    use Guardian.Plug.Pipeline, otp_app: :innopay_rest_api,
    module: InnopayRestApi.Guardian,
    error_handler: InnopayRestApi.AuthErrorHandler
  
    plug Guardian.Plug.VerifyHeader, realm: "Bearer"
    plug Guardian.Plug.EnsureAuthenticated
    plug Guardian.Plug.LoadResource
end