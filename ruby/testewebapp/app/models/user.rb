class User < ActiveRecord::Base 
    #valida a presença
    validates_presence_of :email, message: 'não pode ser deixado em branco'
    validates_presence_of :password, message: 'não pode ser deixado em branco'
    #valida o tamanho
    validates_length_of :email, minimum: 10, message: 'deve ter pelo menos 10 caracteres'
    validates_length_of :email, maximum: 260, message: 'deve ter até 260 caracteres'
    validates_length_of :password, minimum: 6, message: 'deve ter pelo menos 6 caracteres'
    
    validates_uniqueness_of :email, message: 'deve ser único'
    
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email,   format: { with: VALID_EMAIL_FORMAT, message: 'com formato invalido!'}, 
                        uniqueness: {case_sensitive: false, message: 'deve ser unico.'}
    before_save { self.email = email.downcase }
    has_secure_password
    
    validates :name,    presence: {message: 'não pode ser deixado em branco'}, 
                        length: {maximum: 50, message: 'deve ter até 50 caracteres'}

end


    #validates_presence_of :nome, message: 'não pode ser deixado em branco'
    #validates_presence_of :email, message: 'não pode ser deixado em branco'
    #validates_presence_of :telefone, message: 'não pode ser deixado em branco'
   
    #validates_length_of :nome, minimum: 2, message: 'deve ter pelo menos 3 caracteres'
    #validates_length_of :email, minimum: 10, message: 'deve ter pelo menos 10 caracteres'
    #validates_length_of :telefone, maximum: 11, message: 'deve ter até 11 caracteres'
    #validates_length_of :endereco, in: 10..100, message: 'deve ter entre 10 e 100 caracteres'
   