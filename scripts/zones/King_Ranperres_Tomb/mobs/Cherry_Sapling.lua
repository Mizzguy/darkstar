-----------------------------------
-- Area: King Ranperres Tomb
-- NPC:  Cherry Sapling
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    SetServerVariable("[POP]Cemetery Cherry",0);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    SetServerVariable("[POP]Cemetery Cherry",GetServerVariable("[POP]Cemetery Cherry") + 1);

    if (GetServerVariable("[POP]Cemetery Cherry") == 8) then
        SetServerVariable("[POP]Cemetery Cherry",0);
        SpawnMob(17555863); -- Pop Cemetery Cherry !

    end

end;