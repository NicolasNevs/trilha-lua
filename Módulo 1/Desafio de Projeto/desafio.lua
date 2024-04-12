--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão

===================================================
|
| CREEPER
| Um monstro muito sagaz que explode na sua cara.
|
| Som: Tssssss
|
| Atributos:
|   Ataque: ########00
|   Defesa: ###0000000
|   ...
|
===================================================


]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "MURLOC"
local description = "Um monstrinho peculiar e muito simpático."
local emoji = "🐟"
local sound = "Mrglwglwlg!"
local favoriteTime = "Noturno"
local item = "Escamas Gosmentas"

-- Atributos
local attackAttribute = 8
local defenseAttribute = 4
local lifeAttribute = 7
local speedAttribute = 7
local inteligenceAttribute = 4
local sympathyAttribute = 10

--Sobre Monstro
local about = "Murlocs (conhecidos como gmmmlmrmrgmg ou Mmmurlok em sua língua) são uma raça humanoide bípede e anfíbia que reside principalmente ao longo das costas, margens de lagos e leitos de rios."

-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
local cardLimit <const> = "==================================================="

print(cardLimit)
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| " .. about)
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(inteligenceAttribute))
print("|    Simpatia:     " .. getProgressBar(sympathyAttribute))
print("| ")
print(cardLimit)
