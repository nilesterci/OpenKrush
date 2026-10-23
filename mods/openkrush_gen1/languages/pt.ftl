## MapOptions, MissionBrowserLogic
slowest = Muito lenta
slower = Lenta
normal = Normal
fast = Rápida
faster = Muito rápida
fastest = Máxima

## Server Orders
custom-rules = Este mapa tem regras personalizadas. A experiência de jogo pode mudar.
map-bots-disabled = Os bots foram desativados neste mapa.
two-humans-required = Este servidor exige pelo menos dois jogadores humanos para iniciar uma partida.
unknown-server-command = Comando de servidor desconhecido: { $command }
only-only-host-start-game = Apenas o anfitrião pode iniciar o jogo.
no-start-until-required-slots-full = Não é possível iniciar até que as vagas obrigatórias estejam preenchidas.
no-start-without-players = Não é possível iniciar o jogo sem jogadores.
insufficient-enabled-spawnPoints = Não é possível iniciar até que mais pontos de início sejam ativados.
malformed-command = Comando { $command } malformado
state-unchanged-ready = Não é possível mudar o estado enquanto estiver marcado como pronto.
invalid-faction-selected = Facção inválida selecionada: { $faction }
supported-factions = Valores aceitos: { $factions }
state-unchanged-game-started = Não é possível mudar o estado com o jogo iniciado. ({ $command })
requires-host = Apenas o anfitrião pode fazer isso.
invalid-bot-slot = Não é possível adicionar bots a uma vaga ocupada por outro cliente.
invalid-bot-type = Tipo de bot inválido.
only-host-change-map = Apenas o anfitrião pode mudar o mapa.
lobby-disconnected = { $player } saiu.
player-disconnected = { $player } desconectou.
player-team-disconnected = { $player } (Equipe { $team }) desconectou.
observer-disconnected = { $player } (Espectador) desconectou.
unknown-map = O mapa não foi encontrado no servidor.
searching-map = Procurando o mapa no Resource Center...
only-host-change-configuration = Apenas o anfitrião pode mudar a configuração.
changed-map = { $player } mudou o mapa para { $map }
value-changed = { $player } mudou { $name } para { $value }.
you-were-kicked = Você foi expulso do servidor.
kicked = { $admin } expulsou { $player } do servidor.
temp-ban = { $admin } baniu temporariamente { $player } do servidor.
only-host-transfer-admin = Apenas administradores podem transferir a administração para outro jogador.
only-host-move-spectators = Apenas o anfitrião pode mover jogadores para espectadores.
empty-slot = Ninguém nessa vaga.
move-spectators = { $admin } moveu { $player } para os espectadores.
nick = { $player } agora se chama { $name }.
player-dropped = Um jogador foi desconectado por inatividade.
connection-problems = { $player } está com problemas de conexão.
timeout = { $player } foi desconectado por inatividade.
timeout-in =
    { $timeout ->
        [one] { $player } será desconectado em { $timeout } segundo.
       *[other] { $player } será desconectado em { $timeout } segundos.
    }
error-game-started = O jogo já começou.
requires-password = O servidor exige uma senha.
incorrect-password = Senha incorreta.
incompatible-mod = O servidor está rodando um mod incompatível.
incompatible-version = O servidor está rodando uma versão incompatível.
incompatible-protocol = O servidor está usando um protocolo incompatível.
banned = Você foi banido do servidor.
temp-banned = Você foi banido temporariamente do servidor.
full = A partida está cheia.
joined = { $player } entrou no jogo.
new-admin = { $player } agora é o administrador.
option-locked = { $option } não pode ser alterado.
invalid-configuration-command = Comando de configuração inválido.
admin-option = Apenas o anfitrião pode definir essa opção.
number-teams = Não foi possível entender o número de equipes: { $raw }
admin-kick = Apenas o anfitrião pode expulsar jogadores.
kick-none = Ninguém nessa vaga.
no-kick-game-started = Depois que o jogo começa, só espectadores podem ser expulsos.
admin-clear-spawn = Apenas administradores podem limpar pontos de início.
spawn-occupied = Você não pode ocupar o mesmo ponto de início que outro jogador.
spawn-locked = Esse ponto de início está reservado para outra vaga.
admin-lobby-info = Apenas o anfitrião pode definir as informações do lobby.
invalid-lobby-info = Informações de lobby inválidas.
player-color-terrain = A cor foi ajustada para ficar menos parecida com o terreno.
player-color-player = A cor foi ajustada para ficar menos parecida com a de outro jogador.
invalid-player-color = Não foi possível definir uma cor válida. Uma cor aleatória foi escolhida.
invalid-error-code = Falha ao interpretar a mensagem de erro.
master-server-connected = Comunicação com o servidor principal estabelecida.
master-server-error = "Falha na comunicação com o servidor principal."
game-offline = A partida não foi anunciada online.
no-port-forward = A porta do servidor não está acessível pela internet.
blacklisted-title = O nome do servidor contém uma palavra proibida.
requires-forum-account = O servidor exige uma conta no fórum do OpenRA.
no-permission = Você não tem permissão para entrar neste servidor.
slot-closed = Sua vaga foi fechada pelo anfitrião.

## Server
game-started = Jogo iniciado

## PlayerMessageTracker
chat-temp-disabled =
    { $remaining ->
        [one] O chat está desativado. Tente de novo em { $remaining } segundo.
       *[other] O chat está desativado. Tente de novo em { $remaining } segundos.
    }

## ActorEditLogic
duplicate-actor-id = ID de ator duplicado
enter-actor-id = Digite um ID de ator
owner = Dono

## ActorSelectorLogic
type = Tipo

## CommonSelectorLogic
search-results = Resultados da busca
multiple = Vários

## SaveMapLogic
unpacked = descompactado

save-map-failed-title = Falha ao salvar o mapa
save-map-failed-prompt = Veja o debug.log para mais detalhes.
save-map-failed-accept = OK

overwrite-map-failed-title = Atenção
overwrite-map-failed-prompt = Ao salvar, você vai sobrescrever
    um mapa que já existe.
overwrite-map-failed-confirm = Salvar

overwrite-map-outside-edit-title = Atenção
overwrite-map-outside-edit-prompt = "O mapa foi editado fora do editor.
    Ao salvar, você pode perder alterações
overwrite-map-outside-edit-confirm = Salvar

## GameInfoLogic
objectives = Objetivos
briefing = Briefing
options = Opções
debug = Depuração
chat = Chat

## GameInfoObjectivesLogic, GameInfoStatsLogic
in-progress = Em andamento
accomplished = Concluído
failed = Falhou

## GameInfoStatsLogic
mute = Silenciar este jogador
unmute = Reativar som deste jogador

## GameInfoStatsLogic
gone = Saiu

kick-title = Expulsar { $player }?
kick-prompt = Ele não poderá voltar a esta partida.
kick-accept = Expulsar

## GameTimerLogic
paused = Pausado
max-speed = Velocidade máxima
speed = Velocidade { $percentage }%
complete = { $percentage }% concluído

## LobbyLogic, InGameChatLogic
chat-disabled = Chat desativado
chat-availability =
    { $seconds ->
        [one] Chat disponível em { $seconds } segundo...
        *[other] Chat disponível em { $seconds } segundos...
    }

## IngameMenuLogic
leave = Sair
abort-mission = Abandonar missão

leave-mission-title = Sair da missão
leave-mission-prompt = Sair desta partida e voltar ao menu?
leave-mission-accept = Sair
leave-mission-cancel = Ficar

restart-button = Reiniciar

restart-mission-title = Reiniciar
restart-mission-prompt = Tem certeza de que quer reiniciar?
restart-mission-accept = Reiniciar
restart-mission-cancel = Ficar

surrender-button = Render-se

surrender-title = Render-se
surrender-prompt = Tem certeza de que quer se render?
surrender-accept = Render-se
surrender-cancel = Ficar

load-game-button = Carregar jogo
save-game-button = Salvar jogo

music-button = Música

settings-button = Configurações

return-to-map = Voltar ao mapa
resume = Continuar

save-map-button = Salvar mapa

error-max-player-title = Erro: limite de jogadores excedido
error-max-player-prompt = Há jogadores demais definidos ({ $players }/{ $max }).
error-max-player-accept = Voltar

exit-map-button = Sair do editor

exit-map-editor-title = Sair do editor de mapas
exit-map-editor-prompt-unsaved = Sair e perder todas as alterações não salvas?
exit-map-editor-prompt-deleted = O mapa pode ter sido apagado fora do editor.
exit-map-editor-confirm-anyway = Sair mesmo assim
exit-map-editor-confirm = Sair

## IngamePowerBarLogic
## IngamePowerCounterLogic
power-usage = Uso de energia: { $usage }/{ $capacity }
infinite-power = Infinita

## IngameSiloBarLogic
## IngameCashCounterLogic
silo-usage = Uso dos silos: { $usage }/{ $capacity }

## ObserverShroudSelectorLogic
camera-option-all-players = Todos os jogadores
camera-option-disable-shroud = Desativar névoa
camera-option-other = Outro

## ObserverStatsLogic
information-none = Informação: nenhuma
basic = Básico
economy = Economia
production = Produção
support-powers = Poderes especiais
combat = Combate
army = Exército
earnings-graph = Ganhos (gráfico)
army-graph = Exército (gráfico)

## WorldTooltipLogic
unrevealed-terrain = Terreno inexplorado

## DownloadPackageLogic
downloading = Baixando { $title }
fetching-mirror-list = Buscando lista de servidores de download...
downloading-from = Baixando de { $host } { $received } { $suffix }
downloading-from-progress = Baixando de { $host } { $received } / { $total } { $suffix } ({ $progress }%)
unknown-host = servidor desconhecido
verifying-archive = Verificando arquivo...
archive-validation-failed = Falha na verificação do arquivo
extracting = Extraindo...
extracting-entry = Extraindo { $entry }
archive-extraction-failed = Falha ao extrair o arquivo
mirror-selection-failed = Download online indisponível. Instale a partir de uma fonte original.

## InstallFromSourceLogic
detecting-sources = Detectando unidades
checking-sources = Verificando fontes
searching-source-for = Procurando { $title }
content-package-installation = Os seguintes pacotes de conteúdo serão instalados:
game-sources = Fontes do jogo
digital-installs = Instalações digitais
game-content-not-found = Conteúdo do jogo não encontrado
alternative-content-sources = Insira ou instale uma das seguintes fontes de conteúdo:
installing-content = Instalando conteúdo
copying-filename = Copiando { $filename }
copying-filename-progress = Copiando { $filename } ({ $progress }%)
installation-failed = Falha na instalação
check-install-log = Veja o install.log na pasta de logs para mais detalhes.
extracting-filename = Extraindo { $filename }
extracting-filename-progress = Extraindo { $filename } ({ $progress }%)
cancel = Cancelar
retry = Tentar de novo

## InstallFromSourceLogic, LobbyLogic
back = Voltar

# InstallFromSourceLogic, ModContentPromptLogic
continue = Continuar

## ModContentLogic
manual-install = Instalação manual

## ModContentPromptLogic
quit = Sair

## KickClientLogic
kick-client = Expulsar { $player }?

## KickSpectatorsLogic
kick-spectators =
    { $count ->
        [one] Tem certeza de que quer expulsar um espectador?
       *[other] Tem certeza de que quer expulsar { $count } espectadores?
    }

## LobbyLogic
add = Adicionar
remove = Remover
configure-bots = Configurar bots
n-teams = { $count } equipes
humans-vs-bots = Humanos contra bots
free-for-all = Todos contra todos
configure-teams = Configurar equipes

## LobbyLogic, CommonSelectorLogic, InGameChatLogic
all = Todos

## InputSettingsLogic, CommonSelectorLogic
none = Nenhum

## LobbyLogic, IngameChatLogic
team = Equipe

## LobbyOptionsLogic
not-available = Indisponível

## LobbyUtils
slot = Vaga
open = Aberta
closed = Fechada
bots = Bots

# LobbyUtils, Server
bots-disabled = Bots desativados

## MapPreviewLogic
connecting = Conectando...
downloading-map = Baixando { $size } kB
downloading-map-progress = Baixando { $size } kB ({ $progress }%)
retry-install = Tentar instalar de novo
retry-search = Buscar de novo
## also MapChooserLogic
created-by = Criado por { $author }

## SpawnSelectorTooltipLogic
disabled-spawn = Ponto de início desativado
available-spawn = Ponto de início disponível

## DisplaySettingsLogic
close = Perto
medium = Médio
far = Longe
furthest = Mais longe

windowed = Janela
legacy-fullscreen = Tela cheia (antigo)
fullscreen = Tela cheia

display = Monitor { $number }

show-on-damage = Mostrar ao sofrer dano
always-show = Sempre mostrar

automatic = Automático
manual = Manual

## DisplaySettingsLogic, InputSettingsLogic
disabled = Desativado

## DisplaySettingsLogic, InputSettingsLogic, IntroductionPromptLogic
classic = Clássico
modern = Moderno
standard = Padrão

## DisplaySettingsLogic, IntroductionPromptLogic
inverted = Invertido
joystick = Joystick

alt = Alt
ctrl = Ctrl
meta = Meta
shift = Shift

## SettingsLogic
settings-save-title = Reinício necessário
settings-save-prompt = Algumas mudanças só serão aplicadas
    depois que o jogo for reiniciado.
settings-save-cancel = Continuar

restart-title = Reiniciar agora?
restart-prompt = Algumas mudanças só serão aplicadas
    depois que o jogo for reiniciado. Reiniciar agora?
restart-accept = Reiniciar agora
restart-cancel = Reiniciar depois

reset-title = Redefinir { $panel }
reset-prompt = Tem certeza de que quer redefinir
    todas as configurações deste painel?
reset-accept = Redefinir
reset-cancel = Cancelar

## AssetBrowserLogic
all-packages = Todos os pacotes
length-in-seconds = { $length } s

## ConnectionLogic
connecting-to-endpoint = Conectando a { $endpoint }...
could-not-connect-to-target = Não foi possível conectar a { $target }
unknown-error = Erro desconhecido
password-required = Senha necessária
connection-failed = Falha na conexão
mod-switch-failed = Falha ao trocar de mod.

## GameSaveBrowserLogic
rename-save-title = Renomear jogo salvo
rename-save-prompt = Digite um novo nome de arquivo:
rename-save-accept = Renomear

delete-save-title = Apagar o jogo salvo selecionado?
delete-save-prompt = Apagar '{ $save }'
delete-save-accept = Apagar

delete-all-saves-title = Apagar todos os jogos salvos?
delete-all-saves-prompt =
    { $count ->
        [one] Apagar { $count } jogo salvo.
       *[other] Apagar { $count } jogos salvos.
    }
delete-all-saves-accept = Apagar todos

save-deletion-failed = Falha ao apagar o jogo salvo '{ $savePath }'. Veja os logs para mais detalhes.

overwrite-save-title = Sobrescrever jogo salvo?
overwrite-save-prompt = Sobrescrever { $file }?
overwrite-save-accept = Sobrescrever

## MainMenuLogic
loading-news = Carregando notícias
news-retrival-failed = Falha ao buscar notícias: { $message }
news-parsing-failed = Falha ao ler notícias: { $message }

## MapChooserLogic
all-maps = Todos os mapas
no-matches = Nenhum resultado
player-players =
    { $players ->
        [one] { $players } jogador
       *[other] { $players } jogadores
    }
map-size-huge = (Enorme)
map-size-large = (Grande)
map-size-medium = (Médio)
map-size-small = (Pequeno)

map-deletion-failed = Falha ao apagar o mapa '{ $map }'. Veja o debug.log para mais detalhes.

delete-map-title = Apagar mapa
delete-map-prompt = Apagar o mapa '{ $title }'?
delete-map-accept = Apagar

delete-all-maps-title = Apagar mapas
delete-all-maps-prompt = Apagar todos os mapas desta página?
delete-all-maps-accept = Apagar

order-maps-players = Jogadores
order-maps-date = Data do mapa

## MissionBrowserLogic
no-video-title = Vídeo não instalado
no-video-prompt = Os vídeos do jogo podem ser instalados pelo
    menu "Gerenciar conteúdo" na escolha de mods.
no-video-cancel = Voltar

cant-play-title = Não foi possível reproduzir o vídeo
cant-play-prompt = Algo deu errado durante a reprodução do vídeo.
cant-play-cancel = Voltar

## MusicPlayerLogic
sound-muted = O áudio foi silenciado nas configurações.
no-song-playing = Nenhuma música tocando

## MuteHotkeyLogic
audio-muted = Áudio silenciado.
audio-unmuted = Áudio reativado.

## PlayerProfileLogic
loading-player-profile = Carregando perfil do jogador...
loading-player-profile-failed = Falha ao carregar o perfil do jogador.

## ReplayBrowserLogic
duration = Duração: { $time }
singleplayer = Um jogador
multiplayer = Multijogador

victory = Vitória
defeat = Derrota

today = Hoje
last-week = Últimos 7 dias
last-fortnight = Últimos 14 dias
last-month = Últimos 30 dias

replay-duration-very-short = Menos de 5 min
replay-duration-short = Curta (10 min)
replay-duration-medium = Média (30 min)
replay-duration-long = Longa (60+ min)

rename-replay-title = Renomear replay
rename-replay-prompt = Digite um novo nome de arquivo:
rename-replay-accept = Renomear

delete-replay-title = Apagar o replay selecionado?
delete-replay-prompt = Apagar o replay { $replay }?
delete-replay-accept = Apagar

delete-all-replays-title = Apagar todos os replays selecionados?
delete-all-replays-prompt =
    { $count ->
        [one] Apagar { $count } replay.
       *[other] Apagar { $count } replays.
    }
delete-all-replays-accept = Apagar todos

replay-deletion-failed = Falha ao apagar o replay '{ $file }'. Veja o debug.log para mais detalhes.

## ReplayUtils
incompatible-replay-title = Replay incompatível
incompatible-replay-prompt = Não foi possível ler os dados do replay.
incompatible-replay-accept = OK
-incompatible-replay-recorded = Ele foi gravado com
incompatible-replay-unknown-version = { -incompatible-replay-recorded } uma versão desconhecida.
incompatible-replay-unknown-mod = { -incompatible-replay-recorded } um mod desconhecido.
incompatible-replay-unavailable-mod = { -incompatible-replay-recorded } um mod indisponível: { $mod }.
incompatible-replay-incompatible-version = { -incompatible-replay-recorded } uma versão incompatível:
    { $version }.
incompatible-replay-unavailable-map = { -incompatible-replay-recorded } um mapa indisponível:
    { $map }.

## ServerCreationLogic
internet-server-nat-A = Servidor de internet (UPnP/NAT-PMP
internet-server-nat-B-enabled = Ativado
internet-server-nat-B-not-supported = Não suportado
internet-server-nat-B-disabled = Desativado
internet-server-nat-C = ):

local-server = Servidor local:

server-creation-failed-prompt = Não foi possível escutar na porta { $port }
server-creation-failed-port-used = Verifique se a porta já está em uso.
server-creation-failed-error = Erro: "{ $message }" ({ $code })
server-creation-failed-title = Falha ao criar o servidor
server-creation-failed-cancel = Voltar

## ServerListLogic
players-online =
    { $players ->
        [one] { $players } jogador online
       *[other] { $players } jogadores online
    }

search-status-failed = Falha ao buscar a lista de servidores.
search-status-no-games = Nenhuma partida encontrada. Tente mudar os filtros.
no-server-selected = Nenhum servidor selecionado

map-status-searching = Procurando...
map-classification-unknown = Mapa desconhecido

players-label =
    { $players ->
        [0] Nenhum jogador
        [one] Um jogador
       *[other] { $players } jogadores
    }

bots-label =
    { $bots ->
        [0] Nenhum bot
        [one] Um bot
       *[other] { $bots } bots
    }

## ServerListLogic, ReplayBrowserLogic, ObserverShroudSelectorLogic
players = Jogadores

## ServerListLogic, GameInfoStatsLogic
spectators = Espectadores
spectators-label =
    { $spectators ->
        [0] Nenhum espectador
        [one] Um espectador
       *[other] { $spectators } espectadores
    }

## ServerlistLogic, GameInfoStatsLogic, ObserverShroudSelectorLogic, SpawnSelectorTooltipLogic, ReplayBrowserLogic
team-number = Equipe { $team }
no-team = Sem equipe

playing = Jogando
waiting = Aguardando

n-other-players =
    { $players ->
        [one] Mais um jogador
       *[other] Mais { $players } jogadores
    }

in-progress-for =
    { $minutes ->
        [0] Em andamento
        [one] Em andamento há { $minutes } minuto.
       *[other] Em andamento há { $minutes } minutos.
    }
password-protected = Protegido por senha
waiting-for-players = Aguardando jogadores
server-shutting-down = Servidor encerrando
unknown-server-state = Estado do servidor desconhecido

## Game
saved-screenshot = Captura de tela salva: { $filename }

## ChatCommands
invalid-command = { $name } não é um comando válido.

## DebugVisualizationCommands
combat-geometry-description = liga/desliga a sobreposição de geometria de combate.
render-geometry-description = liga/desliga a sobreposição de geometria de renderização.
screen-map-overlay-description = liga/desliga a sobreposição do mapa de tela.
depth-buffer-description = liga/desliga a sobreposição do buffer de profundidade.
actor-tags-overlay-description = liga/desliga a sobreposição das tags dos atores.

## DevCommands
cheats-disabled = As trapaças estão desativadas.
invalid-cash-amount = Quantia de dinheiro inválida.
toggle-visibility = liga/desliga as verificações de visibilidade e o minimapa.
give-cash = dá a quantia padrão ou especificada de dinheiro.
give-cash-all = dá a quantia padrão ou especificada de dinheiro a todos os jogadores e à IA.
instant-building = liga/desliga a construção instantânea.
build-anywhere = liga/desliga a construção em qualquer lugar.
unlimited-power = liga/desliga a energia infinita.
enable-tech = liga/desliga a possibilidade de construir tudo.
fast-charge = liga/desliga a recarga quase instantânea dos poderes especiais.
dev-cheat-all = liga/desliga todas as trapaças e ainda dá um dinheiro pelo incômodo.
dev-crash = faz o jogo travar.
levelup-actor = adiciona um número de níveis aos atores selecionados.
player-experience = adiciona uma quantidade de experiência ao(s) dono(s) dos atores selecionados.
power-outage = causa um apagão de 5 segundos ao(s) dono(s) dos atores selecionados.
kill-selected-actors = destrói os atores selecionados.
dispose-selected-actors = remove os atores selecionados.

## HelpCommands
available-commands = Estes são os comandos disponíveis:
no-description = sem descrição disponível.
help-description = mostra informações úteis sobre os comandos

## PlayerCommands
pause-description = pausa ou retoma o jogo
surrender-description = autodestrói tudo e perde o jogo

## DeveloperMode
cheat-used = Trapaça usada: { $cheat } por { $player }{ $suffix }

## CustomTerrainDebugOverlay
custom-terrain-debug-overlay-description = liga/desliga a sobreposição de depuração de terreno personalizado.

## CellTriggerOverlay
cell-trigger-overlay-description = liga/desliga a sobreposição de gatilhos de script.

## ExitsDebugOverlay
exits-debug-overlay-description = Mostra as saídas das fábricas.

## HierarchicalPathFinderOverlay
hpf-overlay-description = liga/desliga a sobreposição do pathfinder hierárquico.

## PathFinderOverlay
path-debug-description = liga/desliga a visualização da busca de caminhos.

## TerrainGeometryOverlay
terrain-geometry-overlay = liga/desliga a sobreposição de geometria do terreno.
