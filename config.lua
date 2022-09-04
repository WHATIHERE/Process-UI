local sec = 1000
cfg = {}
cfg['font'] = 'font4thai'
cfg['Delay'] = 500
cfg['Keys'] = {'E',38}
cfg["DisableKeys"] = {                        --  ปิด Keys ที่จะไม่ให้ใช้งานระหว่างโพร
    24,   -- INPUT_ATTACK
    25,   -- INPUT_AIM
    140,  -- ATTACK (R)
    21,   -- INPUT_SPRINT
    22,   -- INPUT_JUMP
    -- 38,   -- INPUT_PICKUP (E)
    29,   -- (B)
    73,   -- (X)
    323,  -- (X)
    245,  -- (T)
    246,  -- (Y)
    170,  -- (F3)
}
cfg['zone'] = {


    ['book1'] = { 
        name = 'โพหนังสือ',
        coords = vector3(1390.746, -720.2733, 73.233489),
        --Blips = { OpenBlip = false, name = '<font face="sarabun">จุดโพหนังสือ</font>' , sprite = 489, color = 46,  scale = 0.9 },
        Marker = { type = 2 , color = { r = 255, g = 0, b = 0, a = 100 }, size = {x = 0.70, y = 0.70, z = 0.70},},
        TextShow = "กด~y~[~r~E~y~]~w~เพื่อโพหนังสือ",
        Distance = 2.5,
        xItem = { 
            	Add = { name = 'book' , ct =  10 , pct = 100},
				Remove = { name = 'paper' , ct =  20}

            }, 
			Time = 2 * sec
    },

    ['book2'] = { 
        name = 'โพหนังสือ',
        coords = vector3(-313.5077, -1648.346, 37.159057),
        --Blips = { OpenBlip = false, name = '<font face="sarabun">จุดโพหนังสือ</font>' , sprite = 489, color = 46,  scale = 0.9 },
        Marker = { type = 2 , color = { r = 255, g = 0, b = 0, a = 100 }, size = {x = 0.70, y = 0.70, z = 0.70},},
        TextShow = "กด~y~[~r~E~y~]~w~เพื่อโพหนังสือ",
        Distance = 2.5,
        xItem = { 
            	Add = { name = 'book' , ct =  10 , pct = 100},
				Remove = { name = 'paper' , ct =  20}

            }, 
			Time = 2 * sec
    },

	['book3'] = { 
        name = 'โพหนังสือ',
        coords = vector3(-1606.028, -923.2301, 14.283857),
        --Blips = { OpenBlip = false, name = '<font face="sarabun">จุดโพหนังสือ</font>' , sprite = 489, color = 46,  scale = 0.9 },
        Marker = { type = 2 , color = { r = 255, g = 0, b = 0, a = 100 }, size = {x = 0.70, y = 0.70, z = 0.70},},
        TextShow = "กด~y~[~r~E~y~]~w~เพื่อโพหนังสือ",
        Distance = 2.5,
        xItem = { 
            	Add = { name = 'book' , ct =  10 , pct = 100},
				Remove = { name = 'paper' , ct =  20}

            }, 
			Time = 2 * sec
    },

	['book4'] = { 
        name = 'โพหนังสือ',
        coords = vector3(-1165.909, -1721.817, 4.2587285),
        --Blips = { OpenBlip = false, name = '<font face="sarabun">จุดโพหนังสือ</font>' , sprite = 489, color = 46,  scale = 0.9 },
        Marker = { type = 2 , color = { r = 255, g = 0, b = 0, a = 100 }, size = {x = 0.70, y = 0.70, z = 0.70},},
        TextShow = "กด~y~[~r~E~y~]~w~เพื่อโพหนังสือ",
        Distance = 2.5,
        xItem = { 
            	Add = { name = 'book' , ct =  10 , pct = 100},
				Remove = { name = 'paper' , ct =  20}

            }, 
			Time = 2 * sec
    },

}
