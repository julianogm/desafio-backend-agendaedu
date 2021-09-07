class Arquivo

  def self.loadfile(file)
    filepath = file.path
    CarregarArquivoJob.perform_later(filepath)
  end
end