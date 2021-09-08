class Arquivo

  def self.loadfile(file)
    CarregarArquivoJob.perform_later(file.path)
  end
end