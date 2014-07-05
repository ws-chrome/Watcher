local log = false
local num
num = function(n)
  if tonumber(n) == nil then
    return 0
  else
    return tonumber(n)
  end
end
local ClassResourceNames = {
  [GameLib.CodeEnumClass.Engineer] = "Volatility",
  [GameLib.CodeEnumClass.Spellslinger] = "Spell Power",
  [GameLib.CodeEnumClass.Warrior] = "Kinetic Energy",
  [GameLib.CodeEnumClass.Stalker] = "Suit Power",
  [GameLib.CodeEnumClass.Medic] = "Actuators",
  [GameLib.CodeEnumClass.Esper] = "Psi Points"
}
local ClassResourceIndex = {
  [GameLib.CodeEnumClass.Engineer] = 1,
  [GameLib.CodeEnumClass.Spellslinger] = 4,
  [GameLib.CodeEnumClass.Warrior] = 1,
  [GameLib.CodeEnumClass.Stalker] = 3,
  [GameLib.CodeEnumClass.Medic] = 1,
  [GameLib.CodeEnumClass.Esper] = 1
}
local EngineerSpells = {
  [GameLib.GetSpell(70593):GetName()] = {
    summonAbilityId = 27021,
    tiers = {
      70593,
      70673,
      70674,
      70675,
      70676,
      70677,
      70678,
      70679,
      70680
    }
  },
  [GameLib.GetSpell(51365):GetName()] = {
    summonAbilityId = 27002,
    tiers = {
      51365,
      56267,
      56268,
      56269,
      56270,
      56271,
      56272,
      56273,
      56274
    }
  },
  [GameLib.GetSpell(35501):GetName()] = {
    summonAbilityId = 27082,
    tiers = {
      35501,
      56334,
      56335,
      56336,
      56337,
      56338,
      56339,
      56340,
      56341
    }
  },
  [GameLib.GetSpell(35657):GetName()] = {
    summonAbilityId = 26998,
    tiers = {
      35657,
      55864,
      55865,
      55866,
      55867,
      55868,
      55869,
      55870,
      55871
    }
  }
}
local SpellSlingerAbilities = {
  [20684] = {
    {
      34718,
      34719
    },
    {
      48940,
      48949
    },
    {
      48941,
      48950
    },
    {
      48942,
      48951
    },
    {
      48943,
      48952
    },
    {
      48944,
      48953
    },
    {
      48945,
      48954
    },
    {
      48946,
      48955
    },
    {
      48947,
      48956
    }
  },
  [20734] = {
    {
      34772,
      34773
    },
    {
      48904,
      48913
    },
    {
      48905,
      48914
    },
    {
      48906,
      48915
    },
    {
      48907,
      48916
    },
    {
      48908,
      48917
    },
    {
      48909,
      48918
    },
    {
      48910,
      48919
    },
    {
      48911,
      48920
    }
  },
  [21056] = {
    {
      35356,
      35357,
      35358,
      35359,
      38937,
      51501
    },
    {
      51391,
      51400,
      51410,
      51419
    },
    {
      51392,
      51401,
      51411,
      51420
    },
    {
      51393,
      51402,
      51412,
      51421
    },
    {
      51394,
      51403,
      51413,
      51422
    },
    {
      51395,
      51404,
      51414,
      51423
    },
    {
      51396,
      51405,
      51415,
      51424
    },
    {
      51397,
      51406,
      51416,
      51425
    },
    {
      51398,
      51407,
      51417,
      51426
    }
  },
  [21490] = {
    {
      35870,
      54717
    },
    {
      49730,
      54718
    },
    {
      49731,
      54719
    },
    {
      49732,
      54720
    },
    {
      49733,
      54721
    },
    {
      49734,
      54722
    },
    {
      49735,
      54723
    },
    {
      49736,
      54724
    },
    {
      49737,
      54725
    }
  },
  [21650] = {
    {
      36052,
      36085
    },
    {
      49078,
      49114
    },
    {
      49079,
      49115
    },
    {
      49080,
      49116
    },
    {
      49081,
      49117
    },
    {
      49082,
      49118
    },
    {
      49083,
      49119
    },
    {
      49084,
      49121
    },
    {
      49085,
      49122
    }
  },
  [23274] = {
    {
      38905,
      39324,
      39325,
      69215,
      69224
    },
    {
      49051,
      49060,
      49069,
      69216,
      69225
    },
    {
      49052,
      49061,
      49070,
      69217,
      69226
    },
    {
      49053,
      49062,
      49071,
      69218,
      69227
    },
    {
      49054,
      49063,
      49072,
      69219,
      69228
    },
    {
      49055,
      49064,
      49073,
      69220,
      69229
    },
    {
      49056,
      49065,
      49074,
      69221,
      69230
    },
    {
      49057,
      49066,
      49075,
      69222,
      69231
    },
    {
      49058,
      49067,
      49076,
      69223,
      69232
    }
  },
  [23418] = {
    {
      39068,
      53286
    },
    {
      49558,
      53287
    },
    {
      49560,
      53288
    },
    {
      49561,
      53289
    },
    {
      49562,
      53290
    },
    {
      49563,
      53291
    },
    {
      49564,
      53292
    },
    {
      49565,
      53293
    },
    {
      49566,
      53294
    }
  },
  [23441] = {
    {
      39092,
      39327,
      69761
    },
    {
      49225,
      49234
    },
    {
      49226,
      49235
    },
    {
      49227,
      49236
    },
    {
      49228,
      49237
    },
    {
      49229,
      49238
    },
    {
      49230,
      49239
    },
    {
      49231,
      49240
    },
    {
      49232,
      49241
    }
  },
  [23463] = {
    {
      39116,
      39131
    },
    {
      49640,
      49649
    },
    {
      49641,
      49650
    },
    {
      49642,
      49651
    },
    {
      49643,
      49652
    },
    {
      49644,
      49653
    },
    {
      49645,
      49654
    },
    {
      49646,
      49655
    },
    {
      49647,
      49656
    }
  },
  [23468] = {
    {
      39121,
      47601
    },
    {
      49586,
      49631
    },
    {
      49587,
      49632
    },
    {
      49588,
      49633
    },
    {
      49589,
      49634
    },
    {
      49590,
      49635
    },
    {
      49591,
      49636
    },
    {
      49592,
      49637
    },
    {
      49593,
      49638
    }
  },
  [23479] = {
    {
      39132,
      39133
    },
    {
      49658,
      49667
    },
    {
      49659,
      49668
    },
    {
      49660,
      49669
    },
    {
      49661,
      49670
    },
    {
      49662,
      49671
    },
    {
      49663,
      49672
    },
    {
      49664,
      49673
    },
    {
      49665,
      49674
    }
  },
  [23481] = {
    {
      39134,
      47600
    },
    {
      51800,
      53475
    },
    {
      51801,
      53476
    },
    {
      51802,
      53477
    },
    {
      51803,
      53478
    },
    {
      51804,
      53479
    },
    {
      51805,
      53480
    },
    {
      51806,
      53481
    },
    {
      51807,
      53482
    }
  },
  [27504] = {
    {
      43326,
      43398
    },
    {
      51850,
      51863
    },
    {
      51851,
      51864
    },
    {
      51852,
      51865
    },
    {
      51853,
      51866
    },
    {
      51854,
      51867
    },
    {
      51855,
      51868
    },
    {
      51856,
      51869
    },
    {
      51857,
      51870
    }
  },
  [27736] = {
    {
      43570,
      43619
    },
    {
      54941,
      54989
    },
    {
      54942,
      54990
    },
    {
      54943,
      54991
    },
    {
      54944,
      54992
    },
    {
      54945,
      54993
    },
    {
      54946,
      54994
    },
    {
      54947,
      54995
    },
    {
      54948,
      54996
    }
  },
  [27774] = {
    {
      43609,
      43613
    },
    {
      49178,
      49198
    },
    {
      49179,
      49199
    },
    {
      49180,
      49200
    },
    {
      49181,
      49201
    },
    {
      49182,
      49202
    },
    {
      49183,
      49203
    },
    {
      49184,
      49204
    },
    {
      49185,
      49205
    }
  },
  [23959] = {
    {
      39646,
      47078,
      47079,
      47080,
      47081,
      47082,
      47090
    },
    {
      51691,
      51702,
      51711,
      51720,
      51729
    },
    {
      51692,
      51703,
      51712,
      51721,
      51730
    },
    {
      51693,
      51704,
      51713,
      51722,
      51731
    },
    {
      51695,
      51705,
      51714,
      51723,
      51732
    },
    {
      51696,
      51706,
      51715,
      51724,
      51733
    },
    {
      51697,
      51707,
      51716,
      51725,
      51734
    },
    {
      51698,
      51708,
      51717,
      51726,
      51735
    },
    {
      51699,
      51709,
      51718,
      51727,
      51736
    }
  }
}
local Helpers
do
  local _base_0 = { }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "Helpers"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  local self = _class_0
  self.DeepMerge = function(t1, t2)
    for k, v in pairs(t2) do
      if type(v) == "table" then
        if type(t1[k] or false) == "table" then
          Helpers.DeepMerge(t1[k] or { }, t2[k] or { })
        else
          t1[k] = v
        end
      else
        t1[k] = v
      end
    end
    return t1
  end
  self.GetItemIndex = function(list, item)
    for i, v in ipairs(list) do
      if v == item then
        return i
      end
    end
    return nil
  end
  self.FindInList = function(list, param, val)
    for i, v in ipairs(list) do
      if v[param] == val then
        return v
      end
    end
    return nil
  end
  self.RemoveItemFromList = function(list, item)
    local index = Helpers.GetItemIndex(list, item)
    if index ~= nil then
      table.remove(list, index)
      return true
    end
    return false
  end
  self.PrimitiveDistance = function(x1, y1, x2, y2)
    return math.max(math.abs(x2 - x1), math.abs(y2 - y1))
  end
  self.Corners = function(t)
    return {
      {
        x = t[1],
        y = t[2]
      },
      {
        x = t[3],
        y = t[2]
      },
      {
        x = t[3],
        y = t[4]
      },
      {
        x = t[1],
        y = t[4]
      }
    }
  end
  Helpers = _class_0
end
local Settings
do
  local _base_0 = {
    SetDefaults = function(self, defaults)
      self.defaults = Helpers.DeepMerge({ }, defaults)
    end,
    LoadSettings = function(self, settings)
      self.settings = Helpers.DeepMerge(self.defaults, settings)
    end,
    GetSettings = function(self)
      return self.settings
    end,
    ApplyToForm = function(self, wndForm)
      for key, value in pairs(self.settings) do
        local element = wndForm:FindChild(key)
        if element ~= nil then
          if value == true or value == false then
            element:SetCheck(value)
          elseif element.SetValue ~= nil then
            element:SetValue(value)
            self:SliderChanged(nil, element)
          elseif element:FindChild(value) ~= nil then
            element:SetText(element:FindChild(value):FindChild("Name"):GetText())
          else
            element:SetText(value)
          end
        end
      end
    end,
    Set = function(self, key, value)
      self.settings[key] = value
    end,
    Get = function(self, key)
      return self.settings[key]
    end,
    BooleanToggle = function(self, wnd, button)
      self:Set(button:GetName(), button:IsChecked())
      if wnd == nil or button:GetParent():GetName() ~= "RadioGroup" then
        return 
      end
      for i, btn in ipairs(button:GetParent():GetChildren()) do
        if btn.IsChecked then
          self:BooleanToggle(nil, btn)
        end
      end
    end,
    StringChanged = function(self, wnd, field)
      return self:Set(field:GetName(), field:GetText())
    end,
    SliderChanged = function(self, wnd, slider)
      local wndValue = slider:GetParent():GetParent():FindChild(slider:GetName() .. "_value")
      local metric = wndValue:GetData()
      if metric == nil then
        metric = wndValue:GetText()
        wndValue:SetData(metric)
      end
      wndValue:SetText(string.format("%d%s", slider:GetValue(), metric))
      return self:Set(slider:GetName(), slider:GetValue())
    end,
    DropDownToggle = function(self, wnd, button)
      button:FindChild("DropDown"):Show(button:IsChecked())
      if self.dropdownCallback then
        return self.dropdownCallback(self.parent, button:GetName(), button)
      end
    end,
    SelectDropDown = function(self, wnd, button)
      local dropdown = button
      while dropdown:GetName() ~= "DropDown" do
        dropdown = dropdown:GetParent()
      end
      local toggle = dropdown:GetParent()
      toggle:SetText(button:FindChild("Name"):GetText())
      dropdown:Show(false)
      toggle:SetCheck(false)
      self:Set(toggle:GetName(), button:GetName())
      if self.dropdownCallback then
        return self.dropdownCallback(self.parent, toggle:GetName(), toggle)
      end
    end
  }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function(self)
      self.settings = { }
      self.defaults = { }
    end,
    __base = _base_0,
    __name = "Settings"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Settings = _class_0
end
local SpellBook
do
  local _base_0 = { }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "SpellBook"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  local self = _class_0
  self.GetAbilities = function()
    if self.abilities == nil or #self.abilities <= 0 then
      self.abilities = AbilityBook.GetAbilitiesList() or { }
    end
    return self.abilities
  end
  self.GetInnates = function()
    if self.innates == nil or #self.innates <= 0 then
      self.innates = { }
      local spells = GameLib.GetClassInnateAbilitySpells().tSpells or { }
      for i, spell in ipairs(spells) do
        if spell:GetId() ~= 45000 and spell:GetId() ~= 41504 then
          table.insert(self.innates, spell)
        end
      end
    end
    return self.innates
  end
  self.FindAbility = function(name)
    SpellBook.GetAbilities()
    SpellBook.GetInnates()
    SpellBook.GetEngineerBotAbilities()
    if not (self.abilities) then
      return nil
    end
    local gadgetSpell = GameLib.GetGadgetAbility()
    if gadgetSpell ~= nil and gadgetSpell:GetName() == name then
      return gadgetSpell
    end
    for i, engiSpell in ipairs(self.engineersSpells) do
      if engiSpell:GetName() == name then
        return engiSpell
      end
    end
    for i, innate in ipairs(self.innates) do
      if innate:GetName() == name then
        return innate
      end
    end
    for i, ability in pairs(self.abilities) do
      if ability.strName == name then
        return ability
      end
    end
    return nil
  end
  self.GetEngineerBotAbilities = function()
    if self.engineersSpells ~= nil and #self.engineersSpells > 0 then
      return self.engineersSpells
    end
    self.engineersSpells = { }
    local abilities = SpellBook.GetAbilities()
    for name, data in pairs(EngineerSpells) do
      local spell = nil
      for i, ability in ipairs(abilities) do
        if ability.nId == data.summonAbilityId then
          local tier
          if ability.nCurrentTier > 0 then
            tier = ability.nCurrentTier
          else
            tier = 1
          end
          spell = GameLib.GetSpell(data.tiers[tier])
          table.insert(self.engineersSpells, spell)
          break
        end
      end
    end
    return self.engineersSpells
  end
  self.GetSpell = function(ability)
    if ability == nil then
      return nil
    end
    if ability.GetName then
      return ability
    end
    if ability.nCurrentTier ~= 0 then
      return ability.tTiers[ability.nCurrentTier].splObject
    else
      return ability.tTiers[1].splObject
    end
  end
  self.FindSpell = function(name)
    local ability = SpellBook.FindAbility(name)
    if not (ability) then
      return nil
    end
    return SpellBook.GetSpell(ability)
  end
  self.ExistedBuffs = function(unit)
    local buffs = { }
    if unit ~= nil then
      for i, buffTable in pairs(unit:GetBuffs()) do
        for j, buffInfo in ipairs(buffTable) do
          table.insert(buffs, buffInfo.splEffect:GetName())
        end
      end
    end
    return buffs
  end
  self.GetUnit = function(strTarget)
    local player = GameLib.GetPlayerUnit()
    if string.upper(strTarget) == "PLAYER" then
      return player
    end
    if string.upper(strTarget) == "TARGET" then
      if player ~= nil then
        return player:GetTarget()
      else
        return nil
      end
    end
    if string.upper(strTarget) == "FOCUS" then
      if player ~= nil then
        return player:GetAlternateTarget()
      else
        return nil
      end
    end
    return nil
  end
  self.GetCooldownTime = function(ability, spell)
    if spell == nil then
      return 0
    end
    if spell:GetId() == 47866 or spell:GetId() == 47881 then
      return math.max(GameLib.GetSpell(47866):GetCooldownRemaining(), GameLib.GetSpell(47881):GetCooldownRemaining())
    end
    local chargesInfo = spell:GetAbilityCharges()
    local time
    if chargesInfo and chargesInfo.nChargesMax > 0 then
      time = chargesInfo.fRechargePercentRemaining * chargesInfo.fRechargeTime
    else
      time = spell:GetCooldownRemaining()
    end
    if time == 0 and ability ~= nil and SpellSlingerAbilities[ability.nId] ~= nil and ability.nCurrentTier ~= 0 then
      local altSpellIds = SpellSlingerAbilities[ability.nId][ability.nCurrentTier]
      for i, altSpellId in ipairs(altSpellIds) do
        local altSpell = GameLib.GetSpell(altSpellId)
        local altTime = SpellBook.GetCooldownTime(nil, altSpell)
        if altTime > 0 then
          return altTime
        end
      end
    end
    return time
  end
  SpellBook = _class_0
end
local BaseFilter
do
  local _base_0 = {
    name = "BaseFilter",
    defaultOptions = { },
    windowName = "",
    RenderOptions = function(self, wndHost)
      self.wndOptions = Apollo.LoadForm(self.xmlDoc, self.windowName, wndHost, self.options)
      self.options:ApplyToForm(self.wndOptions)
      if self.PrepareOptions ~= nil then
        self:PrepareOptions(self.wndOptions)
      end
      return self.wndOptions
    end,
    PrepareOptions = function(self, wndOptions) end,
    IsPass = function(self, data)
      return true
    end
  }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function(self, xmlDoc, options)
      if options == nil then
        options = { }
      end
      self.xmlDoc = xmlDoc
      self.options = Settings()
      self.options:SetDefaults(self.defaultOptions)
      self.options:LoadSettings(options)
      if self.Init then
        return self:Init()
      end
    end,
    __base = _base_0,
    __name = "BaseFilter"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  BaseFilter = _class_0
end
local HPFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'HP',
    windowName = "HPFilter",
    defaultOptions = {
      min_hp = 0,
      max_hp = 100,
      min_hp_enabled = false,
      max_hp_enabled = false,
      min_hp_unit = "percent",
      max_hp_unit = "percent",
      target_unit = "Player"
    },
    IsPass = function(self, data)
      local unit = SpellBook.GetUnit(self.options:Get('target_unit'))
      if not (unit) then
        return false
      end
      local maxHealth = unit:GetMaxHealth() or 0
      local health = unit:GetHealth() or 0
      local health_p = (health / maxHealth) * 100
      if self.options:Get('min_hp_enabled') then
        if self.options:Get('min_hp_unit') == "percent" and num(self.options:Get('min_hp')) > health_p then
          return false
        end
        if self.options:Get('min_hp_unit') == "HP" and num(self.options:Get('min_hp')) > health then
          return false
        end
      end
      if self.options:Get('max_hp_enabled') then
        if self.options:Get('max_hp_unit') == "percent" and num(self.options:Get('max_hp')) < health_p then
          return false
        end
        if self.options:Get('max_hp_unit') == "HP" and num(self.options:Get('max_hp')) < health then
          return false
        end
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "HPFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  HPFilter = _class_0
end
local MPFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'MP (Focus)',
    windowName = "MPFilter",
    defaultOptions = {
      min_mp = 0,
      max_mp = 100,
      min_mp_enabled = false,
      max_mp_enabled = false,
      min_mp_unit = "percent",
      max_mp_unit = "percent",
      target_unit = "Player"
    },
    IsPass = function(self, data)
      local unit = SpellBook.GetUnit(self.options:Get('target_unit'))
      if not (unit) then
        return false
      end
      local maxMana = unit:GetMaxMana() or 0
      local mana = unit:GetMana() or 0
      local mana_p = (mana / maxMana) * 100
      if self.options:Get('min_mp_enabled') then
        if self.options:Get('min_mp_unit') == "percent" and num(self.options:Get('min_mp')) > mana_p then
          return false
        end
        if self.options:Get('min_mp_unit') == "MP" and num(self.options:Get('min_mp')) > mana then
          return false
        end
      end
      if self.options:Get('max_mp_enabled') then
        if self.options:Get('max_mp_unit') == "percent" and num(self.options:Get('max_mp')) < mana_p then
          return false
        end
        if self.options:Get('max_mp_unit') == "MP" and num(self.options:Get('max_mp')) < mana then
          return false
        end
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "MPFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  MPFilter = _class_0
end
local ShieldFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Shield Capacity',
    windowName = "ShieldFilter",
    defaultOptions = {
      min_shield = 0,
      max_shield = 100,
      min_shield_enabled = false,
      max_shield_enabled = false,
      min_shield_unit = "percent",
      max_shield_unit = "percent",
      target_unit = "Player"
    },
    IsPass = function(self, data)
      local unit = SpellBook.GetUnit(self.options:Get('target_unit'))
      if not (unit) then
        return false
      end
      local maxShield = unit:GetShieldCapacityMax() or 0
      local shield = unit:GetShieldCapacity() or 0
      local shield_p = (shield / maxShield) * 100
      if self.options:Get('min_shield_enabled') then
        if self.options:Get('min_shield_unit') == "percent" and num(self.options:Get('min_shield')) > shield_p then
          return false
        end
        if self.options:Get('min_shield_unit') == "points" and num(self.options:Get('min_shield')) > shield then
          return false
        end
      end
      if self.options:Get('max_shield_enabled') then
        if self.options:Get('max_shield_unit') == "percent" and num(self.options:Get('max_shield')) < shield_p then
          return false
        end
        if self.options:Get('max_shield_unit') == "points" and num(self.options:Get('max_shield')) < shield then
          return false
        end
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "ShieldFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  ShieldFilter = _class_0
end
local TimeFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Time',
    windowName = "TimeFilter",
    defaultOptions = {
      min_duration = 0,
      max_duration = 10,
      min_duration_enabled = false,
      max_duration_enabled = false
    },
    IsPass = function(self, data)
      local chargesInfo = data.spell:GetAbilityCharges()
      local time = SpellBook.GetCooldownTime(data.ability, data.spell)
      if self.options:Get('min_duration_enabled') then
        if num(self.options:Get('min_duration')) > time then
          return false
        end
      end
      if self.options:Get('max_duration_enabled') then
        if num(self.options:Get('max_duration')) < time and (chargesInfo == nil or chargesInfo.nChargesRemaining == 0) then
          return false
        end
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "TimeFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  TimeFilter = _class_0
end
local AvailabilityFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Availability',
    windowName = "AvailabilityFilter",
    defaultOptions = {
      available_enabled = true,
      available_opacity = 100,
      not_available_enabled = false,
      not_available_opacity = 100
    },
    IsPass = function(self, data)
      local chargesInfo = data.spell:GetAbilityCharges()
      local available
      if chargesInfo and chargesInfo.nChargesMax > 0 then
        available = chargesInfo.nChargesRemaining > 0
      else
        available = SpellBook.GetCooldownTime(data.ability, data.spell) == 0
      end
      if self.options:Get('available_enabled') then
        if available then
          data.wndAbility:SetOpacity(num(self.options:Get('available_opacity')) / 100)
          return true
        end
      end
      if self.options:Get('not_available_enabled') then
        if not available then
          data.wndAbility:SetOpacity(num(self.options:Get('not_available_opacity')) / 100)
          return true
        end
      end
      return false
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "AvailabilityFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  AvailabilityFilter = _class_0
end
local ChargeFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Charges',
    windowName = "ChargeFilter",
    defaultOptions = {
      min_charge_enabled = false,
      min_charge = 0,
      max_charge_enabled = false,
      max_charge = 5
    },
    IsPass = function(self, data)
      local chargesInfo = data.spell:GetAbilityCharges()
      local charges
      if chargesInfo and chargesInfo.nChargesMax > 0 then
        charges = chargesInfo.nChargesRemaining
      else
        charges = nil
      end
      if charges ~= nil then
        if self.options:Get('min_charge_enabled') then
          if num(self.options:Get('min_charge')) > charges then
            return false
          end
        end
        if self.options:Get('max_charge_enabled') then
          if num(self.options:Get('max_charge')) < charges then
            return false
          end
        end
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "ChargeFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  ChargeFilter = _class_0
end
local ResourcesFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Resources',
    windowName = "ResourceFilter",
    defaultOptions = {
      min_resource_enabled = false,
      min_resource = 0,
      max_resource_enabled = false,
      max_resource = 9999
    },
    Init = function(self)
      return Apollo.RegisterEventHandler("CharacterCreated", "OnCharacterCreated", self)
    end,
    OnCharacterCreated = function(self)
      if self.wndOptions then
        return self:UpdateResourceName()
      end
    end,
    PrepareOptions = function(self)
      return self:UpdateResourceName()
    end,
    UpdateResourceName = function(self)
      do
        local player = GameLib.GetPlayerUnit()
        if player then
          self.wndOptions:FindChild("Title"):SetText(ClassResourceNames[player:GetClassId()] .. ":")
          local wndVal = self.wndOptions:FindChild("max_resource")
          local value = tonumber(wndVal:GetText())
          if value > player:GetMaxResource(ClassResourceIndex[player:GetClassId()]) then
            wndVal:SetText(player:GetMaxResource(ClassResourceIndex[player:GetClassId()]))
            return self.options:Set("max_resource", player:GetMaxResource(ClassResourceIndex[player:GetClassId()]))
          end
        end
      end
    end,
    IsPass = function(self, data)
      local resource
      if data.player then
        resource = data.player:GetResource(ClassResourceIndex[data.player:GetClassId()])
      else
        resource = 0
      end
      if self.options:Get('min_resource_enabled') then
        if num(self.options:Get('min_resource')) > resource then
          return false
        end
      end
      if self.options:Get('max_resource_enabled') then
        if num(self.options:Get('max_resource')) < resource then
          return false
        end
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "ResourcesFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  ResourcesFilter = _class_0
end
local BuffFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Buff/Debuff',
    windowName = "BuffFilter",
    defaultOptions = {
      buff_name = "",
      buff_exists = false,
      buff_not_exists = false,
      buff_target = "Player"
    },
    IsPass = function(self, data)
      local unit = SpellBook.GetUnit(self.options:Get('buff_target'))
      local buffs = SpellBook.ExistedBuffs(unit)
      if self.options:Get('buff_exists') then
        if Helpers.GetItemIndex(buffs, self.options:Get('buff_name')) == nil then
          return false
        end
      end
      if self.options:Get('buff_not_exists') then
        if Helpers.GetItemIndex(buffs, self.options:Get('buff_name')) ~= nil then
          return false
        end
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "BuffFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  BuffFilter = _class_0
end
local CombatFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Combat',
    windowName = "CombatFilter",
    defaultOptions = {
      show_in_combat = true,
      show_not_in_combat = true
    },
    IsPass = function(self, data)
      local isInCombat = data.player and data.player:IsInCombat()
      if self.options:Get('show_in_combat') then
        if isInCombat then
          return true
        end
      end
      if self.options:Get('show_not_in_combat') then
        if not (isInCombat) then
          return true
        end
      end
      return false
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "CombatFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  CombatFilter = _class_0
end
local ActionSetFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Action Set',
    windowName = "ActionSetFilter",
    defaultOptions = {
      in_action_set = true
    },
    IsPass = function(self, data)
      local actionSetAbilities = ActionSetLib.GetCurrentActionSet() or { }
      if self.options:Get('in_action_set') and data.ability.nId then
        if Helpers.GetItemIndex(actionSetAbilities, data.ability.nId) == nil then
          return false
        end
      end
      if self.options:Get('in_action_set') and data.ability.GetId then
        local engineersStances = {
          [47866] = 45000,
          [47881] = 41504
        }
        local engineerStanceId = engineersStances[data.ability:GetId()]
        local currentInnateAbility = GameLib.GetClassInnateAbilitySpells().tSpells[GameLib.GetCurrentClassInnateAbilityIndex() * 2]
        if currentInnateAbility ~= nil then
          if engineerStanceId ~= nil then
            if currentInnateAbility:GetId() == engineerStanceId then
              return true
            end
          else
            if currentInnateAbility:GetId() == data.ability:GetId() then
              return true
            end
          end
        end
        for name, spellData in pairs(EngineerSpells) do
          if Helpers.GetItemIndex(spellData.tiers, data.ability:GetId()) ~= nil then
            if Helpers.GetItemIndex(actionSetAbilities, spellData.summonAbilityId) ~= nil then
              return true
            end
          end
        end
        return false
      end
      return true
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "ActionSetFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  ActionSetFilter = _class_0
end
local SpecialFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Specials',
    windowName = "SpecialFilter",
    defaultOptions = {
      after_crit_hit_enabled = false,
      after_crit_hit_time = 5,
      after_crit_heal_enabled = false,
      after_crit_heal_time = 5,
      after_deflect_enabled = false,
      after_deflect_time = 4,
      last_damage_enabled = false,
      last_damage_time = 1.1,
      last_damage_target_only = false,
      last_damage_target_unit = "Target"
    },
    Init = function(self)
      self.lastCriticalHealTime = nil
      self.lastCriticalDmgTime = nil
      self.lastDeflectTime = nil
      self.lastSpellDmgTime = nil
      Apollo.RegisterEventHandler("CombatLogDamage", "OnCombatLogDamage", self)
      Apollo.RegisterEventHandler("CombatLogHeal", "OnCombatLogHeal", self)
      return Apollo.RegisterEventHandler("AttackMissed", "OnMiss", self)
    end,
    OnCombatLogDamage = function(self, data)
      if data.unitCaster ~= nil and data.unitCaster == GameLib.GetPlayerUnit() then
        if not data.bPeriodic and data.eCombatResult == GameLib.CodeEnumCombatResult.Critical then
          self.lastCriticalDmgTime = os.clock()
        end
        if self.options:Get("last_damage_enabled") then
          if self.spellName ~= nil and data.splCallingSpell:GetName() == self.spellName then
            self.targetUnit = SpellBook.GetUnit(self.options:Get("last_damage_target_unit"))
            if self.options:Get("last_damage_target_only") == false or self.targetUnit == data.unitTarget then
              self.lastSpellDmgTime = os.clock()
            end
          end
        end
      end
    end,
    OnCombatLogHeal = function(self, data)
      if data.unitCaster ~= nil and data.unitCaster == GameLib.GetPlayerUnit() then
        if not data.bPeriodic and data.eCombatResult == GameLib.CodeEnumCombatResult.Critical then
          self.lastCriticalHealTime = os.clock()
        end
      end
    end,
    OnMiss = function(self, caster, target, missType)
      if target ~= nil and target == GameLib.GetPlayerUnit() then
        if missType == GameLib.CodeEnumMissType.Dodge then
          self.lastDeflectTime = os.clock()
        end
      end
    end,
    IsPass = function(self, data)
      local passed = true
      self.spellName = data.spell:GetName()
      if self.options:Get('after_crit_hit_enabled') then
        if (os.clock() - num(self.lastCriticalDmgTime)) < num(self.options:Get('after_crit_hit_time')) then
          return true
        end
        passed = false
      end
      if self.options:Get('after_crit_heal_enabled') then
        if (os.clock() - num(self.lastCriticalHealTime)) < num(self.options:Get('after_crit_heal_time')) then
          return true
        end
        passed = false
      end
      if self.options:Get('after_deflect_enabled') then
        if (os.clock() - num(self.lastDeflectTime)) < num(self.options:Get('after_deflect_time')) then
          return true
        end
        passed = false
      end
      if self.options:Get('last_damage_enabled') then
        if (os.clock() - num(self.lastSpellDmgTime)) > num(self.options:Get('last_damage_time')) then
          return true
        end
        passed = false
      end
      return passed
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "SpecialFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  SpecialFilter = _class_0
end
local LuaFilter
do
  local _parent_0 = BaseFilter
  local _base_0 = {
    name = 'Lua',
    windowName = "LuaFilter",
    defaultOptions = {
      command_enabled = false,
      command_code = [[-- Available methods:
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
    },
    IsPass = function(self, data, icon)
      if not (self.options:Get("command_enabled")) then
        return true
      end
      local scriptEnv = {
        Watcher = {
          strSpellName = data.spellName,
          spell = data.spell,
          player = GameLib.GetPlayerUnit(),
          wndIcon = icon,
          Print = function(str)
            return Print(str)
          end,
          FindSpellByName = function(name)
            return SpellBook.FindSpell(name)
          end,
          GetSpellCharges = function(spell)
            local ability = SpellBook.FindAbility(spell:GetName())
            local chargesInfo = spell:GetAbilityCharges()
            if chargesInfo and chargesInfo.nChargesMax > 0 then
              return chargesInfo.nChargesRemaining
            else
              if SpellBook.GetCooldownTime(ability, spell) == 0 then
                return 1
              else
                return 0
              end
            end
          end,
          GetSpellCooldown = function(spell)
            local ability = SpellBook.FindAbility(name)
            spell = SpellBook.GetSpell(spell)
            return SpellBook.GetCooldownTime(ability, spell)
          end,
          IsSpellAvailable = function(spell)
            local ability = SpellBook.FindAbility(spell:GetName())
            local chargesInfo = spell:GetAbilityCharges()
            if chargesInfo and chargesInfo.nChargesMax > 0 then
              return chargesInfo.nChargesRemaining > 0
            else
              return SpellBook.GetCooldownTime(ability, spell) == 0
            end
          end
        }
      }
      local failed = false
      local errorMsg = ""
      local success, func = pcall(function()
        return assert(loadstring(self.options:Get("command_code")))
      end)
      if success then
        setfenv(func, scriptEnv)
        local result
        success, result = pcall(function()
          return func()
        end)
        if success then
          return result
        else
          failed = true
          errorMsg = result
        end
      else
        failed = true
        errorMsg = func
      end
      if failed then
        Print(errorMsg)
        self.wndOptions:FindChild("command_enabled"):SetCheck(false)
        self.options:Set("command_enabled", false)
        return true
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "LuaFilter",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  LuaFilter = _class_0
end
local Rule
do
  local _base_0 = {
    PreviewSound = function(self, wnd, button)
      local sound = button:GetParent():FindChild("sound_name"):GetText()
      if Sound[sound] then
        return Sound.Play(Sound[sound])
      end
    end,
    OptionsDropDown = function(self, name, button)
      if name == "icon_style" then
        local dd = button:FindChild("DropDown")
        self:IconStyleDDSizeChanged(dd, dd:FindChild("style_1"))
      end
      if name == "cooldown_font" then
        self:PrepareFontsList(button:IsChecked())
      end
      if name == "sound_name" then
        return self:PrepareSoundsList(button:IsChecked())
      end
    end,
    IconStyleDDSizeChanged = function(self, wndHandler, wndControl)
      if wndControl:GetName() ~= "style_1" then
        return 
      end
      local width = wndControl:GetWidth()
      if self.oldISDDWidth ~= width then
        self.oldISDDWidth = width
        local delta = width - wndControl:GetHeight()
        local location = wndHandler:GetLocation():ToTable()
        location.nOffsets[4] = location.nOffsets[4] + delta
        return wndHandler:MoveToLocation(WindowLocation.new(location))
      end
    end,
    GetOptions = function(self)
      local filtersOptions = { }
      for i, filter in ipairs(self.options.filters) do
        table.insert(filtersOptions, {
          name = filter.name,
          options = filter.options:GetSettings()
        })
      end
      local result = Helpers.DeepMerge({ }, self.options)
      result.filters = filtersOptions
      result.notificationOptions = self.notificationOptions:GetSettings()
      return result
    end,
    SetOptions = function(self, options, FiltersList)
      local filters = { }
      for i, filterOptions in ipairs(options.filters) do
        local filterClass = Helpers.FindInList(FiltersList, 'name', filterOptions.name)
        table.insert(filters, filterClass(self.xmlDoc, filterOptions.options))
      end
      local result = Helpers.DeepMerge({ }, options)
      result.filters = filters
      self.notificationOptions:LoadSettings(result.notificationOptions or { })
      if self.wndNotificationOptions then
        self.notificationOptions:ApplyToForm(self.wndNotificationOptions)
      end
      self.options = result
      return self:RestoreIconPosition()
    end,
    PrepareSoundsList = function(self, fill)
      if fill == nil then
        fill = false
      end
      local soundsList = self.wndNotificationOptions:FindChild("SoundsList")
      soundsList:DestroyChildren()
      if fill then
        for name, soundId in pairs(Sound) do
          local _continue_0 = false
          repeat
            if not (type(soundId) == "number") then
              _continue_0 = true
              break
            end
            local soundItem = Apollo.LoadForm(self.xmlDoc, "sound_item", soundsList, self.wndNotificationOptions)
            soundItem:FindChild("Name"):SetText(name)
            soundItem:SetName(name)
            _continue_0 = true
          until true
          if not _continue_0 then
            break
          end
        end
      end
      return soundsList:ArrangeChildrenVert()
    end,
    PrepareFontsList = function(self, fill)
      if fill == nil then
        fill = false
      end
      local fonts = Apollo.GetGameFonts()
      local fontsList = self.wndNotificationOptions:FindChild("FontsList")
      fontsList:DestroyChildren()
      if fill then
        for i, fontInfo in ipairs(fonts) do
          local fontItem = Apollo.LoadForm(self.xmlDoc, "font_item", fontsList, self.wndNotificationOptions)
          fontItem:FindChild("Name"):SetText(fontInfo.name)
          fontItem:SetName(fontInfo.name)
        end
      end
      return fontsList:ArrangeChildrenVert()
    end,
    Destroy = function(self)
      return self.wndIcon:Destroy()
    end,
    CreateIcon = function(self)
      self.wndIcon = Apollo.LoadForm(self.xmlDoc, "IconWindow", nil, self)
      self.wndIcon:SetSizingMinimum(15, 15)
      self.wndIcon:SetSizingMaximum(300, 300)
      self.wndCD = self.wndIcon:FindChild("CD")
      self.wndOverlay = self.wndIcon:FindChild("Overlay")
      self.wndAbility = self.wndIcon:FindChild("Ability")
      self.wndCharges = self.wndIcon:FindChild("Charges")
      return self:SetIcon()
    end,
    OffsetIcon = function(self, icon, dX, dY)
      if dX == nil then
        dX = 0
      end
      if dY == nil then
        dY = 0
      end
      local iconLocation = icon:GetLocation():ToTable()
      iconLocation.nOffsets = {
        iconLocation.nOffsets[1] + dX,
        iconLocation.nOffsets[2] + dY,
        iconLocation.nOffsets[3] + dX,
        iconLocation.nOffsets[4] + dY
      }
      return icon:MoveToLocation(WindowLocation.new(iconLocation))
    end,
    UpdateLocation = function(self)
      local location = self.wndIcon:GetLocation():ToTable().nOffsets
      self.notificationOptions:Set('icon_position_x', location[1])
      self.notificationOptions:Set('icon_position_y', location[2])
      self.notificationOptions:Set('icon_size', location[3] - location[1])
      if self.parent.selectedRule ~= self then
        return 
      end
      self.wndNotificationOptions:FindChild("icon_position_x"):SetText(location[1])
      self.wndNotificationOptions:FindChild("icon_position_y"):SetText(location[2])
      return self.wndNotificationOptions:FindChild("icon_size"):SetText(location[3] - location[1])
    end,
    IconResized = function(self)
      if self.noSnap then
        return 
      end
      return self:UpdateLocation()
    end,
    IconMoved = function(self, wnd, icon)
      self:UpdateLocation()
      if Apollo.IsAltKeyDown() then
        return 
      end
      if self.noSnap then
        self.noSnap = false
        return 
      end
      local o1 = self.wndIcon:GetLocation():ToTable().nOffsets
      o1 = {
        o1[1] - 5,
        o1[2] - 5,
        o1[3] + 5,
        o1[4] + 5
      }
      for i, rule in ipairs(self.parent.activeRules) do
        local _continue_0 = false
        repeat
          if rule == self then
            _continue_0 = true
            break
          end
          local ruleIcon = rule.wndIcon
          local o2 = ruleIcon:GetLocation():ToTable().nOffsets
          o2 = {
            o2[1] - 5,
            o2[2] - 5,
            o2[3] + 5,
            o2[4] + 5
          }
          local snapped = false
          if (o1[2] >= o2[2] - 10 and o1[2] <= o2[4] + 10) or (o1[4] >= o2[2] - 10 and o1[4] <= o2[4] + 10) then
            if math.abs(o1[1] - o2[3]) < 10 then
              self:OffsetIcon(self.wndIcon, o2[3] - o1[1], 0)
              snapped = true
            elseif math.abs(o1[3] - o2[1]) < 10 then
              self:OffsetIcon(self.wndIcon, o2[1] - o1[3], 0)
              snapped = true
            elseif math.abs(o1[1] - o2[1]) < 10 then
              self:OffsetIcon(self.wndIcon, o2[1] - o1[1], 0)
              snapped = true
            elseif math.abs(o1[3] - o2[3]) < 10 then
              self:OffsetIcon(self.wndIcon, o2[3] - o1[3], 0)
              snapped = true
            end
          end
          if (o1[1] >= o2[1] - 10 and o1[1] <= o2[3] + 10) or (o1[3] >= o2[1] - 10 and o1[3] <= o2[3] + 10) then
            if math.abs(o1[2] - o2[4]) < 10 then
              self:OffsetIcon(self.wndIcon, 0, o2[4] - o1[2])
              snapped = true
            elseif math.abs(o1[4] - o2[2]) < 10 then
              self:OffsetIcon(self.wndIcon, 0, o2[2] - o1[4])
              snapped = true
            elseif math.abs(o1[2] - o2[2]) < 10 then
              self:OffsetIcon(self.wndIcon, 0, o2[2] - o1[2])
              snapped = true
            elseif math.abs(o1[4] - o2[4]) < 10 then
              self:OffsetIcon(self.wndIcon, 0, o2[4] - o1[4])
              snapped = true
            end
          end
          if snapped then
            return self:UpdateLocation()
          end
          _continue_0 = true
        until true
        if not _continue_0 then
          break
        end
      end
    end,
    SetIcon = function(self)
      if self.data.spell then
        self.iconFor = self.data.spellName
        return self.wndAbility:SetSprite(self.data.spell:GetIcon())
      else
        self.iconFor = nil
        return self.wndAbility:SetSprite("CRB_Basekit:kitIcon_White_QuestionMark")
      end
    end,
    SetOverlay = function(self)
      local styles = {
        style_1 = "CRB_ActionBarIconSprites:sprAS_Chnl_Flash",
        style_2 = "CRB_ActionBarIconSprites:sprAS_Prompt_Interrupt",
        style_3 = "CRB_ActionBarIconSprites:sprAS_Prompt_Interrupt2",
        style_4 = "CRB_ActionBarIconSprites:sprAS_Prompt_Resource2",
        style_5 = "CRB_ActionBarIconSprites:sprAS_Prompt_Resource",
        style_6 = "CRB_ActionBarIconSprites:sprAS_Prompt_Stealth"
      }
      local chargesInfo
      if self.data.spell then
        chargesInfo = self.data.spell:GetAbilityCharges()
      else
        chargesInfo = nil
      end
      local available
      if chargesInfo and chargesInfo.nChargesMax > 0 then
        available = chargesInfo.nChargesRemaining > 0
      else
        available = SpellBook.GetCooldownTime(self.data.ability, self.data.spell) == 0
      end
      if available and self.notificationOptions:Get('icon_style_enabled') then
        if self.overlayType ~= self.notificationOptions:Get('icon_style') then
          local sprite = styles[self.notificationOptions:Get('icon_style')]
          self.wndOverlay:SetSprite(sprite)
          self.wndOverlay:Show(true)
          self.overlayType = self.notificationOptions:Get('icon_style')
        end
      else
        self.wndOverlay:Show(false)
        self.overlayType = ""
      end
    end,
    SaveIconPosition = function(self)
      self.options.location = self.wndIcon:GetLocation():ToTable()
    end,
    RestoreIconPosition = function(self)
      if self.options.location then
        return self.wndIcon:MoveToLocation(WindowLocation.new(self.options.location))
      end
    end,
    Lock = function(self, locked)
      self.locked = locked
      self.wndIcon:SetStyle("Moveable", not self.locked)
      self.wndIcon:SetStyle("Sizable", not self.locked)
      self.wndIcon:SetStyle("IgnoreMouse", self.locked)
      return self:SaveIconPosition()
    end,
    AddFilter = function(self, filterClass, options)
      if options == nil then
        options = { }
      end
      local filter = filterClass(self.xmlDoc, options)
      return table.insert(self.options.filters, filter)
    end,
    RemoveFilter = function(self, filter)
      Helpers.RemoveItemFromList(self.options.filters, filter)
      if self.filtersHost then
        return self:RenderOptions(self.filtersHost, self.notificationHost)
      end
    end,
    RemoveButtonClick = function(self, wnd, button)
      return self:RemoveFilter(button:GetData())
    end,
    RenderOptions = function(self, filtersHost, notificationHost)
      self.filtersHost, self.notificationHost = filtersHost, notificationHost
      self.filtersHost:DestroyChildren()
      for i, filter in ipairs(self.options.filters) do
        local filterItem = filter:RenderOptions(self.filtersHost)
        local removeFilterButton = Apollo.LoadForm(self.xmlDoc, "remove_filter", filterItem, self)
        removeFilterButton:SetData(filter)
      end
      self.filtersHost:ArrangeChildrenVert()
      self.notificationHost:DestroyChildren()
      self.wndNotificationOptions = Apollo.LoadForm(self.xmlDoc, "NotificationOptions", self.notificationHost, self.notificationOptions)
      self.wndNotificationOptions:Show(true)
      self.notificationOptions:ApplyToForm(self.wndNotificationOptions)
      self.notificationHost:ArrangeChildrenVert()
      self:PrepareSoundsList()
      return self:PrepareFontsList()
    end,
    ActualizeData = function(self)
      self.data = { }
      self.data.skillName = self.options.skillName
      self.data.player = GameLib.GetPlayerUnit()
      self.data.ability = SpellBook.FindAbility(self.data.skillName)
      if self.data.ability then
        self.data.spell = SpellBook.GetSpell(self.data.ability)
      end
      self.data.wndAbility = self.wndAbility
    end,
    UpdateNumbers = function(self)
      local cdText, chargesText = nil, nil
      if self.data.spell ~= nil then
        local chargesInfo = self.data.spell:GetAbilityCharges()
        local time = SpellBook.GetCooldownTime(self.data.ability, self.data.spell)
        if time < 1 then
          if time > 0 then
            cdText = string.format("%.1f", time)
          else
            cdText = nil
          end
        else
          cdText = string.format("%d", math.ceil(time))
        end
        local charges
        if chargesInfo and chargesInfo.nChargesMax > 0 then
          charges = chargesInfo.nChargesRemaining
        else
          charges = nil
        end
        if charges ~= nil then
          chargesText = string.format("%d", charges)
        else
          chargesText = nil
        end
      end
      if self.notificationOptions:Get("cooldown_enabled") then
        local _exp_0 = self.notificationOptions:Get("cooldown_position")
        if "up_left" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", false)
          self.wndCD:SetTextFlags("DT_RIGHT", false)
          self.wndCD:SetTextFlags("DT_VCENTER", false)
          self.wndCD:SetTextFlags("DT_BOTTOM", false)
        elseif "up_center" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", true)
          self.wndCD:SetTextFlags("DT_RIGHT", false)
          self.wndCD:SetTextFlags("DT_VCENTER", false)
          self.wndCD:SetTextFlags("DT_BOTTOM", false)
        elseif "up_right" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", false)
          self.wndCD:SetTextFlags("DT_RIGHT", true)
          self.wndCD:SetTextFlags("DT_VCENTER", false)
          self.wndCD:SetTextFlags("DT_BOTTOM", false)
        elseif "center_left" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", false)
          self.wndCD:SetTextFlags("DT_RIGHT", false)
          self.wndCD:SetTextFlags("DT_VCENTER", true)
          self.wndCD:SetTextFlags("DT_BOTTOM", false)
        elseif "center_center" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", true)
          self.wndCD:SetTextFlags("DT_RIGHT", false)
          self.wndCD:SetTextFlags("DT_VCENTER", true)
          self.wndCD:SetTextFlags("DT_BOTTOM", false)
        elseif "center_right" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", false)
          self.wndCD:SetTextFlags("DT_RIGHT", true)
          self.wndCD:SetTextFlags("DT_VCENTER", true)
          self.wndCD:SetTextFlags("DT_BOTTOM", false)
        elseif "down_left" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", false)
          self.wndCD:SetTextFlags("DT_RIGHT", false)
          self.wndCD:SetTextFlags("DT_VCENTER", false)
          self.wndCD:SetTextFlags("DT_BOTTOM", true)
        elseif "down_center" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", true)
          self.wndCD:SetTextFlags("DT_RIGHT", false)
          self.wndCD:SetTextFlags("DT_VCENTER", false)
          self.wndCD:SetTextFlags("DT_BOTTOM", true)
        elseif "down_right" == _exp_0 then
          self.wndCD:SetTextFlags("DT_CENTER", false)
          self.wndCD:SetTextFlags("DT_RIGHT", true)
          self.wndCD:SetTextFlags("DT_VCENTER", false)
          self.wndCD:SetTextFlags("DT_BOTTOM", true)
        end
        local cdLocation = self.wndCD:GetLocation():ToTable()
        cdLocation.nOffsets = {
          num(self.notificationOptions:Get("cooldown_offset_x")),
          num(self.notificationOptions:Get("cooldown_offset_y")),
          num(self.notificationOptions:Get("cooldown_offset_x")),
          num(self.notificationOptions:Get("cooldown_offset_y"))
        }
        self.wndCD:MoveToLocation(WindowLocation.new(cdLocation))
        if self.notificationOptions:Get("cooldown_separate_opacity_enabled") then
          self.wndCD:SetOpacity(num(self.notificationOptions:Get("cooldown_separate_opacity")) / 100)
        else
          self.wndCD:SetOpacity(self.wndAbility:GetOpacity())
        end
        self.wndCD:Show(true)
        self.wndCD:SetFont(self.notificationOptions:Get("cooldown_font"))
        self.wndCD:SetText(cdText)
      else
        self.wndCD:Show(false)
      end
      return self.wndCharges:SetText(chargesText)
    end,
    ProcessSound = function(self)
      local available
      if chargesInfo and chargesInfo.nChargesMax > 0 then
        available = chargesInfo.nChargesRemaining > 0
      else
        available = SpellBook.GetCooldownTime(self.data.ability, self.data.spell) == 0
      end
      if self.filtersPassed and available and self.notificationOptions:Get("play_sound") then
        if self.notificationOptions:Get("play_sound_loop_enabled") then
          if ((os.clock() * 1000) - self.lastSoundPlayTime) > num(self.notificationOptions:Get("play_sound_loop_time")) then
            self.lastSoundPlayTime = os.clock() * 1000
            if Sound[self.notificationOptions:Get("sound_name")] then
              return Sound.Play(Sound[self.notificationOptions:Get("sound_name")])
            end
          end
        else
          if not (self.soundPlayed) then
            self.soundPlayed = true
            if Sound[self.notificationOptions:Get("sound_name")] then
              return Sound.Play(Sound[self.notificationOptions:Get("sound_name")])
            end
          end
        end
      else
        self.soundPlayed = false
      end
    end,
    UpdatePosition = function(self)
      local x = num(self.notificationOptions:Get("icon_position_x"))
      local y = num(self.notificationOptions:Get("icon_position_y"))
      local s = num(self.notificationOptions:Get("icon_size"))
      if x == self.oldX and y == self.oldY and s == self.oldS then
        return 
      end
      self.oldX = x
      self.oldY = y
      self.oldS = s
      local iconLocation = {
        fPoints = {
          .5,
          .5,
          .5,
          .5
        },
        nOffsets = {
          x,
          y,
          x + s,
          y + s
        }
      }
      self.noSnap = true
      return self.wndIcon:MoveToLocation(WindowLocation.new(iconLocation))
    end,
    IsPass = function(self)
      local passed = true
      for i, filter in ipairs(self.options.filters) do
        passed = filter:IsPass(self.data, self.wndIcon) and passed
      end
      return passed
    end,
    Update = function(self)
      self:ActualizeData()
      local transitionsDisabled = self.notificationOptions:Get("disable_transitions")
      if self.data.spell == nil then
        return self.wndIcon:Show(not self.locked, transitionsDisabled)
      end
      if self.iconFor ~= self.data.skillName then
        self:SetIcon()
      end
      self:SetOverlay()
      self:UpdatePosition()
      self:UpdateNumbers()
      if not (self.locked) then
        return self.wndIcon:Show(true)
      end
      self.filtersPassed = self:IsPass()
      if self.notificationOptions:Get("show_ability_icon") then
        self.wndIcon:Show(self.filtersPassed, transitionsDisabled)
      else
        self.wndIcon:Show(false, transitionsDisabled)
      end
      return self:ProcessSound()
    end
  }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function(self, xmlDoc, parent, options)
      if options == nil then
        options = { }
      end
      self.xmlDoc, self.parent = xmlDoc, parent
      self.locked = true
      self.defaults = {
        skillName = "",
        filters = { }
      }
      self.options = Helpers.DeepMerge(self.defaults, options)
      self.notificationOptions = Settings()
      self.notificationOptions.parent = self
      self.notificationOptions.dropdownCallback = self.OptionsDropDown
      self.notificationOptions.PreviewSound = self.PreviewSound
      self.notificationOptions:SetDefaults({
        show_ability_icon = true,
        disable_transitions = false,
        icon_style_enabled = false,
        icon_style = "style_1",
        icon_position_x = 0,
        icon_position_y = 0,
        icon_size = 50,
        cooldown_enabled = true,
        cooldown_font = "CRB_Header24",
        cooldown_position = "center_center",
        cooldown_offset_x = 0,
        cooldown_offset_y = 0,
        cooldown_separate_opacity_enabled = false,
        cooldown_separate_opacity = 100,
        play_sound = false,
        sound_name = "PlayUIDatachronBeep",
        play_sound_loop_enabled = false,
        play_sound_loop_time = 300
      })
      self.notificationOptions:LoadSettings({ })
      self.data = {
        skillName = ""
      }
      self.soundPlayed = true
      self.lastSoundPlayTime = 0
      return self:CreateIcon()
    end,
    __base = _base_0,
    __name = "Rule"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Rule = _class_0
end
local Watcher
do
  local _base_0 = {
    OnLoad = function(self)
      if log == true then
        local geminiLogging = Apollo.GetPackage("Gemini:Logging-1.2").tPackage
        log = geminiLogging:GetLogger()
      end
      self.xmlDoc = XmlDoc.CreateFromFile("Watcher.xml")
      self.xmlDoc:RegisterCallback("OnDocLoaded", self)
      self.timer = ApolloTimer.Create(1 / 20, true, "Update", self)
    end,
    OnDocLoaded = function(self)
      Apollo.RegisterEventHandler("InterfaceMenuListHasLoaded", "OnInterfaceMenuListHasLoaded", self)
      Apollo.RegisterEventHandler("OpenWatcherConfiguration", "ToggleConfigurationWindow", self)
      Apollo.RegisterEventHandler("AbilityBookChange", "OnAbilityBookChange", self)
      Apollo.RegisterSlashCommand("watcher", "OpenWindow", self)
      if self.xmlDoc ~= nil and self.xmlDoc:IsLoaded() then
        self.wndMain = Apollo.LoadForm(self.xmlDoc, "WatcherOptionsForm", nil, self)
        if self.wndMain == nil then
          Apollo.AddAddonErrorText(self, "Could not load the main window for some reason.")
          return 
        end
        self.wndMain:Show(false)
        self.wndMain:FindChild("FiltersTab"):SetCheck(true)
        self:ChangeTab(nil, self.wndMain:FindChild("FiltersTab"))
        self.wndInstructions = Apollo.LoadForm(self.xmlDoc, "MoveInstruction", nil, self)
        self.wndInstructions:Show(false)
        self:FillFiltersList()
        self:ShowRuleSettings(nil)
        if self.initialized then
          self:UpdateRulesList()
          return self:UpdateSkillsList()
        end
      end
    end,
    OnAbilityBookChange = function(self, data)
      SpellBook.abilities = nil
    end,
    OnSave = function(self, saveLevel)
      if not (saveLevel == GameLib.CodeEnumAddonSaveLevel.Character) then
        return 
      end
      local save = { }
      for i, rule in ipairs(self.activeRules) do
        rule:SaveIconPosition()
        table.insert(save, rule:GetOptions())
      end
      return {
        rules = save,
        location = self.wndMain:GetLocation():ToTable()
      }
    end,
    OnRestore = function(self, saveLevel, data)
      if not (saveLevel == GameLib.CodeEnumAddonSaveLevel.Character) then
        return 
      end
      if data.location then
        self.wndLocation = data.location
      end
      if data.rules then
        for i, settings in ipairs(data.rules) do
          self:AddNewRule():SetOptions(settings, self.filters)
        end
      end
    end,
    OnInterfaceMenuListHasLoaded = function(self)
      return Event_FireGenericEvent("InterfaceMenuList_NewAddOn", "Watcher", {
        "OpenWatcherConfiguration",
        "",
        "IconSprites:Icon_Windows32_UI_CRB_InterfaceMenu_Abilities"
      })
    end,
    ToggleConfigurationWindow = function(self)
      if self.wndMain:IsVisible() then
        return self:CloseWindow()
      else
        return self:OpenWindow()
      end
    end,
    OpenWindow = function(self)
      self.wndMain:Show(true)
      if self.wndLocation then
        self.wndMain:MoveToLocation(WindowLocation.new(self.wndLocation))
      end
      return self:ShowRuleSettings(self.selectedRule)
    end,
    CloseWindow = function(self)
      self.wndMain:FindChild("ToggleLock"):SetCheck(false)
      self:ToggleLock(nil, self.wndMain:FindChild("ToggleLock"))
      self.wndMain:Show(false)
      self.wndLocation = self.wndMain:GetLocation():ToTable()
    end,
    FillFiltersList = function(self)
      if self.wndMain == nil then
        return 
      end
      local filtersList = self.wndMain:FindChild("filters_list")
      filtersList:DestroyChildren()
      for i, filterClass in ipairs(self.filters) do
        local filterItem = Apollo.LoadForm(self.xmlDoc, "filter_item", filtersList, self)
        filterItem:SetData({
          filter = filterClass
        })
        filterItem:FindChild("name"):SetText(filterClass.name)
      end
      return filtersList:ArrangeChildrenVert()
    end,
    AddFilter = function(self, wnd, button)
      self.selectedRule:AddFilter(button:GetData().filter)
      self:ShowRuleSettings(self.selectedRule)
      self.wndMain:FindChild("add_filter"):SetCheck(false)
      return self.wndMain:FindChild("add_filter_dd"):Show(false)
    end,
    ToggleDD = function(self, wndHandler, wndControl, eMouseButton)
      return self.wndMain:FindChild(wndControl:GetName() .. "_dd"):Show(wndControl:IsChecked())
    end,
    SelectSkill = function(self, wndHandler, wndControl, eMouseButton)
      local name = wndControl:FindChild("Name"):GetText()
      self.wndMain:FindChild("skill_name"):SetCheck(false)
      self.wndMain:FindChild("skill_name_dd"):Show(false)
      return self:NameChanged(name)
    end,
    ToggleLock = function(self, wndHandler, wndControl)
      self.unlockAll = wndControl:IsChecked()
      self.wndInstructions:Show(self.unlockAll)
      for i, rule in ipairs(self.activeRules) do
        rule:Lock(not self.unlockAll)
      end
    end,
    NameChanged = function(self, strText)
      if not (self.selectedRule) then
        return 
      end
      self.wndMain:FindChild("skill_name"):SetText(strText)
      self.selectedRule.menuItem:FindChild("Name"):SetText(strText)
      self.selectedRule.options.skillName = strText
      return self:UpdateIcon(strText)
    end,
    UpdateIcon = function(self, name)
      do
        local spell = SpellBook.FindSpell(name)
        if spell then
          return self.wndMain:FindChild("Icon"):SetSprite(spell:GetIcon())
        else
          return self.wndMain:FindChild("Icon"):SetSprite("CRB_Basekit:kitIcon_White_QuestionMark")
        end
      end
    end,
    SelectRule = function(self, wndHandler, wndControl)
      local rule
      if wndControl then
        rule = wndControl:GetData().rule
      else
        rule = nil
      end
      return self:ShowRuleSettings(rule)
    end,
    ChangeTab = function(self, wnd, btn)
      local tabs = {
        FiltersTab = "FiltersOptions",
        NotificationsTab = "NotificationOptions"
      }
      for name, content in pairs(tabs) do
        self.wndMain:FindChild(content):Show(name == btn:GetName())
      end
    end,
    UpdateSkillsList = function(self, search)
      if search == nil then
        search = ''
      end
      if self.wndMain == nil then
        return 
      end
      local abilities = SpellBook.GetAbilities()
      local innates = SpellBook.GetInnates()
      local engiSpells = SpellBook.GetEngineerBotAbilities()
      local spells = { }
      for i, ability in ipairs(abilities) do
        table.insert(spells, SpellBook.GetSpell(ability))
      end
      for i, innate in ipairs(innates) do
        if innate:GetName() ~= nil then
          table.insert(spells, innate)
        end
      end
      for i, engiSpell in ipairs(engiSpells) do
        table.insert(spells, engiSpell)
      end
      table.sort(spells, (function(a, b)
        return a:GetName() < b:GetName()
      end))
      local skillsList = self.wndMain:FindChild("SkillsList")
      skillsList:DestroyChildren()
      for i, spell in pairs(spells) do
        local _continue_0 = false
        repeat
          local name = spell:GetName()
          if string.find(string.upper(name), " MOUNT") ~= nil then
            _continue_0 = true
            break
          end
          if string.find(string.upper(name), " HOVERBOARD") ~= nil then
            _continue_0 = true
            break
          end
          local icon = spell:GetIcon()
          local skillItem = Apollo.LoadForm(self.xmlDoc, "SkillItem", skillsList, self)
          skillItem:SetData({
            name = name
          })
          skillItem:FindChild("Name"):SetText(name)
          skillItem:FindChild("Icon"):SetSprite(icon)
          _continue_0 = true
        until true
        if not _continue_0 then
          break
        end
      end
      return skillsList:ArrangeChildrenVert()
    end,
    UpdateRulesList = function(self, selected)
      if self.wndMain == nil then
        return 
      end
      local rulesList = self.wndMain:FindChild("RulesList")
      rulesList:DestroyChildren()
      for i, rule in ipairs(self.activeRules) do
        local ruleItem = Apollo.LoadForm(self.xmlDoc, "RuleItem", rulesList, self)
        ruleItem:SetData({
          rule = rule
        })
        ruleItem:SetName(rule.options.skillName)
        ruleItem:FindChild("Name"):SetText(rule.options.skillName)
        rule.menuItem = ruleItem
        if rule == selected or selected == nil then
          ruleItem:SetCheck(true)
          self:ShowRuleSettings(rule)
          selected = 1
        end
      end
      return rulesList:ArrangeChildrenVert()
    end,
    ShowRuleSettings = function(self, rule)
      self.selectedRule = rule
      for i, wnd in ipairs(self.wndMain:FindChild("Event"):GetChildren()) do
        wnd:Enable(rule ~= nil)
      end
      self.wndMain:SetSizingMinimum(750, 400)
      self.wndMain:SetSizingMaximum(1100, 950)
      if rule ~= nil then
        self:NameChanged(rule.options.skillName)
        return rule:RenderOptions(self.wndMain:FindChild("Conditions"), self.wndMain:FindChild("NotificationOptionsPlace"))
      end
    end,
    AddNewRule = function(self)
      local newRule = Rule(self.xmlDoc, self)
      table.insert(self.activeRules, newRule)
      self:UpdateRulesList(newRule)
      newRule:Lock(not self.unlockAll)
      return newRule
    end,
    RemoveRule = function(self, wndHandler, wndControl)
      if not (self.selectedRule) then
        return 
      end
      self.selectedRule:Destroy()
      local ruleIndex = Helpers.GetItemIndex(self.activeRules, self.selectedRule)
      if ruleIndex ~= nil then
        Helpers.RemoveItemFromList(self.activeRules, self.selectedRule)
      end
      local ruleBtn
      if self.activeRules[ruleIndex] then
        ruleBtn = self.activeRules[ruleIndex]
      else
        ruleBtn = self.activeRules[ruleIndex - 1]
      end
      self:SelectRule(nil, (function()
        if ruleBtn then
          return ruleBtn.menuItem
        else
          return nil
        end
      end)())
      return self:UpdateRulesList(self.selectedRule)
    end,
    CloneRule = function(self)
      if not (self.selectedRule) then
        return 
      end
      local newRule = Rule(self.xmlDoc, self)
      newRule:SetOptions(self.selectedRule:GetOptions(), self.filters)
      table.insert(self.activeRules, newRule)
      self:UpdateRulesList(newRule)
      newRule:Lock(not self.unlockAll)
      return newRule
    end,
    FindAbility = function(self, name)
      if not (self.abilities) then
        self.abilities = AbilityBook.GetAbilitiesList()
      end
      if not (self.abilities) then
        return nil
      end
      for i, ability in pairs(self.abilities) do
        if ability.strName == name then
          return ability
        end
      end
      return nil
    end,
    Update = function(self)
      if not (self.initialized) then
        self.abilities = AbilityBook.GetAbilitiesList()
        if self.abilities ~= nil and #self.abilities > 0 then
          self:UpdateRulesList()
          self:UpdateSkillsList()
          for i, rule in ipairs(self.activeRules) do
            rule:SetIcon()
          end
          self.initialized = true
        else
          return 
        end
      end
      for i, rule in ipairs(self.activeRules) do
        rule:Update()
      end
    end
  }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function(self)
      self.activeRules = { }
      self.unlockAll = false
      self.eventsHidden = nil
      self.filters = {
        AvailabilityFilter,
        TimeFilter,
        CombatFilter,
        ActionSetFilter,
        SpecialFilter,
        HPFilter,
        MPFilter,
        ShieldFilter,
        ChargeFilter,
        ResourcesFilter,
        BuffFilter,
        LuaFilter
      }
      if log == true then
        return Apollo.RegisterAddon(self, false, "", {
          "Gemini:Logging-1.2"
        })
      else
        return Apollo.RegisterAddon(self, false, "", { })
      end
    end,
    __base = _base_0,
    __name = "Watcher"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Watcher = _class_0
end
return Watcher()
