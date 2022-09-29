local sec = 1000 -- 1 วินาที
cfg = {}
cfg['font'] = 'font4thai'
cfg['Delay'] = 500
cfg['Keys'] = {'E', 38}
cfg["DisableKeys"] =
    { --  ปิด Keys ที่จะไม่ให้ใช้งานระหว่างโพร
    24, -- INPUT_ATTACK
    25, -- INPUT_AIM
    140, -- ATTACK (R)
    21, -- INPUT_SPRINT
    22, -- INPUT_JUMP
    -- 38,   -- INPUT_PICKUP (E)
    29, -- (B)
    73, -- (X)
    323, -- (X)
    245, -- (T)
    246, -- (Y)
    170 -- (F3)
    }

cfg.bilps = {
    Pos = {
        x = 2657.57,
        y = 2806.97,
        z = 34.15
    },
    Blips = {
        Id = 317,
        Color = 0,
        Size = 1.4,
        Text = '<font face="sarabun">โพเสส</font>' -- ฟ้อน ภาษาไทย --
    }
}

cfg['zone'] = {

    ['book1'] = {
        name = 'โพหนังสือ', -- ชื่อ
        coords = vector3(2657.57, 2806.97, 34.15), -- ตำแหน่ง
        Marker = {
            type = 42,
            color = {
                r = 139,
                g = 0,
                b = 255,
                a = 100
            },
            size = {
                x = 0.70,
                y = 0.70,
                z = 0.70
            }
        }, -- จุด สี ตำแหน่ง 
        TextShow = "กด~y~[~r~E~y~]~w~เพื่อโพหนังสือ", -- ตัวหนังสือที่จะโชว์
        Distance = 2.5, -- ระยะเดินเข้าหา
        xItem = {
            Add = {{
                name = 'stone',
                ct = 1,
                pct = 100
            }, -- แร่ดิบ 
            {
                name = 'copper',
                ct = 1,
                pct = 20
            }, -- แดง 
            {
                name = 'diamond',
                ct = 1,
                pct = 5
            }, -- ฟ้า 
            {
                name = 'gold',
                ct = 1,
                pct = 14
            }, {
                name = 'iron',
                ct = 1,
                pct = 16
            }, {
                name = 'd_violet',
                ct = 1,
                pct = 5
            }},
            Remove = {
                name = 'pika_redrock',
                ct = 2
            } -- ไอเท็มที่จะให้ทำการ ลบออกจากตัว
        },
        Time = 5 * sec -- 2 คูณ กับ วินาที
    }
}
