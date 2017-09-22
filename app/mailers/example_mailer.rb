class ExampleMailer < ApplicationMailer
		  default from: "fogarcia10@gmail.com"

  def sample_email(gestione)
    @gestione = gestione
    mail(to: @gestione.correo, subject: 'Sample Email')
  end

end
