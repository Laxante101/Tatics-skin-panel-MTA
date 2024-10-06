Laxante_Configs = {

    ['bindKey'] = 'F6',

    ['Team LT #1'] = {
        ['gerais'] = {
            ['color_rgb'] = { 0, 0, 0, 178 } -- Cor do botão de pegar skin
        };
        ['skins'] = {
            { model = 1, name = 'Skin 1' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 2, name = 'Skin 2' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 3, name = 'Skin 3' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 4, name = 'Skin 4' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 5, name = 'Skin 5' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 6, name = 'Skin 6' }; -- model = ID da skin | name = Nome da skin no painel
        };
    };

    ['Team LT #2'] = {
        ['gerais'] = {
            ['color_rgb'] = { 255, 0, 0, 178 } -- Cor do botão de pegar skin
        };
        ['skins'] = {
            { model = 7, name = 'Skin 7' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 8, name = 'Skin 8' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 9, name = 'Skin 9' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 10, name = 'Skin 10' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 11, name = 'Skin 11' }; -- model = ID da skin | name = Nome da skin no painel
            { model = 12, name = 'Skin 12' }; -- model = ID da skin | name = Nome da skin no painel
        };
    };
}


--[[
                                                                                                             

--]]


outputMessage = function(elem, mess, tipo)--- Função de exportação da sua notify.
  return exports["insanity_infobox"]:addNotification(elem, mess, tipo)
end