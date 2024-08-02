library(qrcode)

url <- "http://localhost:8000/referencias.html"

qrcode::qr_code(url) %>% qrcode::generate_svg(filename = "qrcode_referencias.svg")

---
  
  O problema pode ser causado por várias razões, incluindo configurações de rede e firewall. Aqui estão alguns passos para resolver isso:
  Verificar Configurações de Rede

Certifique-se de que o computador e o celular estão na mesma rede:
  Ambos os dispositivos precisam estar conectados à mesma rede Wi-Fi para que o acesso funcione corretamente.

Obter o Endereço IP Local do Computador:
  Para acessar o servidor a partir de outro dispositivo na mesma rede, você precisa usar o endereço IP local do seu computador, não localhost.
Abra o Prompt de Comando no computador onde o servidor está sendo executado e digite:
  
  cmd

ipconfig

Procure pelo endereço IPv4 da sua conexão de rede. Normalmente, ele estará sob a seção "Adaptador de Rede sem Fio Wi-Fi" ou similar. Algo como 192.168.x.x.

Ajustar a URL do QR Code

Atualize o script para gerar o QR code com o endereço IP local:
  
  {r,
    
    library(qrcode)
    
    # Substitua "192.168.x.x" pelo endereço IP local do seu computador
    ip_address <- "192.168.x.x"
    port <- 8000
    url <- paste0("http://", ip_address, ":", port, "/referencias.html")
    
    # Gerar e salvar o QR code como SVG
    qrcode::qr_code(url) %>% qrcode::generate_svg(filename = "qrcode_referencias.svg")
    
    Ajustar o Firewall
    
    Permitir o Acesso ao Servidor no Firewall do Windows:
      Abra o Painel de Controle.
    Vá para "Sistema e Segurança" > "Firewall do Windows".
    Clique em "Permitir um aplicativo ou recurso pelo Firewall do Windows".
    Certifique-se de que "Python" está marcado para redes privadas. Se não estiver listado, você pode adicioná-lo manualmente.
    
    Desabilitar Temporariamente o Firewall (apenas para teste):
      Vá para "Sistema e Segurança" > "Firewall do Windows".
    Clique em "Ativar ou Desativar o Firewall do Windows".
    Desative o Firewall para redes privadas e tente acessar o servidor. Não se esqueça de reativá-lo após o teste.
    
    Testar o Acesso do Celular
    
    Gerar o QR Code com o novo URL:
      Execute o script atualizado para gerar o QR code.
    
    Escanear o QR Code:
      Escaneie o QR code com o celular.
    O URL deve ser algo como http://192.168.x.x:8000/referencias.html.
    
    Abrir o Navegador:
      Abra o navegador do celular e verifique se a página é carregada corretamente.
    
    Passos Adicionais
    
    Se ainda não funcionar, verifique:
      
      Conexão Wi-Fi: Certifique-se de que ambos os dispositivos estão conectados à mesma rede Wi-Fi.
    Configurações do Roteador: Alguns roteadores têm configurações de isolamento de cliente, o que impede que dispositivos na mesma rede se comuniquem. Verifique as configurações do seu roteador para garantir que isso não esteja ativado.