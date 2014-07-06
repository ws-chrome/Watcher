log = false

num = (n) -> if tonumber(n) == nil then 0 else tonumber(n)

ClassResourceNames =
  [GameLib.CodeEnumClass.Engineer]: "Volatility"
  [GameLib.CodeEnumClass.Spellslinger]: "Spell Power"
  [GameLib.CodeEnumClass.Warrior]: "Kinetic Energy"
  [GameLib.CodeEnumClass.Stalker]: "Suit Power"
  [GameLib.CodeEnumClass.Medic]: "Actuators"
  [GameLib.CodeEnumClass.Esper]: "Psi Points"


ClassResourceIndex = 
  [GameLib.CodeEnumClass.Engineer]: 1
  [GameLib.CodeEnumClass.Spellslinger]: 4
  [GameLib.CodeEnumClass.Warrior]: 1
  [GameLib.CodeEnumClass.Stalker]: 3
  [GameLib.CodeEnumClass.Medic]: 1
  [GameLib.CodeEnumClass.Esper]: 1

ClassStancesAbilities = {
  -- [spell id]: stance id
  {
    [47866]: 45000 -- Engineer's Eradicate
    [47881]: 41504 -- Engineer's Provoce
  }
  {
    [47022]: 44932-- Warrior's Juggernaut        
    [46867]: 44926-- Warrior's Onslaught        
  }
  {
    [46074]: 45058-- Stalker's Evasive        
    [46073]: 45057-- Stalker's Lethal        
    [38782]: 46059-- Stalker's Agile        
  }
}

EngineerSpells = {
  [GameLib.GetSpell(70593)\GetName()]:
    summonAbilityId: 27021
    tiers: {70593, 70673, 70674, 70675, 70676, 70677, 70678, 70679, 70680} --Diminisherbot's Strobe
  [GameLib.GetSpell(51365)\GetName()]:
    summonAbilityId: 27002
    tiers: {51365, 56267, 56268, 56269, 56270, 56271, 56272, 56273, 56274} --Artillerybot's Barrage
  [GameLib.GetSpell(35501)\GetName()]:
    summonAbilityId: 27082
    tiers: {35501, 56334, 56335, 56336, 56337, 56338, 56339, 56340, 56341} --Bruiserbot's Blitz
  [GameLib.GetSpell(35657)\GetName()]:
    summonAbilityId: 26998
    tiers: {35657, 55864, 55865, 55866, 55867, 55868, 55869, 55870, 55871} --Repairbot's Shield Boost
}
-- FFS Carbine!
SpellSlingerAbilities =
  [20684]: {
    -- "Charged Shot"
    { 34718, 34719 }
    { 48940, 48949 }
    { 48941, 48950 }
    { 48942, 48951 }
    { 48943, 48952 }
    { 48944, 48953 }
    { 48945, 48954 }
    { 48946, 48955 }
    { 48947, 48956 }
  }
  [20734]: {
    -- "Wild Barrage"
    { 34772, 34773 }
    { 48904, 48913 }
    { 48905, 48914 }
    { 48906, 48915 }
    { 48907, 48916 }
    { 48908, 48917 }
    { 48909, 48918 }
    { 48910, 48919 }
    { 48911, 48920 }
  }
  [21056]: {
    -- "Rapid Fire"
    { 35356, 35357, 35358, 35359, 38937, 51501 }
    { 51391, 51400, 51410, 51419 }
    { 51392, 51401, 51411, 51420 }
    { 51393, 51402, 51412, 51421 }
    { 51394, 51403, 51413, 51422 }
    { 51395, 51404, 51414, 51423 }
    { 51396, 51405, 51415, 51424 }
    { 51397, 51406, 51416, 51425 }
    { 51398, 51407, 51417, 51426 }
  }
  [21490]: {
    -- "Astral Infusion"
    { 35870, 54717 }
    { 49730, 54718 }
    { 49731, 54719 }
    { 49732, 54720 }
    { 49733, 54721 }
    { 49734, 54722 }
    { 49735, 54723 }
    { 49736, 54724 }
    { 49737, 54725 }
  }
  [21650]: {
    -- "True Shot"
    { 36052, 36085 }
    { 49078, 49114 }
    { 49079, 49115 }
    { 49080, 49116 }
    { 49081, 49117 }
    { 49082, 49118 }
    { 49083, 49119 }
    { 49084, 49121 }
    { 49085, 49122 }
  }
  [23274]: {
    -- "Assassinate"
    { 38905, 39324, 39325, 69215, 69224 }
    { 49051, 49060, 49069, 69216, 69225 }
    { 49052, 49061, 49070, 69217, 69226 }
    { 49053, 49062, 49071, 69218, 69227 }
    { 49054, 49063, 49072, 69219, 69228 }
    { 49055, 49064, 49073, 69220, 69229 }
    { 49056, 49065, 49074, 69221, 69230 }
    { 49057, 49066, 49075, 69222, 69231 }
    { 49058, 49067, 49076, 69223, 69232 }
  }
  [23418]: {
    -- "Dual Fire",
    { 39068, 53286 }
    { 49558, 53287 }
    { 49560, 53288 }
    { 49561, 53289 }
    { 49562, 53290 }
    { 49563, 53291 }
    { 49564, 53292 }
    { 49565, 53293 }
    { 49566, 53294 }
  }
  [23441]: {
    -- "Runes of Protection"
    { 39092, 39327, 69761 }
    { 49225, 49234 }
    { 49226, 49235 }
    { 49227, 49236 }
    { 49228, 49237 }
    { 49229, 49238 }
    { 49230, 49239 }
    { 49231, 49240 }
    { 49232, 49241 }
  }
  [23463]: {
    -- "Healing Torrent"
    { 39116, 39131 }
    { 49640, 49649 }
    { 49641, 49650 }
    { 49642, 49651 }
    { 49643, 49652 }
    { 49644, 49653 }
    { 49645, 49654 }
    { 49646, 49655 }
    { 49647, 49656 }
  }
  [23468]: {
    -- "Healing Salve"
    { 39121, 47601 }
    { 49586, 49631 }
    { 49587, 49632 }
    { 49588, 49633 }
    { 49589, 49634 }
    { 49590, 49635 }
    { 49591, 49636 }
    { 49592, 49637 }
    { 49593, 49638 }
  }
  [23479]: {
    -- "Vitality Burst"
    { 39132, 39133 }
    { 49658, 49667 }
    { 49659, 49668 }
    { 49660, 49669 }
    { 49661, 49670 }
    { 49662, 49671 }
    { 49663, 49672 }
    { 49664, 49673 }
    { 49665, 49674 }
  }
  [23481]: {
    -- "Voidspring"
    { 39134, 47600 }
    { 51800, 53475 }
    { 51801, 53476 }
    { 51802, 53477 }
    { 51803, 53478 }
    { 51804, 53479 }
    { 51805, 53480 }
    { 51806, 53481 }
    { 51807, 53482 }
  }
  [27504]: {
    -- "Sustain"
    { 43326, 43398 }
    { 51850, 51863 }
    { 51851, 51864 }
    { 51852, 51865 }
    { 51853, 51866 }
    { 51854, 51867 }
    { 51855, 51868 }
    { 51856, 51869 }
    { 51857, 51870 }
  }
  [27736]: {
    -- "Arcane Missiles",
    { 43570, 43619 }
    { 54941, 54989 }
    { 54942, 54990 }
    { 54943, 54991 }
    { 54944, 54992 }
    { 54945, 54993 }
    { 54946, 54994 }
    { 54947, 54995 }
    { 54948, 54996 }
  }
  [27774]: {
    -- "Chill",
    { 43609, 43613 }
    { 49178, 49198 }
    { 49179, 49199 }
    { 49180, 49200 }
    { 49181, 49201 }
    { 49182, 49202 }
    { 49183, 49203 }
    { 49184, 49204 }
    { 49185, 49205 }
  }
  [23959]: {
    -- "Regenerative Pulse",
    { 39646, 47078, 47079, 47080, 47081, 47082, 47090 }
    { 51691, 51702, 51711, 51720, 51729 }
    { 51692, 51703, 51712, 51721, 51730 }
    { 51693, 51704, 51713, 51722, 51731 }
    { 51695, 51705, 51714, 51723, 51732 }
    { 51696, 51706, 51715, 51724, 51733 }
    { 51697, 51707, 51716, 51725, 51734 }
    { 51698, 51708, 51717, 51726, 51735 }
    { 51699, 51709, 51718, 51727, 51736 }
  }
  
class Helpers
  @DeepMerge: (t1, t2) ->
    for k, v in pairs(t2)
      if type(v) == "table"
        if type(t1[k] or false) == "table"
          Helpers.DeepMerge(t1[k] or {}, t2[k] or {})
        else
          t1[k] = v
      else
        t1[k] = v
    t1

  @GetItemIndex: (list, item) ->
    return i for i, v in ipairs(list) when v == item
    return nil    

  @FindInList: (list, param, val) ->
    return v for i, v in ipairs(list) when v[param] == val
    return nil

  @RemoveItemFromList: (list, item) ->
    index = Helpers.GetItemIndex(list, item)
    if index ~= nil
      table.remove(list, index)
      return true
    return false

  @PrimitiveDistance: (x1, y1, x2, y2) ->
    math.max(math.abs(x2 - x1), math.abs(y2 - y1))

  @Corners: (t) ->
    {
      { x: t[1], y: t[2] } -- top left
      { x: t[3], y: t[2] } -- top right
      { x: t[3], y: t[4] } -- bottom right
      { x: t[1], y: t[4] } -- bottom left
    }


class Settings
  new: =>
    @settings = {} 
    @defaults = {}

  SetDefaults: (defaults) =>
    @defaults = Helpers.DeepMerge({}, defaults)

  LoadSettings: (settings) =>
    @settings = Helpers.DeepMerge(@defaults, settings)

  GetSettings: =>
    @settings

  ApplyToForm: (wndForm) =>
    for key, value in pairs(@settings)
      element = wndForm\FindChild(key)
      if element ~= nil
        if value == true or value == false
          element\SetCheck(value)
        elseif element.SetValue ~= nil
          element\SetValue(value)
          @SliderChanged(nil, element)
        elseif element\FindChild(value) ~= nil
          element\SetText(element\FindChild(value)\FindChild("Name")\GetText())
        else
          element\SetText(value)

  Set: (key, value) =>
    @settings[key] = value

  Get: (key) =>
    @settings[key]

  BooleanToggle: (wnd, button) =>
    @Set(button\GetName(), button\IsChecked())  
    return if wnd == nil or button\GetParent()\GetName() ~= "RadioGroup"
    for i, btn in ipairs(button\GetParent()\GetChildren())
      if btn.IsChecked
        @BooleanToggle(nil, btn)


  StringChanged: (wnd, field) =>
    @Set(field\GetName(), field\GetText())

  SliderChanged: (wnd, slider) =>
    wndValue = slider\GetParent()\GetParent()\FindChild(slider\GetName().."_value")
    metric = wndValue\GetData()
    if metric == nil
      metric = wndValue\GetText()
      wndValue\SetData(metric)

    wndValue\SetText(string.format("%d%s", slider\GetValue(), metric))
    @Set(slider\GetName(), slider\GetValue())

  DropDownToggle: (wnd, button) =>
    button\FindChild("DropDown")\Show(button\IsChecked())
    self.dropdownCallback(@parent, button\GetName(), button) if self.dropdownCallback
    -- @oldWidth = nil
    -- @IconStyleDDSizeChanged(button\FindChild("DropDown"), button\FindChild("DropDown")\FindChild("style_1")) if @IconStyleDDSizeChanged

  SelectDropDown: (wnd, button) =>
    dropdown = button
    while dropdown\GetName() ~= "DropDown"
      dropdown = dropdown\GetParent()
    toggle = dropdown\GetParent()
    toggle\SetText(button\FindChild("Name")\GetText())
    dropdown\Show(false)
    toggle\SetCheck(false)
    @Set(toggle\GetName(), button\GetName())

    self.dropdownCallback(@parent, toggle\GetName(), toggle) if self.dropdownCallback


class SpellBook

  @IsStance: (spell) ->
    for i, group in ipairs(ClassStancesAbilities)
      for spellId, stanceId in pairs(group)
        return true if spell\GetId() == stanceId
    return false    

  @GetAbilities: ->
    if @abilities == nil or #@abilities <= 0
      @abilities = AbilityBook.GetAbilitiesList() or {}
    @abilities

  @GetInnates: ->
    if @innates == nil or #@innates <= 0
      @innates = {}
      spells = GameLib.GetClassInnateAbilitySpells().tSpells or {}
      for i, spell in ipairs(spells)
        if not SpellBook.IsStance(spell)
          table.insert(@innates, spell)



      -- for i, inn in ipairs(@innates)
      --   log\info(inn\GetName())
      --   log\info(inn\GetCasterInnateCosts())
      --   log\info(inn\GetCasterInnateRequirements())

    @innates

  @FindAbility: (name) ->
    SpellBook.GetAbilities()
    SpellBook.GetInnates()
    SpellBook.GetEngineerBotAbilities()
    return nil unless @abilities


    gadgetSpell = GameLib.GetGadgetAbility()
    return gadgetSpell if gadgetSpell ~= nil and gadgetSpell\GetName() == name

    for i, engiSpell in ipairs(@engineersSpells)
      return engiSpell if engiSpell\GetName() == name

    for i, innate in ipairs(@innates)
      return innate if innate\GetName() == name

    for i, ability in pairs(@abilities) 
      return ability if ability.strName == name
    nil

  @GetEngineerBotAbilities: ->
    return @engineersSpells if @engineersSpells ~= nil and #@engineersSpells > 0


    @engineersSpells = {}
    abilities = SpellBook.GetAbilities()
    for name, data in pairs(EngineerSpells)
      spell = nil
      for i, ability in ipairs(abilities)
        if ability.nId == data.summonAbilityId
          tier = if ability.nCurrentTier > 0 then ability.nCurrentTier else 1
          spell = GameLib.GetSpell(data.tiers[tier])
          table.insert(@engineersSpells, spell)
          break

    @engineersSpells

  @GetSpell: (ability) ->
    return nil if ability == nil
    return ability if ability.GetName -- is spell already
    if ability.nCurrentTier ~= 0
      ability.tTiers[ability.nCurrentTier].splObject 
    else
      ability.tTiers[1].splObject    

  @FindSpell: (name) ->
    ability = SpellBook.FindAbility(name)
    return nil unless ability
    SpellBook.GetSpell(ability)

  @ExistedBuffs: (unit) ->
    buffs = {}
    if unit ~= nil
      for i, buffTable in pairs(unit\GetBuffs())
        for j, buffInfo in ipairs(buffTable)
          table.insert(buffs, buffInfo.splEffect\GetName())
    buffs

  @GetUnit: (strTarget) ->
    player = GameLib.GetPlayerUnit()
    if string.upper(strTarget) == "PLAYER"
      return player
    if string.upper(strTarget) == "TARGET"
      return if player ~= nil then player\GetTarget() else nil
    if string.upper(strTarget) == "FOCUS"
      return if player ~= nil then player\GetAlternateTarget() else nil
    nil

  @GetCooldownTime: (ability, spell) ->
    return 0 if spell == nil

    -- stances hack
    for i, stanceGroup in ipairs(ClassStancesAbilities)
      if stanceGroup[spell\GetId()] ~= nil
        -- this is stance
        cdTime = 0
        for spellId, stanceId in pairs(stanceGroup)
          cdTime = math.max(cdTime, GameLib.GetSpell(spellId)\GetCooldownRemaining())
        return cdTime 

    chargesInfo = spell\GetAbilityCharges()
    time = if chargesInfo and chargesInfo.nChargesMax > 0
      -- log\info chargesInfo
      chargesInfo.fRechargePercentRemaining * chargesInfo.fRechargeTime
    else
      spell\GetCooldownRemaining()

    -- log\info time

    if time == 0 and ability ~= nil and SpellSlingerAbilities[ability.nId] ~= nil and ability.nCurrentTier ~= 0
      altSpellIds = SpellSlingerAbilities[ability.nId][ability.nCurrentTier]
      for i, altSpellId in ipairs(altSpellIds)
        altSpell = GameLib.GetSpell(altSpellId)
        altTime = SpellBook.GetCooldownTime(nil, altSpell)
        return altTime if altTime > 0
    time 


------------------------------------------

class BaseFilter
  name: "BaseFilter"

  defaultOptions: {}

  windowName: ""

  new: (@xmlDoc, options = {}) =>
    @options = Settings!
    @options\SetDefaults(@defaultOptions)
    @options\LoadSettings(options)    

    @Init() if @Init

  RenderOptions: (wndHost) =>
    @wndOptions = Apollo.LoadForm(@xmlDoc, @windowName, wndHost, @options)
    @options\ApplyToForm(@wndOptions)
    @PrepareOptions(@wndOptions) if @PrepareOptions ~= nil
    @wndOptions

  PrepareOptions: (wndOptions) =>

  IsPass: (data) =>
    true

------------------------------------------

class HPFilter extends BaseFilter
  name: 'HP'

  windowName: "HPFilter"

  defaultOptions:
    min_hp: 0
    max_hp: 100
    min_hp_enabled: false
    max_hp_enabled: false
    min_hp_unit: "percent"
    max_hp_unit: "percent"
    target_unit: "Player"

  IsPass: (data) =>
    unit  = SpellBook.GetUnit(@options\Get('target_unit'))

    return false unless unit

    maxHealth = unit\GetMaxHealth() or 0
    health    = unit\GetHealth()    or 0

    health_p  = (health / maxHealth) * 100
    
    if @options\Get('min_hp_enabled')
      return false if @options\Get('min_hp_unit') == "percent" and num(@options\Get('min_hp')) > health_p
      return false if @options\Get('min_hp_unit') == "HP" and num(@options\Get('min_hp')) > health

    if @options\Get('max_hp_enabled')
      return false if @options\Get('max_hp_unit') == "percent" and num(@options\Get('max_hp')) < health_p
      return false if @options\Get('max_hp_unit') == "HP" and num(@options\Get('max_hp')) < health

    true

------------------------------------------

class MPFilter extends BaseFilter
  name: 'MP (Focus)'

  windowName: "MPFilter"

  defaultOptions:
    min_mp: 0
    max_mp: 100
    min_mp_enabled: false
    max_mp_enabled: false
    min_mp_unit: "percent"
    max_mp_unit: "percent"
    target_unit: "Player"

  IsPass: (data) =>
    unit  = SpellBook.GetUnit(@options\Get('target_unit'))

    return false unless unit

    maxMana = unit\GetMaxMana() or 0
    mana    = unit\GetMana()    or 0

    mana_p  = (mana / maxMana) * 100
    
    if @options\Get('min_mp_enabled')
      return false if @options\Get('min_mp_unit') == "percent" and num(@options\Get('min_mp')) > mana_p
      return false if @options\Get('min_mp_unit') == "MP" and num(@options\Get('min_mp')) > mana

    if @options\Get('max_mp_enabled')
      return false if @options\Get('max_mp_unit') == "percent" and num(@options\Get('max_mp')) < mana_p
      return false if @options\Get('max_mp_unit') == "MP" and num(@options\Get('max_mp')) < mana

    true

------------------------------------------

class ShieldFilter extends BaseFilter
  name: 'Shield Capacity'

  windowName: "ShieldFilter"

  defaultOptions:
    min_shield: 0
    max_shield: 100
    min_shield_enabled: false
    max_shield_enabled: false
    min_shield_unit: "percent"
    max_shield_unit: "percent"
    target_unit: "Player"

  IsPass: (data) =>
    unit  = SpellBook.GetUnit(@options\Get('target_unit'))

    return false unless unit

    maxShield = unit\GetShieldCapacityMax() or 0
    shield    = unit\GetShieldCapacity()    or 0

    shield_p  = (shield / maxShield) * 100
    
    if @options\Get('min_shield_enabled')
      return false if @options\Get('min_shield_unit') == "percent" and num(@options\Get('min_shield')) > shield_p
      return false if @options\Get('min_shield_unit') == "points" and num(@options\Get('min_shield')) > shield

    if @options\Get('max_shield_enabled')
      return false if @options\Get('max_shield_unit') == "percent" and num(@options\Get('max_shield')) < shield_p
      return false if @options\Get('max_shield_unit') == "points" and num(@options\Get('max_shield')) < shield

    true

------------------------------------------

class TimeFilter extends BaseFilter
  name: 'Time'

  windowName: "TimeFilter"

  defaultOptions:
    min_duration: 0
    max_duration: 10
    min_duration_enabled: false
    max_duration_enabled: false

  IsPass: (data) =>
    chargesInfo = data.spell\GetAbilityCharges()
    time = SpellBook.GetCooldownTime(data.ability, data.spell)

    if @options\Get('min_duration_enabled')
      return false if num(@options\Get('min_duration')) > time
    if @options\Get('max_duration_enabled')
      return false if num(@options\Get('max_duration')) < time and (chargesInfo == nil or chargesInfo.nChargesRemaining == 0)

    return true

------------------------------------------

class AvailabilityFilter extends BaseFilter
  name: 'Availability'

  windowName: "AvailabilityFilter"

  defaultOptions:
    available_enabled: true
    available_opacity: 100

    not_available_enabled: false
    not_available_opacity: 100

  IsPass: (data) =>
    chargesInfo = data.spell\GetAbilityCharges()

    available = if chargesInfo and chargesInfo.nChargesMax > 0
      chargesInfo.nChargesRemaining > 0
    else
      SpellBook.GetCooldownTime(data.ability, data.spell) == 0

    if @options\Get('available_enabled')
      if available
        data.wndAbility\SetOpacity(num(@options\Get('available_opacity')) / 100)
        return true

    if @options\Get('not_available_enabled')
      if not available
        data.wndAbility\SetOpacity(num(@options\Get('not_available_opacity')) / 100)
        return true

    return false

------------------------------------------

class ChargeFilter extends BaseFilter
  name: 'Charges'

  windowName: "ChargeFilter"

  defaultOptions:
    min_charge_enabled: false
    min_charge: 0

    max_charge_enabled: false
    max_charge: 5

  IsPass: (data) =>
    chargesInfo = data.spell\GetAbilityCharges()
    charges = if chargesInfo and chargesInfo.nChargesMax > 0
      chargesInfo.nChargesRemaining
    else
      nil

    if charges ~= nil
      if @options\Get('min_charge_enabled')
        return false if num(@options\Get('min_charge')) > charges
      if @options\Get('max_charge_enabled')
        return false if num(@options\Get('max_charge')) < charges

    return true

------------------------------------------

class ResourcesFilter extends BaseFilter
  name: 'Resources'

  windowName: "ResourceFilter"

  defaultOptions:
    min_resource_enabled: false
    min_resource: 0

    max_resource_enabled: false
    max_resource: 9999

  Init: =>
    Apollo.RegisterEventHandler("CharacterCreated", "OnCharacterCreated", self)

  OnCharacterCreated: =>
    @UpdateResourceName() if @wndOptions

  PrepareOptions: =>
    @UpdateResourceName()

  UpdateResourceName: =>
    if player = GameLib.GetPlayerUnit()
      @wndOptions\FindChild("Title")\SetText(ClassResourceNames[player\GetClassId()]..":")
      wndVal = @wndOptions\FindChild("max_resource")
      value  = tonumber(wndVal\GetText())
      if value > player\GetMaxResource(ClassResourceIndex[player\GetClassId()])
        wndVal\SetText(player\GetMaxResource(ClassResourceIndex[player\GetClassId()]))
        @options\Set("max_resource", player\GetMaxResource(ClassResourceIndex[player\GetClassId()]))  


  IsPass: (data) =>
    resource = if data.player then data.player\GetResource(ClassResourceIndex[data.player\GetClassId()]) else 0

    if @options\Get('min_resource_enabled')
      return false if num(@options\Get('min_resource')) > resource
    if @options\Get('max_resource_enabled')
      return false if num(@options\Get('max_resource')) < resource

    return true
------------------------------------------

class BuffFilter extends BaseFilter
  name: 'Buff/Debuff'

  windowName: "BuffFilter"

  defaultOptions:
    buff_name: ""
    buff_exists: false
    buff_not_exists: false
    buff_target: "Player"

  IsPass: (data) =>
    unit  = SpellBook.GetUnit(@options\Get('buff_target'))
    buffs = SpellBook.ExistedBuffs(unit)

    if @options\Get('buff_exists')
      return false if Helpers.GetItemIndex(buffs, @options\Get('buff_name')) == nil
    if @options\Get('buff_not_exists')
      return false if Helpers.GetItemIndex(buffs, @options\Get('buff_name')) ~= nil

    return true

------------------------------------------

class CombatFilter extends BaseFilter
  name: 'Combat'

  windowName: "CombatFilter"

  defaultOptions:
    show_in_combat: true
    show_not_in_combat: true

  IsPass: (data) =>
    isInCombat = data.player and data.player\IsInCombat()
    if @options\Get('show_in_combat')
      return true if isInCombat
    if @options\Get('show_not_in_combat')
      return true unless isInCombat

    return false

------------------------------------------

class ActionSetFilter extends BaseFilter
  name: 'Action Set'

  windowName: "ActionSetFilter"

  defaultOptions:
    in_action_set: true

  IsPass: (data) =>
    actionSetAbilities = ActionSetLib.GetCurrentActionSet() or {}

    if @options\Get('in_action_set') and data.ability.nId
      return false if Helpers.GetItemIndex(actionSetAbilities, data.ability.nId) == nil

    if @options\Get('in_action_set') and data.ability.GetId
      currentInnateAbility = GameLib.GetCurrentClassInnateAbilitySpell()
      return true if currentInnateAbility ~= nil and currentInnateAbility\GetId() == data.ability\GetId()

      -- if currentInnateAbility ~= nil
      --   innateId = currentInnateAbility\GetId()
      --   for i, stanceGroup in ipairs(ClassStancesAbilities)
      --     stanceId = stanceGroup[innateId]
      --     if stanceId ~= nil
      --       -- this is stance ability


      --   if engineerStanceId ~= nil
      --     -- log\info(engineerStanceId)
      --     if currentInnateAbility\GetId() == engineerStanceId
      --       return true
      --   else
      --     if currentInnateAbility\GetId() == data.ability\GetId()
      --       return true

      for name, spellData in pairs(EngineerSpells)
        if Helpers.GetItemIndex(spellData.tiers, data.ability\GetId()) ~= nil
          if Helpers.GetItemIndex(actionSetAbilities, spellData.summonAbilityId) ~= nil
            return true
      return false

    return true

------------------------------------------

class SpecialFilter extends BaseFilter
  name: 'Specials'

  windowName: "SpecialFilter"

  defaultOptions:
    after_crit_hit_enabled: false
    after_crit_hit_time: 5

    after_crit_heal_enabled:false
    after_crit_heal_time: 5

    after_deflect_enabled: false
    after_deflect_time: 4

    last_damage_enabled: false
    last_damage_time: 1.1
    last_damage_target_only: false
    last_damage_target_unit: "Target"

  Init: =>
    @lastCriticalHealTime = nil
    @lastCriticalDmgTime = nil
    @lastDeflectTime = nil
    @lastSpellDmgTime = nil

    Apollo.RegisterEventHandler("CombatLogDamage", "OnCombatLogDamage", self)
    Apollo.RegisterEventHandler("CombatLogHeal", "OnCombatLogHeal", self)
    Apollo.RegisterEventHandler("AttackMissed", "OnMiss", self)

  OnCombatLogDamage: (data) =>
    if data.unitCaster ~= nil and data.unitCaster == GameLib.GetPlayerUnit()
      if not data.bPeriodic and data.eCombatResult == GameLib.CodeEnumCombatResult.Critical
        @lastCriticalDmgTime = os.clock()

      if @options\Get("last_damage_enabled")
        if @spellName ~= nil and data.splCallingSpell\GetName() == @spellName
          @targetUnit = SpellBook.GetUnit(@options\Get("last_damage_target_unit"))
          if @options\Get("last_damage_target_only") == false or @targetUnit == data.unitTarget
            @lastSpellDmgTime = os.clock()

  OnCombatLogHeal: (data) =>
    if data.unitCaster ~= nil and data.unitCaster == GameLib.GetPlayerUnit()
      if not data.bPeriodic and data.eCombatResult == GameLib.CodeEnumCombatResult.Critical
        @lastCriticalHealTime = os.clock()
      
  OnMiss: (caster, target, missType) =>
    if target ~= nil and target == GameLib.GetPlayerUnit() then
      if missType == GameLib.CodeEnumMissType.Dodge then
        @lastDeflectTime = os.clock()

  IsPass: (data) =>
    passed = true

    @spellName  = data.spell\GetName()

    if @options\Get('after_crit_hit_enabled')
      return true if (os.clock() - num(@lastCriticalDmgTime)) < num(@options\Get('after_crit_hit_time'))
      passed = false

    if @options\Get('after_crit_heal_enabled')
      return true if (os.clock() - num(@lastCriticalHealTime)) < num(@options\Get('after_crit_heal_time'))
      passed = false

    if @options\Get('after_deflect_enabled')
      return true if (os.clock() - num(@lastDeflectTime)) < num(@options\Get('after_deflect_time'))
      passed = false
 
    if @options\Get('last_damage_enabled')
      return true if (os.clock() - num(@lastSpellDmgTime)) > num(@options\Get('last_damage_time'))
      passed = false
 
    return passed

------------------------------------------

class LuaFilter extends BaseFilter
  name: 'Lua'

  windowName: "LuaFilter"

  defaultOptions:
    command_enabled: false
    command_code: [[
-- Available methods:
--
-- Watcher.strSpellName -- selected spell name
-- Watcher.spell -- selected spell object
-- Watcher.player -- player unit
-- Watcher.wndIcon -- icon's window object
-- wndIcon children: CD, Charges, Overlay, Ability
--
-- spellObject = Watcher.FindSpellByName(strSpellName)
-- nCharges    = Watcher.GetSpellCharges(spellObject)
-- nCooldown   = Watcher.GetSpellCooldown(spellObject)
-- bAvailable  = Watcher.IsSpellAvailable(spellObject)
--
-- Watcher.Print(strText) -- print message to chat window
--
-- return true  -- filter passed
-- return false -- filter failed

return true

]]

  IsPass: (data, icon) =>
    return true unless @options\Get("command_enabled")
    scriptEnv = {
      Watcher:
        strSpellName: data.spellName
        spell: data.spell
        player: GameLib.GetPlayerUnit()
        -- tAbility: data.ability
        wndIcon: icon
        Print: (str) ->
          Print(str)
        FindSpellByName: (name) ->
          SpellBook.FindSpell(name)
        GetSpellCharges: (spell) ->
          ability = SpellBook.FindAbility(spell\GetName())
          chargesInfo = spell\GetAbilityCharges()
          if chargesInfo and chargesInfo.nChargesMax > 0
            chargesInfo.nChargesRemaining
          else
            if SpellBook.GetCooldownTime(ability, spell) == 0
              1
            else
              0    
        GetSpellCooldown: (spell) ->
          ability = SpellBook.FindAbility(name)
          spell   = SpellBook.GetSpell(spell)
          SpellBook.GetCooldownTime(ability, spell)
        IsSpellAvailable: (spell) ->
          ability = SpellBook.FindAbility(spell\GetName())
          chargesInfo = spell\GetAbilityCharges()
          if chargesInfo and chargesInfo.nChargesMax > 0
            chargesInfo.nChargesRemaining > 0
          else
            SpellBook.GetCooldownTime(ability, spell) == 0
    }
    failed = false
    errorMsg = ""
    success, func = pcall( -> assert(loadstring(@options\Get("command_code"))))
    if success
      setfenv(func, scriptEnv)
      success, result = pcall( -> func() )
      if success
        return result
      else
        failed = true
        errorMsg = result
    else
      failed = true
      errorMsg = func

    if failed
      Print(errorMsg)
      @wndOptions\FindChild("command_enabled")\SetCheck(false)
      @options\Set("command_enabled", false)
      return true


------------------------------------------



class Rule
  new: (@xmlDoc, @parent , options = {}) =>
    @locked = true

    @defaults = {
      skillName: ""
      filters: {}
    }
    @options = Helpers.DeepMerge(@defaults, options)

    @notificationOptions = Settings!
    @notificationOptions.parent = self
    @notificationOptions.dropdownCallback = @OptionsDropDown
    -- @notificationOptions.IconStyleDDSizeChanged    = @IconStyleDDSizeChanged
    @notificationOptions.PreviewSound = @PreviewSound

    @notificationOptions\SetDefaults({
      show_ability_icon: true
      disable_transitions: false
      icon_style_enabled: false
      icon_style: "style_1"
      icon_position_x: 0
      icon_position_y: 0
      icon_size: 50

      cooldown_enabled: true
      cooldown_font: "CRB_Header24"
      cooldown_position: "center_center"
      cooldown_offset_x: 0
      cooldown_offset_y: 0
      cooldown_separate_opacity_enabled: false
      cooldown_separate_opacity: 100

      play_sound: false
      sound_name: "PlayUIDatachronBeep"
      play_sound_loop_enabled: false
      play_sound_loop_time: 300
    })

    @notificationOptions\LoadSettings({})

    @data = { skillName: "" }

    @soundPlayed = true
    @lastSoundPlayTime = 0

    @CreateIcon()

  PreviewSound: (wnd, button) =>
    sound = button\GetParent()\FindChild("sound_name")\GetText()
    Sound.Play(Sound[sound]) if Sound[sound]

  OptionsDropDown: (name, button) =>
    if name == "icon_style"
      dd = button\FindChild("DropDown")
      @IconStyleDDSizeChanged(dd, dd\FindChild("style_1"))

    if name == "cooldown_font"
      @PrepareFontsList(button\IsChecked())

    if name == "sound_name"
      @PrepareSoundsList(button\IsChecked())

  IconStyleDDSizeChanged: ( wndHandler, wndControl ) =>
    return if wndControl\GetName() ~= "style_1"
    width = wndControl\GetWidth()
    if @oldISDDWidth ~= width
      @oldISDDWidth = width
      delta = width - wndControl\GetHeight()
      location = wndHandler\GetLocation()\ToTable()
      location.nOffsets[4] = location.nOffsets[4] + delta
      wndHandler\MoveToLocation(WindowLocation.new(location))

  GetOptions: =>
    filtersOptions = {}
    for i, filter in ipairs(@options.filters)
      table.insert(filtersOptions, { name: filter.name, options: filter.options\GetSettings()})

    result = Helpers.DeepMerge({}, @options)
    result.filters = filtersOptions
    result.notificationOptions = @notificationOptions\GetSettings()
    result

  SetOptions: (options, FiltersList) =>
    filters = {}
    for i, filterOptions in ipairs(options.filters)
      filterClass = Helpers.FindInList(FiltersList, 'name', filterOptions.name)
      table.insert(filters, filterClass(@xmlDoc, filterOptions.options))

    result = Helpers.DeepMerge({}, options)
    result.filters = filters

    @notificationOptions\LoadSettings(result.notificationOptions or {})
    @notificationOptions\ApplyToForm(@wndNotificationOptions) if @wndNotificationOptions

    @options = result

    @RestoreIconPosition()

  PrepareSoundsList: (fill = false) =>
    soundsList = @wndNotificationOptions\FindChild("SoundsList")
    soundsList\DestroyChildren()
    if fill
      for name, soundId in pairs(Sound)
        continue unless type(soundId) == "number"
        soundItem = Apollo.LoadForm(@xmlDoc, "sound_item", soundsList, @wndNotificationOptions)
        soundItem\FindChild("Name")\SetText(name)
        soundItem\SetName(name)
    soundsList\ArrangeChildrenVert()

  PrepareFontsList: (fill = false) =>
    fonts = Apollo.GetGameFonts()
    fontsList = @wndNotificationOptions\FindChild("FontsList")
    fontsList\DestroyChildren()
    if fill
      for i, fontInfo in ipairs(fonts)
        fontItem = Apollo.LoadForm(@xmlDoc, "font_item", fontsList, @wndNotificationOptions)
        fontItem\FindChild("Name")\SetText(fontInfo.name)
        fontItem\SetName(fontInfo.name)
    fontsList\ArrangeChildrenVert()


  Destroy: =>
    @wndIcon\Destroy()

  CreateIcon: =>
    @wndIcon = Apollo.LoadForm(@xmlDoc, "IconWindow", nil, self)
    @wndIcon\SetSizingMinimum(15, 15)
    @wndIcon\SetSizingMaximum(300, 300)

    @wndCD      = @wndIcon\FindChild("CD")
    @wndOverlay = @wndIcon\FindChild("Overlay")
    @wndAbility = @wndIcon\FindChild("Ability")
    @wndCharges = @wndIcon\FindChild("Charges")



    @SetIcon()

  OffsetIcon: (icon, dX = 0, dY = 0) =>
    iconLocation = icon\GetLocation()\ToTable()
    iconLocation.nOffsets = {
      iconLocation.nOffsets[1] + dX
      iconLocation.nOffsets[2] + dY
      iconLocation.nOffsets[3] + dX
      iconLocation.nOffsets[4] + dY
    }
    icon\MoveToLocation(WindowLocation.new(iconLocation))

  UpdateLocation: =>
    location = @wndIcon\GetLocation()\ToTable().nOffsets
    @notificationOptions\Set('icon_position_x', location[1])
    @notificationOptions\Set('icon_position_y', location[2])
    @notificationOptions\Set('icon_size', location[3] - location[1])

    return if @parent.selectedRule ~= self

    @wndNotificationOptions\FindChild("icon_position_x")\SetText(location[1])
    @wndNotificationOptions\FindChild("icon_position_y")\SetText(location[2])
    @wndNotificationOptions\FindChild("icon_size")\SetText(location[3] - location[1])


  IconResized: =>
    return if @noSnap
    @UpdateLocation()

  IconMoved: (wnd, icon) =>
    @UpdateLocation()
    return if Apollo.IsAltKeyDown()
    if @noSnap
      @noSnap = false
      return

    o1 = @wndIcon\GetLocation()\ToTable().nOffsets
    o1 = {
      o1[1] - 5
      o1[2] - 5
      o1[3] + 5
      o1[4] + 5
    }
    for i, rule in ipairs(@parent.activeRules)
      continue if rule == self
      ruleIcon = rule.wndIcon
      o2 = ruleIcon\GetLocation()\ToTable().nOffsets
      o2 = {
        o2[1] - 5
        o2[2] - 5
        o2[3] + 5
        o2[4] + 5
      }
      -- y in
      snapped = false
      if (o1[2] >= o2[2]-10 and o1[2] <= o2[4]+10) or (o1[4] >= o2[2]-10 and o1[4] <= o2[4]+10)  
        if math.abs(o1[1] - o2[3]) < 10
          @OffsetIcon(@wndIcon, o2[3] - o1[1], 0)
          snapped = true
        elseif math.abs(o1[3] - o2[1]) < 10
          @OffsetIcon(@wndIcon, o2[1] - o1[3], 0)
          snapped = true
        elseif math.abs(o1[1] - o2[1]) < 10
          @OffsetIcon(@wndIcon, o2[1] - o1[1], 0)
          snapped = true
        elseif math.abs(o1[3] - o2[3]) < 10
          @OffsetIcon(@wndIcon, o2[3] - o1[3], 0)          
          snapped = true
      -- x in
      if (o1[1] >= o2[1]-10 and o1[1] <= o2[3]+10) or (o1[3] >= o2[1]-10 and o1[3] <= o2[3]+10)  
        if math.abs(o1[2] - o2[4]) < 10
          @OffsetIcon(@wndIcon, 0, o2[4] - o1[2])
          snapped = true
        elseif math.abs(o1[4] - o2[2]) < 10
          @OffsetIcon(@wndIcon, 0, o2[2] - o1[4])
          snapped = true
        elseif math.abs(o1[2] - o2[2]) < 10
          @OffsetIcon(@wndIcon, 0, o2[2] - o1[2])
          snapped = true
        elseif math.abs(o1[4] - o2[4]) < 10
          @OffsetIcon(@wndIcon, 0, o2[4] - o1[4])
          snapped = true
      return @UpdateLocation() if snapped


  SetIcon: =>
    if @data.spell
      @iconFor = @data.spellName
      @wndAbility\SetSprite(@data.spell\GetIcon())
    else
      @iconFor = nil
      @wndAbility\SetSprite("CRB_Basekit:kitIcon_White_QuestionMark")

  SetOverlay: =>
    styles = {
      style_1: "CRB_ActionBarIconSprites:sprAS_Chnl_Flash"
      style_2: "CRB_ActionBarIconSprites:sprAS_Prompt_Interrupt"
      style_3: "CRB_ActionBarIconSprites:sprAS_Prompt_Interrupt2"
      style_4: "CRB_ActionBarIconSprites:sprAS_Prompt_Resource2"
      style_5: "CRB_ActionBarIconSprites:sprAS_Prompt_Resource"
      style_6: "CRB_ActionBarIconSprites:sprAS_Prompt_Stealth"
    }

    chargesInfo = if @data.spell then @data.spell\GetAbilityCharges() else nil
    available = if chargesInfo and chargesInfo.nChargesMax > 0
      chargesInfo.nChargesRemaining > 0
    else
      SpellBook.GetCooldownTime(@data.ability, @data.spell) == 0    

    if available and @notificationOptions\Get('icon_style_enabled')
      if @overlayType ~= @notificationOptions\Get('icon_style')
        sprite = styles[@notificationOptions\Get('icon_style')]
        @wndOverlay\SetSprite(sprite)
        @wndOverlay\Show(true)
        @overlayType = @notificationOptions\Get('icon_style')

    else
      @wndOverlay\Show(false)
      @overlayType = ""

  SaveIconPosition: =>
    @options.location = @wndIcon\GetLocation()\ToTable()
    -- log\info(@GetOptions()) if log and log.info

  RestoreIconPosition: =>
    @wndIcon\MoveToLocation(WindowLocation.new(@options.location)) if @options.location

  Lock: (@locked) =>
    @wndIcon\SetStyle("Moveable", not @locked)
    @wndIcon\SetStyle("Sizable", not @locked)
    @wndIcon\SetStyle("IgnoreMouse", @locked)
    @SaveIconPosition()

  AddFilter: (filterClass, options = {}) =>
    filter = filterClass(@xmlDoc, options)
    table.insert(@options.filters, filter)

  RemoveFilter: (filter) =>
    Helpers.RemoveItemFromList(@options.filters, filter)
    @RenderOptions(@filtersHost, @notificationHost) if @filtersHost

  RemoveButtonClick: (wnd, button) =>
    @RemoveFilter(button\GetData())

  RenderOptions: (@filtersHost, @notificationHost) =>
    @filtersHost\DestroyChildren()
    for i, filter in ipairs(@options.filters)
      filterItem = filter\RenderOptions(@filtersHost)
      removeFilterButton = Apollo.LoadForm(@xmlDoc, "remove_filter", filterItem, self)
      removeFilterButton\SetData(filter)
    @filtersHost\ArrangeChildrenVert()

    @notificationHost\DestroyChildren()  
    @wndNotificationOptions = Apollo.LoadForm(@xmlDoc, "NotificationOptions", @notificationHost, @notificationOptions)
    @wndNotificationOptions\Show(true)
    @notificationOptions\ApplyToForm(@wndNotificationOptions)
    @notificationHost\ArrangeChildrenVert()

    @PrepareSoundsList()
    @PrepareFontsList()

  
  ActualizeData: =>
    @data = {}
    @data.skillName = @options.skillName
    @data.player    = GameLib.GetPlayerUnit()
    @data.ability   = SpellBook.FindAbility(@data.skillName) 
    @data.spell     = SpellBook.GetSpell(@data.ability) if @data.ability
    @data.wndAbility = @wndAbility

  UpdateNumbers: =>
    cdText, chargesText = nil, nil
    if @data.spell ~= nil
      chargesInfo = @data.spell\GetAbilityCharges()
      time = SpellBook.GetCooldownTime(@data.ability, @data.spell)

      cdText = if time < 1
        if time > 0
          string.format("%.1f", time)
        else
          nil
      else
        string.format("%d", math.ceil(time))

      charges = if chargesInfo and chargesInfo.nChargesMax > 0
        chargesInfo.nChargesRemaining
      else
        nil    

      chargesText = if charges ~= nil
        string.format("%d", charges)
      else
        nil    

    if @notificationOptions\Get("cooldown_enabled")

      switch @notificationOptions\Get("cooldown_position")
        when "up_left"
          @wndCD\SetTextFlags("DT_CENTER",  false)
          @wndCD\SetTextFlags("DT_RIGHT",   false)
          @wndCD\SetTextFlags("DT_VCENTER", false)
          @wndCD\SetTextFlags("DT_BOTTOM",  false)
        when "up_center"
          @wndCD\SetTextFlags("DT_CENTER",  true)
          @wndCD\SetTextFlags("DT_RIGHT",   false)
          @wndCD\SetTextFlags("DT_VCENTER", false)
          @wndCD\SetTextFlags("DT_BOTTOM",  false)
        when "up_right"
          @wndCD\SetTextFlags("DT_CENTER",  false)
          @wndCD\SetTextFlags("DT_RIGHT",   true)
          @wndCD\SetTextFlags("DT_VCENTER", false)
          @wndCD\SetTextFlags("DT_BOTTOM",  false)

        when "center_left"
          @wndCD\SetTextFlags("DT_CENTER",  false)
          @wndCD\SetTextFlags("DT_RIGHT",   false)
          @wndCD\SetTextFlags("DT_VCENTER", true)
          @wndCD\SetTextFlags("DT_BOTTOM",  false)
        when "center_center"
          @wndCD\SetTextFlags("DT_CENTER",  true)
          @wndCD\SetTextFlags("DT_RIGHT",   false)
          @wndCD\SetTextFlags("DT_VCENTER", true)
          @wndCD\SetTextFlags("DT_BOTTOM",  false)
        when "center_right"
          @wndCD\SetTextFlags("DT_CENTER",  false)
          @wndCD\SetTextFlags("DT_RIGHT",   true)
          @wndCD\SetTextFlags("DT_VCENTER", true)
          @wndCD\SetTextFlags("DT_BOTTOM",  false)

        when "down_left"
          @wndCD\SetTextFlags("DT_CENTER",  false)
          @wndCD\SetTextFlags("DT_RIGHT",   false)
          @wndCD\SetTextFlags("DT_VCENTER", false)
          @wndCD\SetTextFlags("DT_BOTTOM",  true)
        when "down_center"
          @wndCD\SetTextFlags("DT_CENTER",  true)
          @wndCD\SetTextFlags("DT_RIGHT",   false)
          @wndCD\SetTextFlags("DT_VCENTER", false)
          @wndCD\SetTextFlags("DT_BOTTOM",  true)
        when "down_right"
          @wndCD\SetTextFlags("DT_CENTER",  false)
          @wndCD\SetTextFlags("DT_RIGHT",   true)
          @wndCD\SetTextFlags("DT_VCENTER", false)
          @wndCD\SetTextFlags("DT_BOTTOM",  true)

      cdLocation = @wndCD\GetLocation()\ToTable()
      cdLocation.nOffsets = {
        num(@notificationOptions\Get("cooldown_offset_x"))
        num(@notificationOptions\Get("cooldown_offset_y"))
        num(@notificationOptions\Get("cooldown_offset_x"))
        num(@notificationOptions\Get("cooldown_offset_y"))
      }
      @wndCD\MoveToLocation(WindowLocation.new(cdLocation))

      if @notificationOptions\Get("cooldown_separate_opacity_enabled")
        @wndCD\SetOpacity(num(@notificationOptions\Get("cooldown_separate_opacity")) / 100)
      else
        @wndCD\SetOpacity(@wndAbility\GetOpacity())

      @wndCD\Show(true)
      @wndCD\SetFont(@notificationOptions\Get("cooldown_font"))
      @wndCD\SetText(cdText)
    else
      @wndCD\Show(false)

    @wndCharges\SetText(chargesText)

  ProcessSound: =>
    available = if chargesInfo and chargesInfo.nChargesMax > 0
      chargesInfo.nChargesRemaining > 0
    else
      SpellBook.GetCooldownTime(@data.ability, @data.spell) == 0

    if @filtersPassed and available and @notificationOptions\Get("play_sound")
      if @notificationOptions\Get("play_sound_loop_enabled")
        if ((os.clock() * 1000) - @lastSoundPlayTime) > num(@notificationOptions\Get("play_sound_loop_time"))
          @lastSoundPlayTime = os.clock() * 1000 
          Sound.Play(Sound[@notificationOptions\Get("sound_name")]) if Sound[@notificationOptions\Get("sound_name")]
      else
        unless @soundPlayed
          @soundPlayed = true
          Sound.Play(Sound[@notificationOptions\Get("sound_name")]) if Sound[@notificationOptions\Get("sound_name")]
    else
      @soundPlayed = false

  UpdatePosition: =>
    -- iconLocation = @wndIcon\GetLocation()\ToTable()

    x = num(@notificationOptions\Get("icon_position_x"))
    y = num(@notificationOptions\Get("icon_position_y"))
    s = num(@notificationOptions\Get("icon_size"))
    return if x == @oldX and y == @oldY and s == @oldS

    @oldX = x
    @oldY = y
    @oldS = s

    iconLocation = {
      fPoints: { .5, .5, .5, .5 }
      nOffsets: { x, y, x + s, y + s }
    }
    @noSnap = true
    @wndIcon\MoveToLocation(WindowLocation.new(iconLocation))

  IsPass: =>
    passed = true

    for i, filter in ipairs(@options.filters)
      passed = filter\IsPass(@data, @wndIcon) and passed

    passed

  Update: =>
    @ActualizeData()
    transitionsDisabled = @notificationOptions\Get("disable_transitions")

    if @data.spell == nil
      return @wndIcon\Show(not @locked, transitionsDisabled)

    @SetIcon() if @iconFor ~= @data.skillName
    @SetOverlay()
    @UpdatePosition()
    @UpdateNumbers()

    unless @locked
      return @wndIcon\Show(true)

    @filtersPassed = @IsPass() 
    if @notificationOptions\Get("show_ability_icon")
      @wndIcon\Show(@filtersPassed, transitionsDisabled)
    else
      @wndIcon\Show(false, transitionsDisabled)

    @ProcessSound()




class Watcher
  new: =>
    @activeRules = {}

    @unlockAll = false
    @eventsHidden = nil

    @filters = { 
      AvailabilityFilter
      TimeFilter
      CombatFilter
      ActionSetFilter
      SpecialFilter
      HPFilter
      MPFilter
      ShieldFilter
      ChargeFilter
      ResourcesFilter
      BuffFilter
      LuaFilter
    }
    if log == true
      Apollo.RegisterAddon(self, false, "", {"Gemini:Logging-1.2"})
    else
      Apollo.RegisterAddon(self, false, "", {})

  OnLoad: =>
    if log == true
      geminiLogging = Apollo.GetPackage("Gemini:Logging-1.2").tPackage
      log = geminiLogging\GetLogger()

    @xmlDoc = XmlDoc.CreateFromFile("Watcher.xml")
    @xmlDoc\RegisterCallback("OnDocLoaded", self)

    @timer = ApolloTimer.Create(1 / 20, true, "Update", self)

  OnDocLoaded: =>

    Apollo.RegisterEventHandler("InterfaceMenuListHasLoaded", "OnInterfaceMenuListHasLoaded", self)
    Apollo.RegisterEventHandler("OpenWatcherConfiguration", "ToggleConfigurationWindow", self)
    Apollo.RegisterEventHandler("AbilityBookChange", "OnAbilityBookChange", self)

    Apollo.RegisterSlashCommand("watcher", "OpenWindow", self)

    if @xmlDoc ~= nil and @xmlDoc\IsLoaded()
      @wndMain = Apollo.LoadForm(@xmlDoc, "WatcherOptionsForm", nil, self)
      if @wndMain == nil
        Apollo.AddAddonErrorText(self, "Could not load the main window for some reason.")
        return
      
      @wndMain\Show(false)
      @wndMain\FindChild("FiltersTab")\SetCheck(true)
      @ChangeTab(nil, @wndMain\FindChild("FiltersTab"))

      @wndInstructions = Apollo.LoadForm(@xmlDoc, "MoveInstruction", nil, self)
      @wndInstructions\Show(false)

      @FillFiltersList()

      @ShowRuleSettings(nil)
  
      if @initialized
        @UpdateRulesList()
        @UpdateSkillsList()

  OnAbilityBookChange: (data) =>
    SpellBook.abilities = nil

  OnSave: (saveLevel) =>
    return unless saveLevel == GameLib.CodeEnumAddonSaveLevel.Character
    save = {}
    for i, rule in ipairs(@activeRules)
      rule\SaveIconPosition()
      table.insert(save, rule\GetOptions())

    { rules: save, location: @wndMain\GetLocation()\ToTable() }


  OnRestore: (saveLevel, data) =>
    return unless saveLevel == GameLib.CodeEnumAddonSaveLevel.Character
    if data.location
      @wndLocation = data.location

    if data.rules
      @AddNewRule()\SetOptions(settings, @filters) for i, settings in ipairs(data.rules)


  OnInterfaceMenuListHasLoaded: =>
    Event_FireGenericEvent("InterfaceMenuList_NewAddOn", "Watcher", {"OpenWatcherConfiguration", "", "IconSprites:Icon_Windows32_UI_CRB_InterfaceMenu_Abilities"})

  ToggleConfigurationWindow: =>
    if @wndMain\IsVisible()
      @CloseWindow()
    else
      @OpenWindow()

  OpenWindow: =>
    @wndMain\Show(true)
    @wndMain\MoveToLocation(WindowLocation.new(@wndLocation)) if @wndLocation
    @ShowRuleSettings(@selectedRule)

  CloseWindow: =>
    @wndMain\FindChild("ToggleLock")\SetCheck(false)
    @ToggleLock(nil, @wndMain\FindChild("ToggleLock"))
    @wndMain\Show(false)
    @wndLocation = @wndMain\GetLocation()\ToTable()

  FillFiltersList: =>
    return if @wndMain == nil
    filtersList = @wndMain\FindChild("filters_list")
    filtersList\DestroyChildren()
    for i, filterClass in ipairs(@filters)
      filterItem = Apollo.LoadForm(@xmlDoc, "filter_item", filtersList, self)
      filterItem\SetData({ filter: filterClass })
      filterItem\FindChild("name")\SetText(filterClass.name)

    filtersList\ArrangeChildrenVert()

  AddFilter: (wnd, button) =>
    @selectedRule\AddFilter(button\GetData().filter)
    @ShowRuleSettings(@selectedRule)
    @wndMain\FindChild("add_filter")\SetCheck(false)
    @wndMain\FindChild("add_filter_dd")\Show(false)


  ToggleDD: (wndHandler, wndControl, eMouseButton) =>
    @wndMain\FindChild(wndControl\GetName().."_dd")\Show(wndControl\IsChecked())

  SelectSkill: (wndHandler, wndControl, eMouseButton) =>
    name = wndControl\FindChild("Name")\GetText()
    @wndMain\FindChild("skill_name")\SetCheck(false)
    @wndMain\FindChild("skill_name_dd")\Show(false)
    @NameChanged(name)
    -- @OptionChanged()

  ToggleLock: (wndHandler, wndControl) =>
    @unlockAll = wndControl\IsChecked()
    @wndInstructions\Show(@unlockAll)
    for i, rule in ipairs(@activeRules)
      rule\Lock(not @unlockAll)

  NameChanged: (strText) =>
    return unless @selectedRule
    @wndMain\FindChild("skill_name")\SetText(strText)
    @selectedRule.menuItem\FindChild("Name")\SetText(strText)
    @selectedRule.options.skillName = strText
    @UpdateIcon(strText)

  UpdateIcon: (name) =>
    if spell = SpellBook.FindSpell(name)
      @wndMain\FindChild("Icon")\SetSprite(spell\GetIcon())
    else
      @wndMain\FindChild("Icon")\SetSprite("CRB_Basekit:kitIcon_White_QuestionMark")

  SelectRule: (wndHandler, wndControl) =>
    rule = if wndControl then wndControl\GetData().rule else nil
    @ShowRuleSettings(rule)


  ChangeTab: (wnd, btn) =>
    tabs = {
      FiltersTab: "FiltersOptions"
      NotificationsTab: "NotificationOptions"
    }
    for name, content in pairs(tabs)
      @wndMain\FindChild(content)\Show(name == btn\GetName())

  UpdateSkillsList: (search = '') =>
    return if @wndMain == nil

    abilities  = SpellBook.GetAbilities()
    innates    = SpellBook.GetInnates()
    engiSpells = SpellBook.GetEngineerBotAbilities()

    spells = {}
    table.insert(spells, SpellBook.GetSpell(ability)) for i, ability in ipairs(abilities)
    table.insert(spells, innate) for i, innate in ipairs(innates) when innate\GetName() ~= nil
    table.insert(spells, engiSpell) for i, engiSpell in ipairs(engiSpells)

    table.sort(spells, ((a, b) -> a\GetName() < b\GetName()))

    skillsList = @wndMain\FindChild("SkillsList")
    skillsList\DestroyChildren()

    for i, spell in pairs(spells)
      name = spell\GetName()
      continue if string.find(string.upper(name), " MOUNT") ~= nil
      continue if string.find(string.upper(name), " HOVERBOARD") ~= nil

      icon = spell\GetIcon()

      skillItem = Apollo.LoadForm(@xmlDoc, "SkillItem", skillsList, self)
      skillItem\SetData({name: name})
      skillItem\FindChild("Name")\SetText(name)
      skillItem\FindChild("Icon")\SetSprite(icon)

    skillsList\ArrangeChildrenVert()    

  UpdateRulesList: (selected) =>
    return if @wndMain == nil
    rulesList = @wndMain\FindChild("RulesList")
    rulesList\DestroyChildren()
    for i, rule in ipairs(@activeRules)
      ruleItem = Apollo.LoadForm(@xmlDoc, "RuleItem", rulesList, self)
      ruleItem\SetData({rule: rule})
      ruleItem\SetName(rule.options.skillName)
      ruleItem\FindChild("Name")\SetText(rule.options.skillName)
      rule.menuItem = ruleItem

      if rule == selected or selected == nil
        ruleItem\SetCheck(true)
        @ShowRuleSettings(rule)
        selected = 1

    rulesList\ArrangeChildrenVert()

  ShowRuleSettings: (rule) =>
    @selectedRule = rule
    wnd\Enable(rule ~= nil) for i, wnd in ipairs(@wndMain\FindChild("Event")\GetChildren())

    -- wndEvents = @wndMain\FindChild("Event")
    -- wndRules =  @wndMain\FindChild("Inset")
    -- eventsWidth = wndEvents\GetWidth()
    -- rulesWidth  = wndRules\GetWidth()
    
    -- windowWidth = if rule == nil
    --   rulesWidth + 43
    -- else
    --   math.max(eventsWidth, 400) + rulesWidth + 64

    -- location = @wndMain\GetLocation()\ToTable()
    -- location.nOffsets[3] = location.nOffsets[1] + windowWidth
    -- @wndMain\MoveToLocation(WindowLocation.new(location))
    -- @wndMain\FindChild("Event")\Show(rule ~= nil)
    -- if rule == nil
    --   @wndMain\SetSizingMinimum(windowWidth, 400)
    --   @wndMain\SetSizingMaximum(windowWidth, 950)
    -- else
    @wndMain\SetSizingMinimum(750, 400)
    @wndMain\SetSizingMaximum(1100, 950)

    if rule ~= nil      
      @NameChanged(rule.options.skillName)
      rule\RenderOptions(@wndMain\FindChild("Conditions"), @wndMain\FindChild("NotificationOptionsPlace"))


  AddNewRule: =>
    newRule = Rule(@xmlDoc, self)
    table.insert(@activeRules, newRule)
    @UpdateRulesList(newRule)
    newRule\Lock(not @unlockAll)
    newRule

  RemoveRule: (wndHandler, wndControl) =>
    return unless @selectedRule
    @selectedRule\Destroy()
    ruleIndex = Helpers.GetItemIndex(@activeRules, @selectedRule)
    if ruleIndex ~= nil
      Helpers.RemoveItemFromList(@activeRules, @selectedRule)

    ruleBtn = if @activeRules[ruleIndex]
      @activeRules[ruleIndex]
    else
      @activeRules[ruleIndex-1]

    @SelectRule(nil, if ruleBtn then ruleBtn.menuItem else nil)
    @UpdateRulesList(@selectedRule)

  CloneRule: =>
    return unless @selectedRule
    newRule = Rule(@xmlDoc, self)
    newRule\SetOptions(@selectedRule\GetOptions(), @filters)
    table.insert(@activeRules, newRule)
    @UpdateRulesList(newRule)
    newRule\Lock(not @unlockAll)
    newRule    


  FindAbility: (name) =>
    @abilities = AbilityBook.GetAbilitiesList() unless @abilities
    return nil unless @abilities
    for i, ability in pairs(@abilities)
      return ability if ability.strName == name
    nil

  Update: =>
    unless @initialized
      @abilities = AbilityBook.GetAbilitiesList()
      if @abilities ~= nil and #@abilities > 0 
        @UpdateRulesList()
        @UpdateSkillsList()
        rule\SetIcon() for i, rule in ipairs(@activeRules)
        @initialized = true
      else
        return

    rule\Update() for i, rule in ipairs(@activeRules)

Watcher!