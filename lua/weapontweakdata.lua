CloneClass(WeaponTweakData)

function WeaponTweakData:_create_table_structure(...)
  log("[BotWeapons] Setting up additional npc weapon usages")
  self.orig._create_table_structure(self, ...)
  
  -- copy animations from usage
  for _, v in pairs(self) do
    if type(v) == "table" then
      if v.usage then
        v.anim = v.usage
      end
    end
  end
  
  self.g36_npc.usage = "g36"
  self.m249_npc.usage = "m249"
  self.scar_npc.usage = "scar"
end

function WeaponTweakData:_init_data_r870_npc()
  self.orig._init_data_r870_npc(self)
  self.benelli_npc.sounds.prefix = "benelli_m4_npc"
end

function WeaponTweakData:_init_data_mossberg_npc()
  self.mossberg_npc.sounds.prefix = "huntsman_npc"
  self.mossberg_npc.use_data.selection_index = 2
  self.mossberg_npc.DAMAGE = 6
  self.mossberg_npc.muzzleflash = "effects/payday2/particles/weapons/762_auto"
  self.mossberg_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_slug_semi"
  self.mossberg_npc.CLIP_AMMO_MAX = 2
  self.mossberg_npc.NR_CLIPS_MAX = 6
  self.mossberg_npc.hold = "rifle"
  self.mossberg_npc.alert_size = 3000
  self.mossberg_npc.suppression = 2
  self.mossberg_npc.is_shotgun = true
end

function WeaponTweakData:_init_data_mp5_npc()
  self.orig._init_data_mp5_npc(self)
  self.akmsu_smg_npc.sounds.prefix = "akmsu_npc"
  self.asval_smg_npc.sounds.prefix = "val_npc"
end

function WeaponTweakData:_init_data_mac11_npc()
  self.orig._init_data_mac11_npc(self)
  self.mac11_npc.sounds.prefix = "mac10_npc"
end

function WeaponTweakData:_init_data_boot_npc()
  self.boot_npc = deep_clone(self.r870_npc)
  self.boot_npc.sounds.prefix = "boot_npc"
end

function WeaponTweakData:_init_data_famas_npc()
  self.famas_npc = deep_clone(self.m4_npc)
  self.famas_npc.sounds.prefix = "famas_npc"
  self.famas_npc.auto.fire_rate = 0.15
end

function WeaponTweakData:_init_data_m14_npc()
  self.m14_npc.sounds.prefix = "m14_npc"
  self.m14_npc.use_data.selection_index = 2
  self.m14_npc.DAMAGE = 4
  self.m14_npc.muzzleflash = "effects/payday2/particles/weapons/762_auto"
  self.m14_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_556"
  self.m14_npc.CLIP_AMMO_MAX = 10
  self.m14_npc.NR_CLIPS_MAX = 8
  self.m14_npc.auto.fire_rate = 0.3
  self.m14_npc.hold = "rifle"
  self.m14_npc.alert_size = 5000
  self.m14_npc.suppression = 2
  self.m14_npc.usage = "m14"
end

function WeaponTweakData:_init_data_p90_npc()
  self.p90_npc = deep_clone(self.mp5_npc)
  self.p90_npc.sounds.prefix = "p90_npc"
  self.p90_npc.auto.fire_rate = 0.11
  self.p90_npc.hold = "pistol"
end

function WeaponTweakData:_init_data_judge_npc()
  self.judge_npc.sounds.prefix = "judge_npc"
  self.judge_npc.use_data.selection_index = 1
  self.judge_npc.DAMAGE = 4
  self.judge_npc.muzzleflash = "effects/payday2/particles/weapons/9mm_auto"
  self.judge_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_slug_semi"
  self.judge_npc.CLIP_AMMO_MAX = 6
  self.judge_npc.NR_CLIPS_MAX = 8
  self.judge_npc.hold = "pistol"
  self.judge_npc.alert_size = 5000
  self.judge_npc.suppression = 1.8
  self.judge_npc.is_shotgun = true
  self.judge_npc.auto = nil
  self.judge_npc.usage = "judge"
end

function WeaponTweakData:_init_data_x_c45_npc()
  self.x_c45_npc.sounds.prefix = "c45_npc"
  self.x_c45_npc.use_data.selection_index = 1
  self.x_c45_npc.DAMAGE = 1
  self.x_c45_npc.muzzleflash = "effects/payday2/particles/weapons/9mm_auto"
  self.x_c45_npc.muzzleflash_silenced = "effects/payday2/particles/weapons/9mm_auto_silence"
  self.x_c45_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_9mm"
  self.x_c45_npc.CLIP_AMMO_MAX = 30
  self.x_c45_npc.NR_CLIPS_MAX = 5
  self.x_c45_npc.hold = "akimbo_pistol"
  self.x_c45_npc.alert_size = 2500
  self.x_c45_npc.suppression = 1
end

function WeaponTweakData:_init_data_x_sr2_npc()
  self.x_sr2_npc.sounds.prefix = "sr2_x_npc"
  self.x_sr2_npc.use_data.selection_index = 2
  self.x_sr2_npc.DAMAGE = 1
  self.x_sr2_npc.muzzleflash = "effects/payday2/particles/weapons/9mm_auto"
  self.x_sr2_npc.muzzleflash_silenced = "effects/payday2/particles/weapons/9mm_auto_silence"
  self.x_sr2_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_9mm"
  self.x_sr2_npc.CLIP_AMMO_MAX = 60
  self.x_sr2_npc.NR_CLIPS_MAX = 5
  self.x_sr2_npc.auto.fire_rate = 0.12
  self.x_sr2_npc.hold = "akimbo_pistol"
  self.x_sr2_npc.alert_size = 1800
  self.x_sr2_npc.suppression = 2
  self.x_sr2_npc.usage = "akimbo_auto"
end

function WeaponTweakData:_init_data_x_mp5_npc()
  self.x_mp5_npc = deep_clone(self.x_sr2_npc)
  self.x_mp5_npc.sounds.prefix = "mp5_x_npc"
end

function WeaponTweakData:_init_data_x_akmsu_npc()
  self.x_akmsu_npc = deep_clone(self.x_sr2_npc)
  self.x_akmsu_npc.sounds.prefix = "akmsu_x_npc"
end

function WeaponTweakData:_init_data_ksg_npc()
  self.ksg_npc = deep_clone(self.r870_npc)
  self.ksg_npc.sounds.prefix = "keltec_npc"
  self.ksg_npc.has_suppressor = "suppressed_a"
end

function WeaponTweakData:_init_data_l85a2_npc()
  self.l85a2_npc = deep_clone(self.m4_npc)
  self.l85a2_npc.sounds.prefix = "l85_npc"
end

function WeaponTweakData:_init_data_sterling_npc()
  self.sterling_npc = deep_clone(self.mp5_npc)
  self.sterling_npc.sounds.prefix = "sterling_npc"
  self.sterling_npc.CLIP_AMMO_MAX = 40
  self.sterling_npc.auto.fire_rate = 0.3
  self.sterling_npc.hold = "pistol"
end

function WeaponTweakData:_init_data_s552_npc()
  self.s552_npc = deep_clone(self.m4_npc)
  self.s552_npc.sounds.prefix = "sig552_npc"
  self.s552_secondary_npc = deep_clone(self.s552_npc)
  self.s552_secondary_npc.use_data.selection_index = 1
end

function WeaponTweakData:_init_data_deagle_npc()
  self.deagle_npc = deep_clone(self.raging_bull_npc)
  self.deagle_npc.sounds.prefix = "deagle_npc"
  self.deagle_primary_npc = deep_clone(self.deagle_npc)
  self.deagle_primary_npc.use_data.selection_index = 2
end

function WeaponTweakData:_init_data_hk21_npc()
  self.hk21_npc.sounds.prefix = "hk23e_npc"
  self.hk21_npc.use_data.selection_index = 2
  self.hk21_npc.DAMAGE = 2
  self.hk21_npc.muzzleflash = "effects/payday2/particles/weapons/big_762_auto"
  self.hk21_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_556_lmg"
  self.hk21_npc.CLIP_AMMO_MAX = 200
  self.hk21_npc.NR_CLIPS_MAX = 5
  self.hk21_npc.auto.fire_rate = 0.15
  self.hk21_npc.hold = "rifle"
  self.hk21_npc.alert_size = 5000
  self.hk21_npc.suppression = 1
  self.hk21_npc.usage = "m249"
  self.hk21_secondary_npc = deep_clone(self.hk21_npc)
  self.hk21_secondary_npc.use_data.selection_index = 1
end

function WeaponTweakData:_init_data_tecci_npc()
  self.tecci_npc = deep_clone(self.m249_npc)
  self.tecci_npc.sounds.prefix = "tecci_npc"
  self.tecci_npc.muzzleflash = "effects/payday2/particles/weapons/556_auto"
  self.tecci_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_556"
  self.tecci_npc.auto.fire_rate = 0.15
end

function WeaponTweakData:_init_data_glock_18_npc()
  self.glock_18_npc = deep_clone(self.mac11_npc)
  self.glock_18_npc.sounds.prefix = "g18c_npc"
  self.glock_18_npc.anim = "c45"
  self.glock_18c_primary_npc = deep_clone(self.glock_18_npc)
  self.glock_18c_primary_npc.use_data.selection_index = 2
end

function WeaponTweakData:_init_data_spas12_npc()
  self.spas12_npc = deep_clone(self.r870_npc)
  self.spas12_npc.sounds.prefix = "spas_npc"
end

function WeaponTweakData:_init_data_m1928_npc()
  self.m1928_npc = deep_clone(self.mp5_npc)
  self.m1928_npc.sounds.prefix = "m1928_npc"
  self.m1928_npc.CLIP_AMMO_MAX = 40
  self.m1928_npc.auto.fire_rate = 0.2
end

function WeaponTweakData:_init_data_vhs_npc()
  self.vhs_npc = deep_clone(self.m4_npc)
  self.vhs_npc.sounds.prefix = "vhs_npc"
  self.vhs_npc.auto.fire_rate = 0.1
  self.vhs_npc.has_suppressor = "suppressed_a"
end

function WeaponTweakData:_init_data_x_b92fs_npc()
  self.x_b92fs_npc = deep_clone(self.x_c45_npc)
  self.x_b92fs_npc.sounds.prefix = "beretta_npc"
  self.x_b92fs_npc.alert_size = 300
  self.x_b92fs_npc.suppression = 0.3
end