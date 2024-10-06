-- Resolution

screen = { guiGetScreenSize() }
resW, resH = 1920, 1080
sx, sy = screen[1]/resW, screen[2]/resH



local font = 'RobotoCondensed-Bold'
local openPanel = false

-- Variáveis globais

local nextpage = 0 -- variavel que irá determinar a posição atual da sua página
local maxLines = 6 -- variavel que irá determinar o máximo de informações da sua página.
local open_dx = false -- variavel que irá determinar se o seu painel está aberto ou fechado.

local position = {
     ['images'] = {
          { 683, 346, 100, 100 };
          { 910, 346, 100, 100 };
          { 1137, 346, 100, 100 };

          { 683, 590, 100, 100 };
          { 910, 590, 100, 100 };
          { 1137, 590, 100, 100 };
          
     };

     ['textos'] = {
          { 711, 477, 44, 16 };
          { 936, 477, 44, 16 };
          { 1163, 477, 44, 16 };

          { 711, 722, 44, 16 };
          { 936, 722, 44, 16 };
          { 1163, 722, 44, 16 };
     };

     ['pick'] = {
          { 655, 463, 155, 43 };
          { 882, 463, 155, 43 };
          { 1109, 463, 155, 43 };

          { 655, 707, 155, 43 };
          { 882, 707, 155, 43 };
          { 1109, 707, 155, 43 };
     }

}

function hSkins ()
     -- local skin = getElementModel( localPlayer )
     cache['image'](615, 248, 686, 584, 'nui/interface/background.png', 0, 0, 0, tocolor(255, 255, 255, 255), false)
     cache['image'](1242, 264, 21, 21, 'nui/interface/close_button.png', 0, 0, 0, ( cache.functions.Cursor( 1242, 264, 21, 21 ) and tocolor(255, 255, 255, 255) or tocolor(255, 255, 255, 100)), false)
     cache['text']('Painel de Skins - '..getTeamName(getPlayerTeam( localPlayer )), 900, 268, 115, 14, tocolor(255, 255, 255, 255), 1.0, cache.functions.Fonts(font, 13), 'center', 'top', false, false, false, false, false)
               
     if Laxante_Configs[getTeamName(getPlayerTeam( localPlayer ))]['skins'] then
          line = 0
          for i, v in ipairs(Laxante_Configs[getTeamName(getPlayerTeam( localPlayer ))]['skins']) do
               if (i > nextpage and line < maxLines) then

                    line = line + 1

                    cache['image'](position['images'][line][1], position['images'][line][2], position['images'][line][3], position['images'][line][4], 'nui/interface/logo.png', 0, 0, 0, tocolor(255, 255, 255, 255), false)
                    cache['image'](position['pick'][line][1], position['pick'][line][2], position['pick'][line][3], position['pick'][line][4], 'nui/interface/button_pick.png', 0, 0, 0, (cache.functions.Cursor( position['pick'][line][1], position['pick'][line][2], position['pick'][line][3], position['pick'][line][4] ) and tocolor(ck_Configs[getTeamName(getPlayerTeam( localPlayer ))]['gerais']['color_rgb'][1], Laxante_Configs[getTeamName(getPlayerTeam( localPlayer ))]['gerais']['color_rgb'][2], Laxante_Configs[getTeamName(getPlayerTeam( localPlayer ))]['gerais']['color_rgb'][3], 127) or tocolor(unpack(Laxante_Configs[getTeaHaumName(getPlayerTeam( localPlayer ))]['gerais']['color_rgb']))), false)
                    cache['text'](v['name'], position['textos'][line][1], position['textos'][line][2], position['textos'][line][3], position['textos'][line][4], tocolor(255, 255, 255, 255), 1.0, cache.functions.Fonts(font, 13), 'center', 'top', false, false, false, false, false)
               end
          end
     end
end

bindKey( Laxante_Configs['bindKey'], 'down', function( )
     if Laxante_Configs[getTeamName(getPlayerTeam( localPlayer ))] then
          if not openPanel then
               openPanel = true
               addEventHandler( 'onClientRender', root, hSkins )
               showCursor( true )
          else
               openPanel = false
               removeEventHandler( 'onClientRender', root, hSkins )
               showCursor( false )
          end
     end
end)

addEventHandler( 'onClientClick', root, function( button, state )
     if openPanel then
          if button == 'left' and state == 'down' then
               if Laxante_Configs[getTeamName(getPlayerTeam( localPlayer ))]['skins'] then
                    line = 0
                    for i, v in ipairs(Laxante_Configs[getTeamName(getPlayerTeam( localPlayer ))]['skins']) do
                         if (i > nextpage and line < maxLines) then
                              line = line + 1
                              if cache.functions.Cursor(position['pick'][line][1], position['pick'][line][2], position['pick'][line][3], position['pick'][line][4]) then
                                   triggerServerEvent( 'laxante:skins', localPlayer, localPlayer, v['model'] )
                              elseif cache.functions.Cursor(1242, 264, 21, 21) then
                                   openPanel = false
                                   removeEventHandler( 'onClientRender', root, hSkins )
                                   showCursor( false )
                              end
                         end
                    end
               end
          end
     end
end)