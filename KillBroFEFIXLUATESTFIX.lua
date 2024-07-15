--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Part0 = Instance.new("Part")
Part1 = Instance.new("Part")
CylinderMesh2 = Instance.new("CylinderMesh")
Part3 = Instance.new("Part")
SpecialMesh4 = Instance.new("SpecialMesh")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Weld7 = Instance.new("Weld")
Weld8 = Instance.new("Weld")
Weld9 = Instance.new("Weld")
Weld10 = Instance.new("Weld")
Part11 = Instance.new("Part")
CylinderMesh12 = Instance.new("CylinderMesh")
Part13 = Instance.new("Part")
Part14 = Instance.new("Part")
Weld15 = Instance.new("Weld")
Weld16 = Instance.new("Weld")
Weld17 = Instance.new("Weld")
Weld18 = Instance.new("Weld")
Weld19 = Instance.new("Weld")
Weld20 = Instance.new("Weld")
Weld21 = Instance.new("Weld")
Weld22 = Instance.new("Weld")
Weld23 = Instance.new("Weld")
Weld24 = Instance.new("Weld")
Weld25 = Instance.new("Weld")
Weld26 = Instance.new("Weld")
WedgePart27 = Instance.new("WedgePart")
WedgePart28 = Instance.new("WedgePart")
WedgePart29 = Instance.new("WedgePart")
WedgePart30 = Instance.new("WedgePart")
WedgePart31 = Instance.new("WedgePart")
WedgePart32 = Instance.new("WedgePart")
WedgePart33 = Instance.new("WedgePart")
WedgePart34 = Instance.new("WedgePart")
WedgePart35 = Instance.new("WedgePart")
WedgePart36 = Instance.new("WedgePart")
WedgePart37 = Instance.new("WedgePart")
WedgePart38 = Instance.new("WedgePart")
Weld39 = Instance.new("Weld")
Part40 = Instance.new("Part")
Part41 = Instance.new("Part")
SpecialMesh42 = Instance.new("SpecialMesh")
Part43 = Instance.new("Part")
SpecialMesh44 = Instance.new("SpecialMesh")
Part45 = Instance.new("Part")
SpecialMesh46 = Instance.new("SpecialMesh")
Part47 = Instance.new("Part")
Part48 = Instance.new("Part")
Part49 = Instance.new("Part")
Part50 = Instance.new("Part")
CylinderMesh51 = Instance.new("CylinderMesh")
Part52 = Instance.new("Part")
CylinderMesh53 = Instance.new("CylinderMesh")
Weld54 = Instance.new("Weld")
Weld55 = Instance.new("Weld")
Weld56 = Instance.new("Weld")
Weld57 = Instance.new("Weld")
Weld58 = Instance.new("Weld")
Weld59 = Instance.new("Weld")
Weld60 = Instance.new("Weld")
Weld61 = Instance.new("Weld")
Weld62 = Instance.new("Weld")
Weld63 = Instance.new("Weld")
Weld64 = Instance.new("Weld")
Weld65 = Instance.new("Weld")
Weld66 = Instance.new("Weld")
Weld67 = Instance.new("Weld")
Weld68 = Instance.new("Weld")
Weld69 = Instance.new("Weld")
Weld70 = Instance.new("Weld")
Weld71 = Instance.new("Weld")
Weld72 = Instance.new("Weld")
Weld73 = Instance.new("Weld")
Weld74 = Instance.new("Weld")
Weld75 = Instance.new("Weld")
Weld76 = Instance.new("Weld")
Weld77 = Instance.new("Weld")
Weld78 = Instance.new("Weld")
Weld79 = Instance.new("Weld")
Weld80 = Instance.new("Weld")
Weld81 = Instance.new("Weld")
Weld82 = Instance.new("Weld")
Weld83 = Instance.new("Weld")
Weld84 = Instance.new("Weld")
Weld85 = Instance.new("Weld")
Weld86 = Instance.new("Weld")
Weld87 = Instance.new("Weld")
Weld88 = Instance.new("Weld")
Weld89 = Instance.new("Weld")
Weld90 = Instance.new("Weld")
Weld91 = Instance.new("Weld")
Weld92 = Instance.new("Weld")
Weld93 = Instance.new("Weld")
Weld94 = Instance.new("Weld")
Weld95 = Instance.new("Weld")
Weld96 = Instance.new("Weld")
Weld97 = Instance.new("Weld")
Weld98 = Instance.new("Weld")
Weld99 = Instance.new("Weld")
Weld100 = Instance.new("Weld")
Weld101 = Instance.new("Weld")
Weld102 = Instance.new("Weld")
Weld103 = Instance.new("Weld")
Weld104 = Instance.new("Weld")
Weld105 = Instance.new("Weld")
Weld106 = Instance.new("Weld")
Weld107 = Instance.new("Weld")
Weld108 = Instance.new("Weld")
Weld109 = Instance.new("Weld")
Weld110 = Instance.new("Weld")
Weld111 = Instance.new("Weld")
Weld112 = Instance.new("Weld")
Weld113 = Instance.new("Weld")
Weld114 = Instance.new("Weld")
Weld115 = Instance.new("Weld")
Weld116 = Instance.new("Weld")
Weld117 = Instance.new("Weld")
Weld118 = Instance.new("Weld")
Weld119 = Instance.new("Weld")
Weld120 = Instance.new("Weld")
Weld121 = Instance.new("Weld")
Part122 = Instance.new("Part")
CylinderMesh123 = Instance.new("CylinderMesh")
Part124 = Instance.new("Part")
CylinderMesh125 = Instance.new("CylinderMesh")
Part126 = Instance.new("Part")
CylinderMesh127 = Instance.new("CylinderMesh")
Part128 = Instance.new("Part")
CylinderMesh129 = Instance.new("CylinderMesh")
Part130 = Instance.new("Part")
CylinderMesh131 = Instance.new("CylinderMesh")
Part132 = Instance.new("Part")
CylinderMesh133 = Instance.new("CylinderMesh")
Part134 = Instance.new("Part")
CylinderMesh135 = Instance.new("CylinderMesh")
Part136 = Instance.new("Part")
CylinderMesh137 = Instance.new("CylinderMesh")
Part138 = Instance.new("Part")
CylinderMesh139 = Instance.new("CylinderMesh")
Part140 = Instance.new("Part")
CylinderMesh141 = Instance.new("CylinderMesh")
Part142 = Instance.new("Part")
SpecialMesh143 = Instance.new("SpecialMesh")
Part144 = Instance.new("Part")
SpecialMesh145 = Instance.new("SpecialMesh")
Part146 = Instance.new("Part")
SpecialMesh147 = Instance.new("SpecialMesh")
Part148 = Instance.new("Part")
SpecialMesh149 = Instance.new("SpecialMesh")
Part150 = Instance.new("Part")
SpecialMesh151 = Instance.new("SpecialMesh")
Part152 = Instance.new("Part")
SpecialMesh153 = Instance.new("SpecialMesh")
Part154 = Instance.new("Part")
SpecialMesh155 = Instance.new("SpecialMesh")
Part156 = Instance.new("Part")
Part157 = Instance.new("Part")
Part158 = Instance.new("Part")
Part159 = Instance.new("Part")
CylinderMesh160 = Instance.new("CylinderMesh")
Part161 = Instance.new("Part")
CylinderMesh162 = Instance.new("CylinderMesh")
Part163 = Instance.new("Part")
CylinderMesh164 = Instance.new("CylinderMesh")
Part165 = Instance.new("Part")
CylinderMesh166 = Instance.new("CylinderMesh")
Part167 = Instance.new("Part")
CylinderMesh168 = Instance.new("CylinderMesh")
Part169 = Instance.new("Part")
CylinderMesh170 = Instance.new("CylinderMesh")
Part171 = Instance.new("Part")
CylinderMesh172 = Instance.new("CylinderMesh")
Part173 = Instance.new("Part")
CylinderMesh174 = Instance.new("CylinderMesh")
Part175 = Instance.new("Part")
CylinderMesh176 = Instance.new("CylinderMesh")
Part177 = Instance.new("Part")
CylinderMesh178 = Instance.new("CylinderMesh")
Part179 = Instance.new("Part")
CylinderMesh180 = Instance.new("CylinderMesh")
Part181 = Instance.new("Part")
CylinderMesh182 = Instance.new("CylinderMesh")
Part183 = Instance.new("Part")
SpecialMesh184 = Instance.new("SpecialMesh")
Part185 = Instance.new("Part")
SpecialMesh186 = Instance.new("SpecialMesh")
Part187 = Instance.new("Part")
SpecialMesh188 = Instance.new("SpecialMesh")
Part189 = Instance.new("Part")
SpecialMesh190 = Instance.new("SpecialMesh")
Part191 = Instance.new("Part")
SpecialMesh192 = Instance.new("SpecialMesh")
Part193 = Instance.new("Part")
SpecialMesh194 = Instance.new("SpecialMesh")
Part195 = Instance.new("Part")
SpecialMesh196 = Instance.new("SpecialMesh")
Part197 = Instance.new("Part")
Part198 = Instance.new("Part")
Part199 = Instance.new("Part")
Part200 = Instance.new("Part")
CylinderMesh201 = Instance.new("CylinderMesh")
Part202 = Instance.new("Part")
CylinderMesh203 = Instance.new("CylinderMesh")
Part204 = Instance.new("Part")
CylinderMesh205 = Instance.new("CylinderMesh")
Part206 = Instance.new("Part")
CylinderMesh207 = Instance.new("CylinderMesh")
Part208 = Instance.new("Part")
CylinderMesh209 = Instance.new("CylinderMesh")
Part210 = Instance.new("Part")
CylinderMesh211 = Instance.new("CylinderMesh")
Part212 = Instance.new("Part")
CylinderMesh213 = Instance.new("CylinderMesh")
Part214 = Instance.new("Part")
CylinderMesh215 = Instance.new("CylinderMesh")
Part216 = Instance.new("Part")
CylinderMesh217 = Instance.new("CylinderMesh")
Part218 = Instance.new("Part")
CylinderMesh219 = Instance.new("CylinderMesh")
Part220 = Instance.new("Part")
CylinderMesh221 = Instance.new("CylinderMesh")
Part222 = Instance.new("Part")
CylinderMesh223 = Instance.new("CylinderMesh")
Part224 = Instance.new("Part")
SpecialMesh225 = Instance.new("SpecialMesh")
Part226 = Instance.new("Part")
SpecialMesh227 = Instance.new("SpecialMesh")
Part228 = Instance.new("Part")
SpecialMesh229 = Instance.new("SpecialMesh")
Part230 = Instance.new("Part")
SpecialMesh231 = Instance.new("SpecialMesh")
Part232 = Instance.new("Part")
SpecialMesh233 = Instance.new("SpecialMesh")
Part234 = Instance.new("Part")
SpecialMesh235 = Instance.new("SpecialMesh")
Part236 = Instance.new("Part")
SpecialMesh237 = Instance.new("SpecialMesh")
Weld238 = Instance.new("Weld")
Part239 = Instance.new("Part")
Part240 = Instance.new("Part")
Part241 = Instance.new("Part")
Part242 = Instance.new("Part")
Part243 = Instance.new("Part")
Part244 = Instance.new("Part")
Part245 = Instance.new("Part")
Part246 = Instance.new("Part")
Part247 = Instance.new("Part")
Part248 = Instance.new("Part")
Part249 = Instance.new("Part")
Part250 = Instance.new("Part")
Part251 = Instance.new("Part")
Weld252 = Instance.new("Weld")
Weld253 = Instance.new("Weld")
Weld254 = Instance.new("Weld")
Weld255 = Instance.new("Weld")
Weld256 = Instance.new("Weld")
Weld257 = Instance.new("Weld")
Weld258 = Instance.new("Weld")
Weld259 = Instance.new("Weld")
Weld260 = Instance.new("Weld")
Weld261 = Instance.new("Weld")
Weld262 = Instance.new("Weld")
Weld263 = Instance.new("Weld")
Part0.Name = "Head"
Part0.Parent = mas
Part0.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part0.Position = Vector3.new(-57.5625, 11, -61)
Part0.Size = Vector3.new(1.198365330696106, 1.076080322265625, 1.1983649730682373)
Part0.Anchored = true
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.TopSurface = Enum.SurfaceType.Smooth
Part1.Parent = Part0
Part1.CFrame = CFrame.new(-57.5625, 11.0730152, -61, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
Part1.Position = Vector3.new(-57.5625, 11.073015213012695, -61)
Part1.Size = Vector3.new(1.1983647346496582, 0.44021567702293396, 1.1983647346496582)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.Material = Enum.Material.SmoothPlastic
Part1.TopSurface = Enum.SurfaceType.Smooth
CylinderMesh2.Parent = Part1
Part3.Parent = Part0
Part3.CFrame = CFrame.new(-57.5625, 10.7061691, -61, -1, 0, 0, 0, -0.999999821, 0, 0, 0, 1)
Part3.Orientation = Vector3.new(0, 0, 180)
Part3.Position = Vector3.new(-57.5625, 10.706169128417969, -61)
Part3.Rotation = Vector3.new(0, 0, 180)
Part3.Size = Vector3.new(1.1983647346496582, 0.684779942035675, 1.1983647346496582)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.Material = Enum.Material.SmoothPlastic
Part3.TopSurface = Enum.SurfaceType.Smooth
SpecialMesh4.Parent = Part3
SpecialMesh4.MeshType = Enum.MeshType.Sphere
Part5.Parent = Part0
Part5.CFrame = CFrame.new(-57.5625, 11.2931213, -61, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 1)
Part5.Position = Vector3.new(-57.5625, 11.293121337890625, -61)
Part5.Size = Vector3.new(1.1983647346496582, 0.684779942035675, 1.1983647346496582)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.Material = Enum.Material.SmoothPlastic
Part5.TopSurface = Enum.SurfaceType.Smooth
SpecialMesh6.Parent = Part5
SpecialMesh6.MeshType = Enum.MeshType.Sphere
Weld7.Parent = Part5
Weld7.C0 = CFrame.new(0, -0.586952209, 0, -1, 0, 0, 0, -0.999999881, 0, 0, 0, 1)
Weld7.Part0 = Part5
Weld7.Part1 = Part3
Weld7.part1 = Part3
Weld8.Parent = Part5
Weld8.C0 = CFrame.new(0, -0.366846085, 0, -1, 0, 0, 0, -0.99999994, 0, 0, 0, 1)
Weld8.Part0 = Part5
Weld8.Part1 = Part11
Weld8.part1 = Part11
Weld9.Parent = Part5
Weld9.C0 = CFrame.new(0, -0.220106125, 0, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 1)
Weld9.Part0 = Part5
Weld9.Part1 = Part1
Weld9.part1 = Part1
Weld10.Parent = Part0
Weld10.C0 = CFrame.new(0, -0.0737247467, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Weld10.Part0 = Part0
Weld10.Part1 = Part11
Weld10.part1 = Part11
Part11.Parent = Part0
Part11.CFrame = CFrame.new(-57.5625, 10.9262753, -61, -1, 0, 0, 0, -1, 0, 0, 0, 1)
Part11.Orientation = Vector3.new(0, 0, 180)
Part11.Position = Vector3.new(-57.5625, 10.926275253295898, -61)
Part11.Rotation = Vector3.new(0, 0, 180)
Part11.Size = Vector3.new(1.1983647346496582, 0.44021567702293396, 1.1983647346496582)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.Material = Enum.Material.SmoothPlastic
Part11.TopSurface = Enum.SurfaceType.Smooth
CylinderMesh12.Parent = Part11
Part13.Name = "Limb"
Part13.Parent = mas
Part13.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part13.Position = Vector3.new(-57.5625, 11, -61)
Part13.Size = Vector3.new(1.0009993314743042, 1.9543342590332031, 1.0009993314743042)
Part13.Anchored = true
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part14.Name = "CREATED BY JKEEPWASHERE"
Part14.Parent = Part13
Part14.CFrame = CFrame.new(-57.5625, 10.9999962, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part14.Position = Vector3.new(-57.5625, 10.999996185302734, -61)
Part14.Size = Vector3.new(1.0009993314743042, 1.9543321132659912, 1.0009993314743042)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.Material = Enum.Material.Glass
Part14.TopSurface = Enum.SurfaceType.Smooth
Weld15.Parent = Part14
Weld15.C0 = CFrame.new(0.00715255737, -0.955041885, -0.477371216, -1, 0, -8.74227624e-08, 0, 1, 0, 8.74227695e-08, 0, -1)
Weld15.Part0 = Part14
Weld15.Part1 = WedgePart27
Weld15.part1 = WedgePart27
Weld16.Parent = Part14
Weld16.C0 = CFrame.new(0.491443634, -0.955047607, -0.000938415527, 4.37113847e-08, 0, 1, 0, 1, 0, -1, 0, 4.37113918e-08)
Weld16.Part0 = Part14
Weld16.Part1 = WedgePart28
Weld16.part1 = WedgePart28
Weld17.Parent = Part14
Weld17.C0 = CFrame.new(0.00715255737, -0.955047607, 0.477294922, 1, 0, 8.74227624e-08, 0, 1, 0, -8.74227695e-08, 0, 1)
Weld17.Part0 = Part14
Weld17.Part1 = WedgePart29
Weld17.part1 = WedgePart29
Weld18.Parent = Part14
Weld18.C0 = CFrame.new(0.00693130493, 0.954303741, 0.477302551, -1, 0, 8.74227624e-08, 0, -1, 0, 8.74227695e-08, 0, 1)
Weld18.Part0 = Part14
Weld18.Part1 = WedgePart30
Weld18.part1 = WedgePart30
Weld19.Parent = Part14
Weld19.C0 = CFrame.new(-0.477359772, 0.954303741, -0.000930786133, -2.1855692e-07, 0, -1, 0, -1, 0, -1, 0, 2.18556949e-07)
Weld19.Part0 = Part14
Weld19.Part1 = WedgePart31
Weld19.part1 = WedgePart31
Weld20.Parent = Part14
Weld20.C0 = CFrame.new(0.00693130493, 0.954298973, -0.477363586, 1, 0, -8.74227624e-08, 0, -1, 0, -8.74227695e-08, 0, -1)
Weld20.Part0 = Part14
Weld20.Part1 = WedgePart32
Weld20.part1 = WedgePart32
Weld21.Parent = Part14
Weld21.C0 = CFrame.new(0.491447449, 0.954263687, -0.0006980896, 2.1855692e-07, 0, 1, 0, -1, 0, 1, 0, -2.18556949e-07)
Weld21.Part0 = Part14
Weld21.Part1 = WedgePart33
Weld21.part1 = WedgePart33
Weld22.Parent = Part14
Weld22.C0 = CFrame.new(-0.477363586, -0.955007553, -0.000701904297, -4.37113847e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113918e-08)
Weld22.Part0 = Part14
Weld22.Part1 = WedgePart34
Weld22.part1 = WedgePart34
Weld23.Parent = Part14
Weld23.C0 = CFrame.new(0.476654053, -0.0229072571, -0.477626801, 0, 0, 0.99999994, 1, 0, 0, 0, 1, 7.45325212e-15)
Weld23.Part0 = Part14
Weld23.Part1 = WedgePart35
Weld23.part1 = WedgePart35
Weld24.Parent = Part14
Weld24.C0 = CFrame.new(-0.48128891, -0.0229072571, -0.477149963, 0, 1, 0, 1, 0, 0, 0, 7.45325127e-15, -1)
Weld24.Part0 = Part14
Weld24.Part1 = WedgePart36
Weld24.part1 = WedgePart36
Weld25.Parent = Part14
Weld25.C0 = CFrame.new(-0.479381561, -0.0229072571, 0.478092194, 0, 0, -0.99999994, 1, 0, 0, 0, -1, -7.45325212e-15)
Weld25.Part0 = Part14
Weld25.Part1 = WedgePart37
Weld25.part1 = WedgePart37
Weld26.Parent = Part14
Weld26.C0 = CFrame.new(0.478931427, -0.0229072571, 0.477325439, 0, -1, 0, 1, 0, 0, 0, -7.45325127e-15, 1)
Weld26.Part0 = Part14
Weld26.Part1 = WedgePart38
Weld26.part1 = WedgePart38
WedgePart27.Parent = Part13
WedgePart27.CFrame = CFrame.new(-57.5553474, 10.0449543, -61.4773712, -1, 0, -8.74227624e-08, 0, 1, 0, 8.74227695e-08, 0, -1)
WedgePart27.Orientation = Vector3.new(0, 180, 0)
WedgePart27.Position = Vector3.new(-57.55534744262695, 10.044954299926758, -61.47737121582031)
WedgePart27.Rotation = Vector3.new(180, 0, 180)
WedgePart27.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.04766663536429405)
WedgePart27.BottomSurface = Enum.SurfaceType.Smooth
WedgePart28.Parent = Part13
WedgePart28.CFrame = CFrame.new(-57.0710564, 10.0449486, -61.0009384, 4.37113847e-08, 0, 1, 0, 1, 0, -1, 0, 4.37113918e-08)
WedgePart28.Orientation = Vector3.new(0, 90, 0)
WedgePart28.Position = Vector3.new(-57.0710563659668, 10.04494857788086, -61.000938415527344)
WedgePart28.Rotation = Vector3.new(0, 90, 0)
WedgePart28.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.047666631639003754)
WedgePart28.BottomSurface = Enum.SurfaceType.Smooth
WedgePart29.Parent = Part13
WedgePart29.CFrame = CFrame.new(-57.5553474, 10.0449486, -60.5227051, 1, 0, 8.74227624e-08, 0, 1, 0, -8.74227695e-08, 0, 1)
WedgePart29.Position = Vector3.new(-57.55534744262695, 10.04494857788086, -60.522705078125)
WedgePart29.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.04766663536429405)
WedgePart29.BottomSurface = Enum.SurfaceType.Smooth
WedgePart30.Parent = Part13
WedgePart30.CFrame = CFrame.new(-57.5555687, 11.9542999, -60.5226974, -1, 0, 8.74227624e-08, 0, -1, 0, 8.74227695e-08, 0, 1)
WedgePart30.Orientation = Vector3.new(0, 0, 180)
WedgePart30.Position = Vector3.new(-57.55556869506836, 11.954299926757812, -60.52269744873047)
WedgePart30.Rotation = Vector3.new(0, 0, 180)
WedgePart30.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.04766663536429405)
WedgePart30.BottomSurface = Enum.SurfaceType.Smooth
WedgePart31.Parent = Part13
WedgePart31.CFrame = CFrame.new(-58.0398598, 11.9542999, -61.0009308, -2.1855692e-07, 0, -1, 0, -1, 0, -1, 0, 2.18556949e-07)
WedgePart31.Orientation = Vector3.new(0, -90, 180)
WedgePart31.Position = Vector3.new(-58.039859771728516, 11.954299926757812, -61.00093078613281)
WedgePart31.Rotation = Vector3.new(180, -90, 0)
WedgePart31.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.047666631639003754)
WedgePart31.BottomSurface = Enum.SurfaceType.Smooth
WedgePart32.Parent = Part13
WedgePart32.CFrame = CFrame.new(-57.5555687, 11.9542952, -61.4773636, 1, 0, -8.74227624e-08, 0, -1, 0, -8.74227695e-08, 0, -1)
WedgePart32.Orientation = Vector3.new(0, 180, 180)
WedgePart32.Position = Vector3.new(-57.55556869506836, 11.95429515838623, -61.47736358642578)
WedgePart32.Rotation = Vector3.new(180, 0, 0)
WedgePart32.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.04766663536429405)
WedgePart32.BottomSurface = Enum.SurfaceType.Smooth
WedgePart33.Parent = Part13
WedgePart33.CFrame = CFrame.new(-57.0710526, 11.9542599, -61.0006981, 2.1855692e-07, 0, 1, 0, -1, 0, 1, 0, -2.18556949e-07)
WedgePart33.Orientation = Vector3.new(0, 90, 180)
WedgePart33.Position = Vector3.new(-57.07105255126953, 11.954259872436523, -61.00069808959961)
WedgePart33.Rotation = Vector3.new(180, 90, 0)
WedgePart33.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.047666631639003754)
WedgePart33.BottomSurface = Enum.SurfaceType.Smooth
WedgePart34.Parent = Part13
WedgePart34.CFrame = CFrame.new(-58.0398636, 10.0449886, -61.0007019, -4.37113847e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113918e-08)
WedgePart34.Orientation = Vector3.new(0, -90, 0)
WedgePart34.Position = Vector3.new(-58.03986358642578, 10.044988632202148, -61.000701904296875)
WedgePart34.Rotation = Vector3.new(0, -90, 0)
WedgePart34.Size = Vector3.new(1.0152993202209473, 0.04766663536429405, 0.047666631639003754)
WedgePart34.BottomSurface = Enum.SurfaceType.Smooth
WedgePart35.Parent = Part13
WedgePart35.CFrame = CFrame.new(-57.0858459, 10.9770889, -61.4776268, 0, 0, 0.99999994, 1, 0, 0, 0, 1, 7.45325212e-15)
WedgePart35.Orientation = Vector3.new(0, 90, 90)
WedgePart35.Position = Vector3.new(-57.085845947265625, 10.977088928222656, -61.47762680053711)
WedgePart35.Rotation = Vector3.new(90, 90, 0)
WedgePart35.Size = Vector3.new(2.0019984245300293, 0.04766663536429405, 0.048619963228702545)
WedgePart35.BottomSurface = Enum.SurfaceType.Smooth
WedgePart36.Parent = Part13
WedgePart36.CFrame = CFrame.new(-58.0437889, 10.9770889, -61.47715, 0, 1, 0, 1, 0, 0, 0, 7.45325127e-15, -1)
WedgePart36.Orientation = Vector3.new(0, 180, 90)
WedgePart36.Position = Vector3.new(-58.04378890991211, 10.977088928222656, -61.477149963378906)
WedgePart36.Rotation = Vector3.new(180, 0, -90)
WedgePart36.Size = Vector3.new(2.0019984245300293, 0.04766663536429405, 0.048619966953992844)
WedgePart36.BottomSurface = Enum.SurfaceType.Smooth
WedgePart37.Parent = Part13
WedgePart37.CFrame = CFrame.new(-58.0418816, 10.9770889, -60.5219078, 0, 0, -0.99999994, 1, 0, 0, 0, -1, -7.45325212e-15)
WedgePart37.Orientation = Vector3.new(0, -90, 90)
WedgePart37.Position = Vector3.new(-58.0418815612793, 10.977088928222656, -60.521907806396484)
WedgePart37.Rotation = Vector3.new(-90, -90, 0)
WedgePart37.Size = Vector3.new(2.0019984245300293, 0.04766663536429405, 0.048619963228702545)
WedgePart37.BottomSurface = Enum.SurfaceType.Smooth
WedgePart38.Parent = Part13
WedgePart38.CFrame = CFrame.new(-57.0835686, 10.9770889, -60.5226746, 0, -1, 0, 1, 0, 0, 0, -7.45325127e-15, 1)
WedgePart38.Orientation = Vector3.new(0, 0, 90)
WedgePart38.Position = Vector3.new(-57.08356857299805, 10.977088928222656, -60.522674560546875)
WedgePart38.Rotation = Vector3.new(0, 0, 90)
WedgePart38.Size = Vector3.new(2.0019984245300293, 0.04766663536429405, 0.048619966953992844)
WedgePart38.BottomSurface = Enum.SurfaceType.Smooth
Weld39.Parent = Part13
Weld39.C0 = CFrame.new(0, -3.81469727e-06, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld39.Part0 = Part13
Weld39.Part1 = Part14
Weld39.part1 = Part14
Part40.Name = "Torso"
Part40.Parent = mas
Part40.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, -4.82797532e-06, 0, -4.82797532e-06, 1)
Part40.Position = Vector3.new(-57.5625, 11, -61)
Part40.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part40.Size = Vector3.new(1.9815154075622559, 1.9815254211425781, 0.9907580614089966)
Part40.Anchored = true
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.BrickColor = BrickColor.new("Dark stone grey")
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.brickColor = BrickColor.new("Dark stone grey")
Part41.Parent = Part40
Part41.CFrame = CFrame.new(-57.9588051, 10.1083288, -61.396286, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part41.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part41.Position = Vector3.new(-57.958805084228516, 10.108328819274902, -61.39628601074219)
Part41.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part41.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part41.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part41.BrickColor = BrickColor.new("Dark stone grey")
Part41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part41.Material = Enum.Material.SmoothPlastic
Part41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part41.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh42.Parent = Part41
SpecialMesh42.MeshType = Enum.MeshType.Sphere
Part43.Parent = Part40
Part43.CFrame = CFrame.new(-57.4634209, 10.1083288, -61.396286, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part43.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part43.Position = Vector3.new(-57.46342086791992, 10.108328819274902, -61.39628601074219)
Part43.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part43.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part43.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part43.BrickColor = BrickColor.new("Dark stone grey")
Part43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part43.Material = Enum.Material.SmoothPlastic
Part43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part43.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh44.Parent = Part43
SpecialMesh44.MeshType = Enum.MeshType.Sphere
Part45.Parent = Part40
Part45.CFrame = CFrame.new(-58.4541817, 10.1083288, -61.396286, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part45.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part45.Position = Vector3.new(-58.45418167114258, 10.108328819274902, -61.39628601074219)
Part45.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part45.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part45.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part45.BrickColor = BrickColor.new("Dark stone grey")
Part45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part45.Material = Enum.Material.SmoothPlastic
Part45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part45.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh46.Parent = Part45
SpecialMesh46.MeshType = Enum.MeshType.Sphere
Part47.Parent = Part40
Part47.CFrame = CFrame.new(-57.5625038, 11.0000038, -61, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part47.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part47.Position = Vector3.new(-57.562503814697266, 11.000003814697266, -61)
Part47.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part47.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part47.Size = Vector3.new(0.7926059365272522, 1.7833632230758667, 0.990757405757904)
Part47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.BrickColor = BrickColor.new("Dark stone grey")
Part47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.Material = Enum.Material.SmoothPlastic
Part47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part47.brickColor = BrickColor.new("Dark stone grey")
Part48.Parent = Part40
Part48.CFrame = CFrame.new(-57.5625038, 11.0000038, -61, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part48.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part48.Position = Vector3.new(-57.562503814697266, 11.000003814697266, -61)
Part48.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part48.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part48.Size = Vector3.new(0.7926059365272522, 1.9815146923065186, 0.7926059365272522)
Part48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part48.BrickColor = BrickColor.new("Dark stone grey")
Part48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part48.Material = Enum.Material.SmoothPlastic
Part48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part48.brickColor = BrickColor.new("Dark stone grey")
Part49.Parent = Part40
Part49.CFrame = CFrame.new(-57.5625038, 11.0000038, -61, 1, 0, 0, 0, 1, -7.24195888e-06, 0, -7.24196707e-06, 1)
Part49.Position = Vector3.new(-57.562503814697266, 11.000003814697266, -61)
Part49.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part49.Size = Vector3.new(0.990757405757904, 1.7833632230758667, 0.7926059365272522)
Part49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part49.BrickColor = BrickColor.new("Dark stone grey")
Part49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part49.Material = Enum.Material.SmoothPlastic
Part49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part49.brickColor = BrickColor.new("Dark stone grey")
Part50.Parent = Part40
Part50.CFrame = CFrame.new(-57.5625038, 11.8916788, -60.603714, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part50.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part50.Position = Vector3.new(-57.562503814697266, 11.891678810119629, -60.60371398925781)
Part50.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part50.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part50.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part50.BrickColor = BrickColor.new("Dark stone grey")
Part50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part50.Material = Enum.Material.SmoothPlastic
Part50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part50.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh51.Parent = Part50
Part52.Parent = Part40
Part52.CFrame = CFrame.new(-57.5625038, 11.8916922, -61.3963203, -4.37113883e-08, -1, 0, 0.99999994, -4.37113883e-08, -1.20699342e-05, -1.20699424e-05, 5.27593919e-13, 1)
Part52.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part52.Position = Vector3.new(-57.562503814697266, 11.891692161560059, -61.39632034301758)
Part52.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part52.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part52.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part52.BrickColor = BrickColor.new("Dark stone grey")
Part52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part52.Material = Enum.Material.SmoothPlastic
Part52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part52.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh53.Parent = Part52
Weld54.Parent = Part52
Weld54.C0 = CFrame.new(-1.78336334, 0, 1.14440918e-05, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld54.Part0 = Part52
Weld54.Part1 = Part124
Weld54.part1 = Part124
Weld55.Parent = Part52
Weld55.C0 = CFrame.new(-1.90734863e-06, -0.39630127, 0.39630127, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld55.Part0 = Part52
Weld55.Part1 = Part126
Weld55.part1 = Part126
Weld56.Parent = Part52
Weld56.C0 = CFrame.new(-0.891683578, 0, 0.396308899, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld56.Part0 = Part52
Weld56.Part1 = Part49
Weld56.part1 = Part49
Weld57.Parent = Part52
Weld57.C0 = CFrame.new(-0.891683578, 0, 0.396308899, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld57.Part0 = Part52
Weld57.Part1 = Part47
Weld57.part1 = Part47
Weld58.Parent = Part52
Weld58.C0 = CFrame.new(-0.891683578, -0.495384216, 0.396308899, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld58.Part0 = Part52
Weld58.Part1 = Part157
Weld58.part1 = Part157
Weld59.Parent = Part52
Weld59.C0 = CFrame.new(-1.90734863e-06, -0.891685486, 0.39630127, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld59.Part0 = Part52
Weld59.Part1 = Part167
Weld59.part1 = Part167
Weld60.Parent = Part52
Weld60.C0 = CFrame.new(-1.90734863e-06, 0.0990753174, 0.39630127, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld60.Part0 = Part52
Weld60.Part1 = Part208
Weld60.part1 = Part208
Weld61.Parent = Part52
Weld61.C0 = CFrame.new(-1.78336525, -0.39630127, 0.396316528, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld61.Part0 = Part52
Weld61.Part1 = Part130
Weld61.part1 = Part130
Weld62.Parent = Part52
Weld62.C0 = CFrame.new(-1.78336525, -0.891685486, 0.396316528, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld62.Part0 = Part52
Weld62.Part1 = Part171
Weld62.part1 = Part171
Weld63.Parent = Part52
Weld63.C0 = CFrame.new(-0.891685486, 0.891677856, 0.792610168, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld63.Part0 = Part52
Weld63.Part1 = Part220
Weld63.part1 = Part220
Weld64.Parent = Part52
Weld64.C0 = CFrame.new(-0.891683578, 0.495376587, 0.396308899, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld64.Part0 = Part52
Weld64.Part1 = Part197
Weld64.part1 = Part197
Weld65.Parent = Part52
Weld65.C0 = CFrame.new(-1.78336334, -0.495384216, 1.14440918e-05, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld65.Part0 = Part52
Weld65.Part1 = Part165
Weld65.part1 = Part165
Weld66.Parent = Part52
Weld66.C0 = CFrame.new(-1.78336525, 0.39630127, 0.396316528, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld66.Part0 = Part52
Weld66.Part1 = Part132
Weld66.part1 = Part132
Weld67.Parent = Part52
Weld67.C0 = CFrame.new(-0.891685486, -0.39630127, 0.792610168, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld67.Part0 = Part52
Weld67.Part1 = Part134
Weld67.part1 = Part134
Weld68.Parent = Part52
Weld68.C0 = CFrame.new(-1.78336716, -0.495384216, 0.792617798, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld68.Part0 = Part52
Weld68.Part1 = Part163
Weld68.part1 = Part163
Weld69.Parent = Part52
Weld69.C0 = CFrame.new(-0.891681671, -0.39630127, 7.62939453e-06, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld69.Part0 = Part52
Weld69.Part1 = Part136
Weld69.part1 = Part136
Weld70.Parent = Part52
Weld70.C0 = CFrame.new(-1.90734863e-06, 0.891677856, 0.39630127, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld70.Part0 = Part52
Weld70.Part1 = Part210
Weld70.part1 = Part210
Weld71.Parent = Part52
Weld71.C0 = CFrame.new(-0.891685486, 0.39630127, 0.792610168, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld71.Part0 = Part52
Weld71.Part1 = Part138
Weld71.part1 = Part138
Weld72.Parent = Part52
Weld72.C0 = CFrame.new(0, -0.495384216, 0, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld72.Part0 = Part52
Weld72.Part1 = Part161
Weld72.part1 = Part161
Weld73.Parent = Part52
Weld73.C0 = CFrame.new(-0.891681671, 0.39630127, 7.62939453e-06, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld73.Part0 = Part52
Weld73.Part1 = Part140
Weld73.part1 = Part140
Weld74.Parent = Part52
Weld74.C0 = CFrame.new(-3.81469727e-06, -0.39630127, 0.792606354, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld74.Part0 = Part52
Weld74.Part1 = Part142
Weld74.part1 = Part142
Weld75.Parent = Part52
Weld75.C0 = CFrame.new(-3.81469727e-06, -0.495384216, 0.792606354, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld75.Part0 = Part52
Weld75.Part1 = Part159
Weld75.part1 = Part159
Weld76.Parent = Part52
Weld76.C0 = CFrame.new(0, -0.39630127, 0, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld76.Part0 = Part52
Weld76.Part1 = Part144
Weld76.part1 = Part144
Weld77.Parent = Part52
Weld77.C0 = CFrame.new(-1.78336525, 0.0990753174, 0.396316528, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld77.Part0 = Part52
Weld77.Part1 = Part212
Weld77.part1 = Part212
Weld78.Parent = Part52
Weld78.C0 = CFrame.new(-3.81469727e-06, 0.39630127, 0.792606354, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld78.Part0 = Part52
Weld78.Part1 = Part146
Weld78.part1 = Part146
Weld79.Parent = Part52
Weld79.C0 = CFrame.new(-0.891683578, -0.495384216, 0.396308899, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld79.Part0 = Part52
Weld79.Part1 = Part158
Weld79.part1 = Part158
Weld80.Parent = Part52
Weld80.C0 = CFrame.new(0, 0.39630127, 0, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld80.Part0 = Part52
Weld80.Part1 = Part148
Weld80.part1 = Part148
Weld81.Parent = Part52
Weld81.C0 = CFrame.new(-1.78336716, -0.39630127, 0.792617798, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld81.Part0 = Part52
Weld81.Part1 = Part150
Weld81.part1 = Part150
Weld82.Parent = Part52
Weld82.C0 = CFrame.new(-1.78336525, 0.891677856, 0.396316528, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld82.Part0 = Part52
Weld82.Part1 = Part214
Weld82.part1 = Part214
Weld83.Parent = Part52
Weld83.C0 = CFrame.new(-1.78336334, -0.39630127, 1.14440918e-05, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld83.Part0 = Part52
Weld83.Part1 = Part152
Weld83.part1 = Part152
Weld84.Parent = Part52
Weld84.C0 = CFrame.new(-1.78336716, 0.39630127, 0.792617798, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld84.Part0 = Part52
Weld84.Part1 = Part154
Weld84.part1 = Part154
Weld85.Parent = Part52
Weld85.C0 = CFrame.new(-0.891683578, -0.495384216, 0.396308899, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld85.Part0 = Part52
Weld85.Part1 = Part156
Weld85.part1 = Part156
Weld86.Parent = Part52
Weld86.C0 = CFrame.new(-1.78336334, 0.39630127, 1.14440918e-05, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld86.Part0 = Part52
Weld86.Part1 = Part41
Weld86.part1 = Part41
Weld87.Parent = Part52
Weld87.C0 = CFrame.new(-1.78336525, -0.0990829468, 0.396316528, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld87.Part0 = Part52
Weld87.Part1 = Part173
Weld87.part1 = Part173
Weld88.Parent = Part52
Weld88.C0 = CFrame.new(-1.78336334, 0.495376587, 1.14440918e-05, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld88.Part0 = Part52
Weld88.Part1 = Part206
Weld88.part1 = Part206
Weld89.Parent = Part52
Weld89.C0 = CFrame.new(-0.891685486, -0.891685486, 0.792610168, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld89.Part0 = Part52
Weld89.Part1 = Part175
Weld89.part1 = Part175
Weld90.Parent = Part52
Weld90.C0 = CFrame.new(-0.891681671, -0.891685486, 7.62939453e-06, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld90.Part0 = Part52
Weld90.Part1 = Part177
Weld90.part1 = Part177
Weld91.Parent = Part52
Weld91.C0 = CFrame.new(-1.78336716, 0.495376587, 0.792617798, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld91.Part0 = Part52
Weld91.Part1 = Part204
Weld91.part1 = Part204
Weld92.Parent = Part52
Weld92.C0 = CFrame.new(-0.891685486, -0.0990829468, 0.792610168, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld92.Part0 = Part52
Weld92.Part1 = Part179
Weld92.part1 = Part179
Weld93.Parent = Part52
Weld93.C0 = CFrame.new(-0.891681671, -0.0990829468, 7.62939453e-06, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld93.Part0 = Part52
Weld93.Part1 = Part181
Weld93.part1 = Part181
Weld94.Parent = Part52
Weld94.C0 = CFrame.new(0, 0.495376587, 0, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld94.Part0 = Part52
Weld94.Part1 = Part202
Weld94.part1 = Part202
Weld95.Parent = Part52
Weld95.C0 = CFrame.new(-3.81469727e-06, -0.891685486, 0.792606354, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld95.Part0 = Part52
Weld95.Part1 = Part183
Weld95.part1 = Part183
Weld96.Parent = Part52
Weld96.C0 = CFrame.new(0, -0.891685486, 0, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld96.Part0 = Part52
Weld96.Part1 = Part185
Weld96.part1 = Part185
Weld97.Parent = Part52
Weld97.C0 = CFrame.new(-3.81469727e-06, 0.495376587, 0.792606354, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld97.Part0 = Part52
Weld97.Part1 = Part200
Weld97.part1 = Part200
Weld98.Parent = Part52
Weld98.C0 = CFrame.new(-3.81469727e-06, -0.0990829468, 0.792606354, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld98.Part0 = Part52
Weld98.Part1 = Part187
Weld98.part1 = Part187
Weld99.Parent = Part52
Weld99.C0 = CFrame.new(0, -0.0990829468, 0, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld99.Part0 = Part52
Weld99.Part1 = Part189
Weld99.part1 = Part189
Weld100.Parent = Part52
Weld100.C0 = CFrame.new(-0.891683578, 0.495376587, 0.396308899, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld100.Part0 = Part52
Weld100.Part1 = Part199
Weld100.part1 = Part199
Weld101.Parent = Part52
Weld101.C0 = CFrame.new(-1.78336716, -0.891685486, 0.792617798, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld101.Part0 = Part52
Weld101.Part1 = Part191
Weld101.part1 = Part191
Weld102.Parent = Part52
Weld102.C0 = CFrame.new(-1.78336334, -0.891685486, 1.14440918e-05, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld102.Part0 = Part52
Weld102.Part1 = Part193
Weld102.part1 = Part193
Weld103.Parent = Part52
Weld103.C0 = CFrame.new(-0.891683578, 0.495376587, 0.396308899, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld103.Part0 = Part52
Weld103.Part1 = Part198
Weld103.part1 = Part198
Weld104.Parent = Part52
Weld104.C0 = CFrame.new(-1.78336716, -0.0990829468, 0.792617798, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld104.Part0 = Part52
Weld104.Part1 = Part195
Weld104.part1 = Part195
Weld105.Parent = Part52
Weld105.C0 = CFrame.new(-1.78336334, -0.0990829468, 1.14440918e-05, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld105.Part0 = Part52
Weld105.Part1 = Part43
Weld105.part1 = Part43
Weld106.Parent = Part52
Weld106.C0 = CFrame.new(-0.891681671, 0.0990753174, 7.62939453e-06, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld106.Part0 = Part52
Weld106.Part1 = Part218
Weld106.part1 = Part218
Weld107.Parent = Part52
Weld107.C0 = CFrame.new(-1.90734863e-06, 0.39630127, 0.39630127, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld107.Part0 = Part52
Weld107.Part1 = Part128
Weld107.part1 = Part128
Weld108.Parent = Part52
Weld108.C0 = CFrame.new(-0.891681671, 0.891677856, 7.62939453e-06, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld108.Part0 = Part52
Weld108.Part1 = Part222
Weld108.part1 = Part222
Weld109.Parent = Part52
Weld109.C0 = CFrame.new(-3.81469727e-06, 0.0990753174, 0.792606354, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld109.Part0 = Part52
Weld109.Part1 = Part224
Weld109.part1 = Part224
Weld110.Parent = Part52
Weld110.C0 = CFrame.new(0, 0.0990753174, 0, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld110.Part0 = Part52
Weld110.Part1 = Part226
Weld110.part1 = Part226
Weld111.Parent = Part52
Weld111.C0 = CFrame.new(-3.81469727e-06, 0.891677856, 0.792606354, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld111.Part0 = Part52
Weld111.Part1 = Part228
Weld111.part1 = Part228
Weld112.Parent = Part52
Weld112.C0 = CFrame.new(0, 0.891677856, 0, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld112.Part0 = Part52
Weld112.Part1 = Part230
Weld112.part1 = Part230
Weld113.Parent = Part52
Weld113.C0 = CFrame.new(-1.78336716, 0.0990753174, 0.792617798, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld113.Part0 = Part52
Weld113.Part1 = Part232
Weld113.part1 = Part232
Weld114.Parent = Part52
Weld114.C0 = CFrame.new(-1.78336334, 0.0990753174, 1.14440918e-05, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld114.Part0 = Part52
Weld114.Part1 = Part234
Weld114.part1 = Part234
Weld115.Parent = Part52
Weld115.C0 = CFrame.new(-1.78336716, 0.891677856, 0.792617798, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld115.Part0 = Part52
Weld115.Part1 = Part236
Weld115.part1 = Part236
Weld116.Parent = Part52
Weld116.C0 = CFrame.new(-1.78336334, 0.891677856, 1.14440918e-05, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld116.Part0 = Part52
Weld116.Part1 = Part45
Weld116.part1 = Part45
Weld117.Parent = Part52
Weld117.C0 = CFrame.new(-1.90734863e-06, -0.0990829468, 0.39630127, -4.37113883e-08, -4.87168654e-06, -0.999999881, -1, 2.12948203e-13, 4.37113847e-08, 0, 1, 4.78426409e-06)
Weld117.Part0 = Part52
Weld117.Part1 = Part169
Weld117.part1 = Part169
Weld118.Parent = Part52
Weld118.C0 = CFrame.new(-1.78336716, 0, 0.792617798, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld118.Part0 = Part52
Weld118.Part1 = Part122
Weld118.part1 = Part122
Weld119.Parent = Part52
Weld119.C0 = CFrame.new(-0.891685486, 0.0990753174, 0.792610168, -4.37113883e-08, 0.99999994, -4.82797532e-06, -1, -4.37113883e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld119.Part0 = Part52
Weld119.Part1 = Part216
Weld119.part1 = Part216
Weld120.Parent = Part52
Weld120.C0 = CFrame.new(-3.81469727e-06, 0, 0.792606354, 0.999999881, 3.55245893e-15, -4.82797532e-06, 3.55245893e-15, 1, 2.11037513e-13, -4.82797532e-06, 2.11037513e-13, 1)
Weld120.Part0 = Part52
Weld120.Part1 = Part50
Weld120.part1 = Part50
Weld121.Parent = Part52
Weld121.C0 = CFrame.new(-0.891683578, 0, 0.396308899, -4.37113883e-08, 0.999999881, -4.82797532e-06, -1, -4.37113847e-08, 2.11037513e-13, 0, -4.82797532e-06, 1)
Weld121.Part0 = Part52
Weld121.Part1 = Part48
Weld121.part1 = Part48
Part122.Parent = Part40
Part122.CFrame = CFrame.new(-57.5625038, 10.1083155, -60.6036797, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part122.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part122.Position = Vector3.new(-57.562503814697266, 10.108315467834473, -60.60367965698242)
Part122.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part122.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part122.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part122.BrickColor = BrickColor.new("Dark stone grey")
Part122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part122.Material = Enum.Material.SmoothPlastic
Part122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part122.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh123.Parent = Part122
Part124.Parent = Part40
Part124.CFrame = CFrame.new(-57.5625038, 10.1083288, -61.396286, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part124.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part124.Position = Vector3.new(-57.562503814697266, 10.108328819274902, -61.39628601074219)
Part124.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part124.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part124.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.BrickColor = BrickColor.new("Dark stone grey")
Part124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.Material = Enum.Material.SmoothPlastic
Part124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part124.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh125.Parent = Part124
Part126.Parent = Part40
Part126.CFrame = CFrame.new(-57.1662025, 11.8916855, -61.0000191, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part126.Orientation = Vector3.new(90, 0, 0)
Part126.Position = Vector3.new(-57.166202545166016, 11.891685485839844, -61.00001907348633)
Part126.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part126.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part126.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part126.BrickColor = BrickColor.new("Dark stone grey")
Part126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part126.Material = Enum.Material.SmoothPlastic
Part126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part126.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh127.Parent = Part126
Part128.Parent = Part40
Part128.CFrame = CFrame.new(-57.9588051, 11.8916855, -61.0000191, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part128.Orientation = Vector3.new(90, 0, 0)
Part128.Position = Vector3.new(-57.958805084228516, 11.891685485839844, -61.00001907348633)
Part128.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part128.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part128.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part128.BrickColor = BrickColor.new("Dark stone grey")
Part128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part128.Material = Enum.Material.SmoothPlastic
Part128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part128.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh129.Parent = Part128
Part130.Parent = Part40
Part130.CFrame = CFrame.new(-57.1662025, 10.1083221, -60.9999809, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part130.Orientation = Vector3.new(90, 0, 0)
Part130.Position = Vector3.new(-57.166202545166016, 10.108322143554688, -60.99998092651367)
Part130.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part130.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part130.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part130.BrickColor = BrickColor.new("Dark stone grey")
Part130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part130.Material = Enum.Material.SmoothPlastic
Part130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part130.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh131.Parent = Part130
Part132.Parent = Part40
Part132.CFrame = CFrame.new(-57.9588051, 10.1083221, -60.9999809, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part132.Orientation = Vector3.new(90, 0, 0)
Part132.Position = Vector3.new(-57.958805084228516, 10.108322143554688, -60.99998092651367)
Part132.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part132.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part132.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part132.BrickColor = BrickColor.new("Dark stone grey")
Part132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part132.Material = Enum.Material.SmoothPlastic
Part132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part132.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh133.Parent = Part132
Part134.Parent = Part40
Part134.CFrame = CFrame.new(-57.1662025, 10.9999971, -60.6036987, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part134.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part134.Position = Vector3.new(-57.166202545166016, 10.99999713897705, -60.60369873046875)
Part134.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part134.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part134.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part134.BrickColor = BrickColor.new("Dark stone grey")
Part134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part134.Material = Enum.Material.SmoothPlastic
Part134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part134.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh135.Parent = Part134
Part136.Parent = Part40
Part136.CFrame = CFrame.new(-57.1662025, 11.0000105, -61.3963013, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part136.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part136.Position = Vector3.new(-57.166202545166016, 11.00001049041748, -61.39630126953125)
Part136.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part136.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part136.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part136.BrickColor = BrickColor.new("Dark stone grey")
Part136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part136.Material = Enum.Material.SmoothPlastic
Part136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part136.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh137.Parent = Part136
Part138.Parent = Part40
Part138.CFrame = CFrame.new(-57.9588051, 10.9999971, -60.6036987, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part138.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part138.Position = Vector3.new(-57.958805084228516, 10.99999713897705, -60.60369873046875)
Part138.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part138.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part138.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part138.BrickColor = BrickColor.new("Dark stone grey")
Part138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part138.Material = Enum.Material.SmoothPlastic
Part138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part138.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh139.Parent = Part138
Part140.Parent = Part40
Part140.CFrame = CFrame.new(-57.9588051, 11.0000105, -61.3963013, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part140.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part140.Position = Vector3.new(-57.958805084228516, 11.00001049041748, -61.39630126953125)
Part140.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part140.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part140.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part140.BrickColor = BrickColor.new("Dark stone grey")
Part140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part140.Material = Enum.Material.SmoothPlastic
Part140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part140.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh141.Parent = Part140
Part142.Parent = Part40
Part142.CFrame = CFrame.new(-57.1662025, 11.8916788, -60.603714, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part142.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part142.Position = Vector3.new(-57.166202545166016, 11.891678810119629, -60.60371398925781)
Part142.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part142.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part142.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part142.BrickColor = BrickColor.new("Dark stone grey")
Part142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part142.Material = Enum.Material.SmoothPlastic
Part142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part142.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh143.Parent = Part142
SpecialMesh143.MeshType = Enum.MeshType.Sphere
Part144.Parent = Part40
Part144.CFrame = CFrame.new(-57.1662025, 11.8916922, -61.3963203, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part144.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part144.Position = Vector3.new(-57.166202545166016, 11.891692161560059, -61.39632034301758)
Part144.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part144.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part144.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part144.BrickColor = BrickColor.new("Dark stone grey")
Part144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part144.Material = Enum.Material.SmoothPlastic
Part144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part144.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh145.Parent = Part144
SpecialMesh145.MeshType = Enum.MeshType.Sphere
Part146.Parent = Part40
Part146.CFrame = CFrame.new(-57.9588051, 11.8916788, -60.603714, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part146.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part146.Position = Vector3.new(-57.958805084228516, 11.891678810119629, -60.60371398925781)
Part146.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part146.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part146.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part146.BrickColor = BrickColor.new("Dark stone grey")
Part146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part146.Material = Enum.Material.SmoothPlastic
Part146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part146.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh147.Parent = Part146
SpecialMesh147.MeshType = Enum.MeshType.Sphere
Part148.Parent = Part40
Part148.CFrame = CFrame.new(-57.9588051, 11.8916922, -61.3963203, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part148.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part148.Position = Vector3.new(-57.958805084228516, 11.891692161560059, -61.39632034301758)
Part148.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part148.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part148.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part148.BrickColor = BrickColor.new("Dark stone grey")
Part148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part148.Material = Enum.Material.SmoothPlastic
Part148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part148.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh149.Parent = Part148
SpecialMesh149.MeshType = Enum.MeshType.Sphere
Part150.Parent = Part40
Part150.CFrame = CFrame.new(-57.1662025, 10.1083155, -60.6036797, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part150.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part150.Position = Vector3.new(-57.166202545166016, 10.108315467834473, -60.60367965698242)
Part150.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part150.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part150.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part150.BrickColor = BrickColor.new("Dark stone grey")
Part150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part150.Material = Enum.Material.SmoothPlastic
Part150.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part150.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part150.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh151.Parent = Part150
SpecialMesh151.MeshType = Enum.MeshType.Sphere
Part152.Parent = Part40
Part152.CFrame = CFrame.new(-57.1662025, 10.1083288, -61.396286, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part152.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part152.Position = Vector3.new(-57.166202545166016, 10.108328819274902, -61.39628601074219)
Part152.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part152.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part152.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part152.BrickColor = BrickColor.new("Dark stone grey")
Part152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part152.Material = Enum.Material.SmoothPlastic
Part152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part152.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh153.Parent = Part152
SpecialMesh153.MeshType = Enum.MeshType.Sphere
Part154.Parent = Part40
Part154.CFrame = CFrame.new(-57.9588051, 10.1083155, -60.6036797, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part154.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part154.Position = Vector3.new(-57.958805084228516, 10.108315467834473, -60.60367965698242)
Part154.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part154.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part154.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part154.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part154.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part154.BrickColor = BrickColor.new("Dark stone grey")
Part154.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part154.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part154.Material = Enum.Material.SmoothPlastic
Part154.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part154.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part154.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh155.Parent = Part154
SpecialMesh155.MeshType = Enum.MeshType.Sphere
Part156.Parent = Part40
Part156.CFrame = CFrame.new(-57.0671196, 11.0000038, -61, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part156.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part156.Position = Vector3.new(-57.06711959838867, 11.000003814697266, -61)
Part156.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part156.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part156.Size = Vector3.new(0.7926059365272522, 1.7833632230758667, 0.990757405757904)
Part156.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part156.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part156.BrickColor = BrickColor.new("Dark stone grey")
Part156.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part156.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part156.Material = Enum.Material.SmoothPlastic
Part156.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part156.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part156.brickColor = BrickColor.new("Dark stone grey")
Part157.Parent = Part40
Part157.CFrame = CFrame.new(-57.0671196, 11.0000038, -61, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part157.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part157.Position = Vector3.new(-57.06711959838867, 11.000003814697266, -61)
Part157.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part157.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part157.Size = Vector3.new(0.7926059365272522, 1.9815146923065186, 0.7926059365272522)
Part157.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part157.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part157.BrickColor = BrickColor.new("Dark stone grey")
Part157.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part157.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part157.Material = Enum.Material.SmoothPlastic
Part157.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part157.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part157.brickColor = BrickColor.new("Dark stone grey")
Part158.Parent = Part40
Part158.CFrame = CFrame.new(-57.0671196, 11.0000038, -61, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part158.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part158.Position = Vector3.new(-57.06711959838867, 11.000003814697266, -61)
Part158.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part158.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part158.Size = Vector3.new(0.990757405757904, 1.7833632230758667, 0.7926059365272522)
Part158.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part158.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part158.BrickColor = BrickColor.new("Dark stone grey")
Part158.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part158.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part158.Material = Enum.Material.SmoothPlastic
Part158.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part158.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part158.brickColor = BrickColor.new("Dark stone grey")
Part159.Parent = Part40
Part159.CFrame = CFrame.new(-57.0671196, 11.8916788, -60.603714, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part159.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part159.Position = Vector3.new(-57.06711959838867, 11.891678810119629, -60.60371398925781)
Part159.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part159.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part159.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part159.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part159.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part159.BrickColor = BrickColor.new("Dark stone grey")
Part159.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part159.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part159.Material = Enum.Material.SmoothPlastic
Part159.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part159.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part159.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh160.Parent = Part159
Part161.Parent = Part40
Part161.CFrame = CFrame.new(-57.0671196, 11.8916922, -61.3963203, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part161.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part161.Position = Vector3.new(-57.06711959838867, 11.891692161560059, -61.39632034301758)
Part161.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part161.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part161.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part161.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part161.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part161.BrickColor = BrickColor.new("Dark stone grey")
Part161.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part161.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part161.Material = Enum.Material.SmoothPlastic
Part161.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part161.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part161.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh162.Parent = Part161
Part163.Parent = Part40
Part163.CFrame = CFrame.new(-57.0671196, 10.1083155, -60.6036797, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part163.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part163.Position = Vector3.new(-57.06711959838867, 10.108315467834473, -60.60367965698242)
Part163.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part163.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part163.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part163.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.BrickColor = BrickColor.new("Dark stone grey")
Part163.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.Material = Enum.Material.SmoothPlastic
Part163.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh164.Parent = Part163
Part165.Parent = Part40
Part165.CFrame = CFrame.new(-57.0671196, 10.1083288, -61.396286, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part165.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part165.Position = Vector3.new(-57.06711959838867, 10.108328819274902, -61.39628601074219)
Part165.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part165.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part165.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part165.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.BrickColor = BrickColor.new("Dark stone grey")
Part165.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.Material = Enum.Material.SmoothPlastic
Part165.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh166.Parent = Part165
Part167.Parent = Part40
Part167.CFrame = CFrame.new(-56.6708183, 11.8916855, -61.0000191, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part167.Orientation = Vector3.new(90, 0, 0)
Part167.Position = Vector3.new(-56.67081832885742, 11.891685485839844, -61.00001907348633)
Part167.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part167.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part167.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part167.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.BrickColor = BrickColor.new("Dark stone grey")
Part167.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.Material = Enum.Material.SmoothPlastic
Part167.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh168.Parent = Part167
Part169.Parent = Part40
Part169.CFrame = CFrame.new(-57.4634209, 11.8916855, -61.0000191, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part169.Orientation = Vector3.new(90, 0, 0)
Part169.Position = Vector3.new(-57.46342086791992, 11.891685485839844, -61.00001907348633)
Part169.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part169.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part169.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part169.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.BrickColor = BrickColor.new("Dark stone grey")
Part169.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.Material = Enum.Material.SmoothPlastic
Part169.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh170.Parent = Part169
Part171.Parent = Part40
Part171.CFrame = CFrame.new(-56.6708183, 10.1083221, -60.9999809, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part171.Orientation = Vector3.new(90, 0, 0)
Part171.Position = Vector3.new(-56.67081832885742, 10.108322143554688, -60.99998092651367)
Part171.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part171.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part171.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part171.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.BrickColor = BrickColor.new("Dark stone grey")
Part171.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.Material = Enum.Material.SmoothPlastic
Part171.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh172.Parent = Part171
Part173.Parent = Part40
Part173.CFrame = CFrame.new(-57.4634209, 10.1083221, -60.9999809, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part173.Orientation = Vector3.new(90, 0, 0)
Part173.Position = Vector3.new(-57.46342086791992, 10.108322143554688, -60.99998092651367)
Part173.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part173.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part173.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part173.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.BrickColor = BrickColor.new("Dark stone grey")
Part173.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.Material = Enum.Material.SmoothPlastic
Part173.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh174.Parent = Part173
Part175.Parent = Part40
Part175.CFrame = CFrame.new(-56.6708183, 10.9999971, -60.6036987, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part175.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part175.Position = Vector3.new(-56.67081832885742, 10.99999713897705, -60.60369873046875)
Part175.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part175.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part175.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part175.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.BrickColor = BrickColor.new("Dark stone grey")
Part175.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.Material = Enum.Material.SmoothPlastic
Part175.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh176.Parent = Part175
Part177.Parent = Part40
Part177.CFrame = CFrame.new(-56.6708183, 11.0000105, -61.3963013, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part177.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part177.Position = Vector3.new(-56.67081832885742, 11.00001049041748, -61.39630126953125)
Part177.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part177.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part177.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part177.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.BrickColor = BrickColor.new("Dark stone grey")
Part177.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.Material = Enum.Material.SmoothPlastic
Part177.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh178.Parent = Part177
Part179.Parent = Part40
Part179.CFrame = CFrame.new(-57.4634209, 10.9999971, -60.6036987, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part179.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part179.Position = Vector3.new(-57.46342086791992, 10.99999713897705, -60.60369873046875)
Part179.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part179.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part179.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part179.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.BrickColor = BrickColor.new("Dark stone grey")
Part179.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.Material = Enum.Material.SmoothPlastic
Part179.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh180.Parent = Part179
Part181.Parent = Part40
Part181.CFrame = CFrame.new(-57.4634209, 11.0000105, -61.3963013, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part181.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part181.Position = Vector3.new(-57.46342086791992, 11.00001049041748, -61.39630126953125)
Part181.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part181.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part181.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part181.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.BrickColor = BrickColor.new("Dark stone grey")
Part181.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.Material = Enum.Material.SmoothPlastic
Part181.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh182.Parent = Part181
Part183.Parent = Part40
Part183.CFrame = CFrame.new(-56.6708183, 11.8916788, -60.603714, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part183.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part183.Position = Vector3.new(-56.67081832885742, 11.891678810119629, -60.60371398925781)
Part183.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part183.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part183.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part183.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.BrickColor = BrickColor.new("Dark stone grey")
Part183.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.Material = Enum.Material.SmoothPlastic
Part183.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh184.Parent = Part183
SpecialMesh184.MeshType = Enum.MeshType.Sphere
Part185.Parent = Part40
Part185.CFrame = CFrame.new(-56.6708183, 11.8916922, -61.3963203, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part185.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part185.Position = Vector3.new(-56.67081832885742, 11.891692161560059, -61.39632034301758)
Part185.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part185.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part185.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part185.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.BrickColor = BrickColor.new("Dark stone grey")
Part185.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.Material = Enum.Material.SmoothPlastic
Part185.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh186.Parent = Part185
SpecialMesh186.MeshType = Enum.MeshType.Sphere
Part187.Parent = Part40
Part187.CFrame = CFrame.new(-57.4634209, 11.8916788, -60.603714, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part187.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part187.Position = Vector3.new(-57.46342086791992, 11.891678810119629, -60.60371398925781)
Part187.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part187.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part187.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part187.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.BrickColor = BrickColor.new("Dark stone grey")
Part187.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.Material = Enum.Material.SmoothPlastic
Part187.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh188.Parent = Part187
SpecialMesh188.MeshType = Enum.MeshType.Sphere
Part189.Parent = Part40
Part189.CFrame = CFrame.new(-57.4634209, 11.8916922, -61.3963203, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part189.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part189.Position = Vector3.new(-57.46342086791992, 11.891692161560059, -61.39632034301758)
Part189.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part189.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part189.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part189.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.BrickColor = BrickColor.new("Dark stone grey")
Part189.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.Material = Enum.Material.SmoothPlastic
Part189.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh190.Parent = Part189
SpecialMesh190.MeshType = Enum.MeshType.Sphere
Part191.Parent = Part40
Part191.CFrame = CFrame.new(-56.6708183, 10.1083155, -60.6036797, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part191.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part191.Position = Vector3.new(-56.67081832885742, 10.108315467834473, -60.60367965698242)
Part191.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part191.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part191.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part191.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.BrickColor = BrickColor.new("Dark stone grey")
Part191.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.Material = Enum.Material.SmoothPlastic
Part191.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh192.Parent = Part191
SpecialMesh192.MeshType = Enum.MeshType.Sphere
Part193.Parent = Part40
Part193.CFrame = CFrame.new(-56.6708183, 10.1083288, -61.396286, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part193.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part193.Position = Vector3.new(-56.67081832885742, 10.108328819274902, -61.39628601074219)
Part193.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part193.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part193.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part193.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.BrickColor = BrickColor.new("Dark stone grey")
Part193.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.Material = Enum.Material.SmoothPlastic
Part193.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh194.Parent = Part193
SpecialMesh194.MeshType = Enum.MeshType.Sphere
Part195.Parent = Part40
Part195.CFrame = CFrame.new(-57.4634209, 10.1083155, -60.6036797, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part195.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part195.Position = Vector3.new(-57.46342086791992, 10.108315467834473, -60.60367965698242)
Part195.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part195.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part195.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part195.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.BrickColor = BrickColor.new("Dark stone grey")
Part195.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.Material = Enum.Material.SmoothPlastic
Part195.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh196.Parent = Part195
SpecialMesh196.MeshType = Enum.MeshType.Sphere
Part197.Parent = Part40
Part197.CFrame = CFrame.new(-58.0578804, 11.0000038, -61, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part197.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part197.Position = Vector3.new(-58.05788040161133, 11.000003814697266, -61)
Part197.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part197.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part197.Size = Vector3.new(0.7926059365272522, 1.7833632230758667, 0.990757405757904)
Part197.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.BrickColor = BrickColor.new("Dark stone grey")
Part197.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.Material = Enum.Material.SmoothPlastic
Part197.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.brickColor = BrickColor.new("Dark stone grey")
Part198.Parent = Part40
Part198.CFrame = CFrame.new(-58.0578804, 11.0000038, -61, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part198.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part198.Position = Vector3.new(-58.05788040161133, 11.000003814697266, -61)
Part198.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part198.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part198.Size = Vector3.new(0.7926059365272522, 1.9815146923065186, 0.7926059365272522)
Part198.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part198.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part198.BrickColor = BrickColor.new("Dark stone grey")
Part198.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part198.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part198.Material = Enum.Material.SmoothPlastic
Part198.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part198.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part198.brickColor = BrickColor.new("Dark stone grey")
Part199.Parent = Part40
Part199.CFrame = CFrame.new(-58.0578804, 11.0000038, -61, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part199.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part199.Position = Vector3.new(-58.05788040161133, 11.000003814697266, -61)
Part199.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part199.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part199.Size = Vector3.new(0.990757405757904, 1.7833632230758667, 0.7926059365272522)
Part199.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.BrickColor = BrickColor.new("Dark stone grey")
Part199.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.Material = Enum.Material.SmoothPlastic
Part199.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.brickColor = BrickColor.new("Dark stone grey")
Part200.Parent = Part40
Part200.CFrame = CFrame.new(-58.0578804, 11.8916788, -60.603714, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part200.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part200.Position = Vector3.new(-58.05788040161133, 11.891678810119629, -60.60371398925781)
Part200.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part200.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part200.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part200.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part200.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part200.BrickColor = BrickColor.new("Dark stone grey")
Part200.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part200.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part200.Material = Enum.Material.SmoothPlastic
Part200.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part200.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part200.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh201.Parent = Part200
Part202.Parent = Part40
Part202.CFrame = CFrame.new(-58.0578804, 11.8916922, -61.3963203, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part202.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part202.Position = Vector3.new(-58.05788040161133, 11.891692161560059, -61.39632034301758)
Part202.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part202.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part202.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part202.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part202.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part202.BrickColor = BrickColor.new("Dark stone grey")
Part202.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part202.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part202.Material = Enum.Material.SmoothPlastic
Part202.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part202.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part202.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh203.Parent = Part202
Part204.Parent = Part40
Part204.CFrame = CFrame.new(-58.0578804, 10.1083155, -60.6036797, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part204.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part204.Position = Vector3.new(-58.05788040161133, 10.108315467834473, -60.60367965698242)
Part204.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part204.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part204.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part204.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part204.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part204.BrickColor = BrickColor.new("Dark stone grey")
Part204.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part204.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part204.Material = Enum.Material.SmoothPlastic
Part204.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part204.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part204.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh205.Parent = Part204
Part206.Parent = Part40
Part206.CFrame = CFrame.new(-58.0578804, 10.1083288, -61.396286, -4.37113883e-08, -1, -1.35525272e-20, 0.999999821, -4.37113847e-08, -1.68979095e-05, -1.68979168e-05, 7.38631378e-13, 1)
Part206.Orientation = Vector3.new(0.0010000000474974513, 0, 90)
Part206.Position = Vector3.new(-58.05788040161133, 10.108328819274902, -61.39628601074219)
Part206.Rotation = Vector3.new(0.0010000000474974513, 0, 90)
Part206.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part206.Size = Vector3.new(0.19815146923065186, 0.7926059365272522, 0.19815148413181305)
Part206.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part206.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part206.BrickColor = BrickColor.new("Dark stone grey")
Part206.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part206.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part206.Material = Enum.Material.SmoothPlastic
Part206.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part206.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part206.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh207.Parent = Part206
Part208.Parent = Part40
Part208.CFrame = CFrame.new(-57.6615791, 11.8916855, -61.0000191, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part208.Orientation = Vector3.new(90, 0, 0)
Part208.Position = Vector3.new(-57.66157913208008, 11.891685485839844, -61.00001907348633)
Part208.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part208.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part208.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part208.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part208.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part208.BrickColor = BrickColor.new("Dark stone grey")
Part208.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part208.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part208.Material = Enum.Material.SmoothPlastic
Part208.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part208.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part208.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh209.Parent = Part208
Part210.Parent = Part40
Part210.CFrame = CFrame.new(-58.4541817, 11.8916855, -61.0000191, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part210.Orientation = Vector3.new(90, 0, 0)
Part210.Position = Vector3.new(-58.45418167114258, 11.891685485839844, -61.00001907348633)
Part210.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part210.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part210.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part210.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part210.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part210.BrickColor = BrickColor.new("Dark stone grey")
Part210.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part210.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part210.Material = Enum.Material.SmoothPlastic
Part210.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part210.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part210.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh211.Parent = Part210
Part212.Parent = Part40
Part212.CFrame = CFrame.new(-57.6615791, 10.1083221, -60.9999809, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part212.Orientation = Vector3.new(90, 0, 0)
Part212.Position = Vector3.new(-57.66157913208008, 10.108322143554688, -60.99998092651367)
Part212.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part212.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part212.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part212.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part212.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part212.BrickColor = BrickColor.new("Dark stone grey")
Part212.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part212.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part212.Material = Enum.Material.SmoothPlastic
Part212.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part212.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part212.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh213.Parent = Part212
Part214.Parent = Part40
Part214.CFrame = CFrame.new(-58.4541817, 10.1083221, -60.9999809, 1, -2.71050543e-20, 0, 3.55271368e-15, -1.69416198e-05, -0.999999821, 0, 1, 1.68542047e-05)
Part214.Orientation = Vector3.new(90, 0, 0)
Part214.Position = Vector3.new(-58.45418167114258, 10.108322143554688, -60.99998092651367)
Part214.Rotation = Vector3.new(89.9990005493164, 0, 0)
Part214.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part214.Size = Vector3.new(0.19815148413181305, 0.7926059365272522, 0.19815146923065186)
Part214.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part214.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part214.BrickColor = BrickColor.new("Dark stone grey")
Part214.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part214.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part214.Material = Enum.Material.SmoothPlastic
Part214.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part214.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part214.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh215.Parent = Part214
Part216.Parent = Part40
Part216.CFrame = CFrame.new(-57.6615791, 10.9999971, -60.6036987, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part216.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part216.Position = Vector3.new(-57.66157913208008, 10.99999713897705, -60.60369873046875)
Part216.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part216.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part216.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part216.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part216.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part216.BrickColor = BrickColor.new("Dark stone grey")
Part216.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part216.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part216.Material = Enum.Material.SmoothPlastic
Part216.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part216.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part216.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh217.Parent = Part216
Part218.Parent = Part40
Part218.CFrame = CFrame.new(-57.6615791, 11.0000105, -61.3963013, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part218.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part218.Position = Vector3.new(-57.66157913208008, 11.00001049041748, -61.39630126953125)
Part218.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part218.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part218.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part218.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part218.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part218.BrickColor = BrickColor.new("Dark stone grey")
Part218.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part218.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part218.Material = Enum.Material.SmoothPlastic
Part218.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part218.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part218.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh219.Parent = Part218
Part220.Parent = Part40
Part220.CFrame = CFrame.new(-58.4541817, 10.9999971, -60.6036987, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part220.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part220.Position = Vector3.new(-58.45418167114258, 10.99999713897705, -60.60369873046875)
Part220.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part220.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part220.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part220.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part220.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part220.BrickColor = BrickColor.new("Dark stone grey")
Part220.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part220.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part220.Material = Enum.Material.SmoothPlastic
Part220.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part220.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part220.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh221.Parent = Part220
Part222.Parent = Part40
Part222.CFrame = CFrame.new(-58.4541817, 11.0000105, -61.3963013, 1, 3.55271368e-15, -1.35525272e-20, 3.55271368e-15, 0.999999881, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part222.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part222.Position = Vector3.new(-58.45418167114258, 11.00001049041748, -61.39630126953125)
Part222.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part222.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part222.Size = Vector3.new(0.19815148413181305, 1.7833632230758667, 0.19815148413181305)
Part222.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part222.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part222.BrickColor = BrickColor.new("Dark stone grey")
Part222.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part222.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part222.Material = Enum.Material.SmoothPlastic
Part222.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part222.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part222.brickColor = BrickColor.new("Dark stone grey")
CylinderMesh223.Parent = Part222
Part224.Parent = Part40
Part224.CFrame = CFrame.new(-57.6615791, 11.8916788, -60.603714, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part224.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part224.Position = Vector3.new(-57.66157913208008, 11.891678810119629, -60.60371398925781)
Part224.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part224.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part224.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part224.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part224.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part224.BrickColor = BrickColor.new("Dark stone grey")
Part224.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part224.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part224.Material = Enum.Material.SmoothPlastic
Part224.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part224.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part224.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh225.Parent = Part224
SpecialMesh225.MeshType = Enum.MeshType.Sphere
Part226.Parent = Part40
Part226.CFrame = CFrame.new(-57.6615791, 11.8916922, -61.3963203, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part226.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part226.Position = Vector3.new(-57.66157913208008, 11.891692161560059, -61.39632034301758)
Part226.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part226.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part226.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part226.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part226.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part226.BrickColor = BrickColor.new("Dark stone grey")
Part226.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part226.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part226.Material = Enum.Material.SmoothPlastic
Part226.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part226.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part226.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh227.Parent = Part226
SpecialMesh227.MeshType = Enum.MeshType.Sphere
Part228.Parent = Part40
Part228.CFrame = CFrame.new(-58.4541817, 11.8916788, -60.603714, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part228.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part228.Position = Vector3.new(-58.45418167114258, 11.891678810119629, -60.60371398925781)
Part228.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part228.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part228.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part228.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part228.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part228.BrickColor = BrickColor.new("Dark stone grey")
Part228.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part228.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part228.Material = Enum.Material.SmoothPlastic
Part228.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part228.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part228.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh229.Parent = Part228
SpecialMesh229.MeshType = Enum.MeshType.Sphere
Part230.Parent = Part40
Part230.CFrame = CFrame.new(-58.4541817, 11.8916922, -61.3963203, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part230.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part230.Position = Vector3.new(-58.45418167114258, 11.891692161560059, -61.39632034301758)
Part230.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part230.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part230.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part230.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part230.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part230.BrickColor = BrickColor.new("Dark stone grey")
Part230.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part230.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part230.Material = Enum.Material.SmoothPlastic
Part230.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part230.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part230.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh231.Parent = Part230
SpecialMesh231.MeshType = Enum.MeshType.Sphere
Part232.Parent = Part40
Part232.CFrame = CFrame.new(-57.6615791, 10.1083155, -60.6036797, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part232.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part232.Position = Vector3.new(-57.66157913208008, 10.108315467834473, -60.60367965698242)
Part232.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part232.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part232.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part232.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part232.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part232.BrickColor = BrickColor.new("Dark stone grey")
Part232.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part232.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part232.Material = Enum.Material.SmoothPlastic
Part232.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part232.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part232.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh233.Parent = Part232
SpecialMesh233.MeshType = Enum.MeshType.Sphere
Part234.Parent = Part40
Part234.CFrame = CFrame.new(-57.6615791, 10.1083288, -61.396286, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part234.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part234.Position = Vector3.new(-57.66157913208008, 10.108328819274902, -61.39628601074219)
Part234.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part234.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part234.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part234.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part234.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part234.BrickColor = BrickColor.new("Dark stone grey")
Part234.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part234.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part234.Material = Enum.Material.SmoothPlastic
Part234.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part234.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part234.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh235.Parent = Part234
SpecialMesh235.MeshType = Enum.MeshType.Sphere
Part236.Parent = Part40
Part236.CFrame = CFrame.new(-58.4541817, 10.1083155, -60.6036797, 1, 0, -1.35525272e-20, 3.55271368e-15, 0.999999821, -1.68979095e-05, 0, -1.68979168e-05, 1)
Part236.Orientation = Vector3.new(0.0010000000474974513, 0, 0)
Part236.Position = Vector3.new(-58.45418167114258, 10.108315467834473, -60.60367965698242)
Part236.Rotation = Vector3.new(0.0010000000474974513, 0, 0)
Part236.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part236.Size = Vector3.new(0.19815148413181305, 0.19815146923065186, 0.19815148413181305)
Part236.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part236.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part236.BrickColor = BrickColor.new("Dark stone grey")
Part236.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part236.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part236.Material = Enum.Material.SmoothPlastic
Part236.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part236.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part236.brickColor = BrickColor.new("Dark stone grey")
SpecialMesh237.Parent = Part236
SpecialMesh237.MeshType = Enum.MeshType.Sphere
Weld238.Parent = Part40
Weld238.C0 = CFrame.new(-3.81469727e-06, 3.81469727e-06, 0, 1, 0, 0, 0, 1, -2.41398379e-06, 0, -2.41399175e-06, 1)
Weld238.Part0 = Part40
Weld238.Part1 = Part49
Weld238.part1 = Part49
Part239.Name = "Gauntlet"
Part239.Parent = mas
Part239.CFrame = CFrame.new(-57.5625, 11, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part239.Position = Vector3.new(-57.5625, 11, -61)
Part239.Transparency = 1
Part239.Size = Vector3.new(2.000999927520752, 3.002000093460083, 2.003000020980835)
Part239.Anchored = true
Part239.BottomSurface = Enum.SurfaceType.Smooth
Part239.TopSurface = Enum.SurfaceType.Smooth
Part240.Name = "CREATED BY JKEEPWASHERE"
Part240.Parent = Part239
Part240.CFrame = CFrame.new(-57.5625, 11.679285, -61, 1, 5.90489613e-09, 0, 5.90489613e-09, 1, 0, 0, 0, 1)
Part240.Position = Vector3.new(-57.5625, 11.679285049438477, -61)
Part240.Color = Color3.new(0, 0, 0)
Part240.Size = Vector3.new(2.0010008811950684, 1.6434310674667358, 2.0030009746551514)
Part240.BottomSurface = Enum.SurfaceType.Smooth
Part240.BrickColor = BrickColor.new("Really black")
Part240.Material = Enum.Material.Neon
Part240.TopSurface = Enum.SurfaceType.Smooth
Part240.brickColor = BrickColor.new("Really black")
Part240.Shape = Enum.PartType.Ball
Part241.Name = "CREATED BY JKEEPWASHERE"
Part241.Parent = Part239
Part241.CFrame = CFrame.new(-57.2548904, 10.7114506, -61, 0.699488282, 0.714644074, 0, -0.714644015, 0.699488342, 0, 0, 0, 0.99999994)
Part241.Orientation = Vector3.new(0, 0, -45.61399841308594)
Part241.Position = Vector3.new(-57.25489044189453, 10.711450576782227, -61)
Part241.Rotation = Vector3.new(0, 0, -45.61399841308594)
Part241.Color = Color3.new(1, 0, 0)
Part241.Size = Vector3.new(0.20098631083965302, 0.9958910346031189, 1.3486872911453247)
Part241.BottomSurface = Enum.SurfaceType.Smooth
Part241.BrickColor = BrickColor.new("Really red")
Part241.Material = Enum.Material.Neon
Part241.TopSurface = Enum.SurfaceType.Smooth
Part241.brickColor = BrickColor.new("Really red")
Part242.Name = "CREATED BY JKEEPWASHERE"
Part242.Parent = Part239
Part242.CFrame = CFrame.new(-57.5625, 10.6000996, -61, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part242.Position = Vector3.new(-57.5625, 10.600099563598633, -61)
Part242.Color = Color3.new(0, 0, 0)
Part242.Size = Vector3.new(1.334000587463379, 2.1912412643432617, 1.335334062576294)
Part242.BottomSurface = Enum.SurfaceType.Smooth
Part242.BrickColor = BrickColor.new("Really black")
Part242.Material = Enum.Material.Neon
Part242.TopSurface = Enum.SurfaceType.Smooth
Part242.brickColor = BrickColor.new("Really black")
Part243.Name = "CREATED BY JKEEPWASHERE"
Part243.Parent = Part239
Part243.CFrame = CFrame.new(-56.9121704, 10.5234089, -60.6628304, 5.90489524e-09, -0.99999994, 0, 0.99999994, -5.90489524e-09, 0, 0, 0, 1)
Part243.Orientation = Vector3.new(0, 0, 90)
Part243.Position = Vector3.new(-56.91217041015625, 10.523408889770508, -60.6628303527832)
Part243.Rotation = Vector3.new(0, 0, 90)
Part243.Color = Color3.new(0.666667, 0, 0.666667)
Part243.Size = Vector3.new(0.7121534943580627, 0.180090069770813, 0.18027010560035706)
Part243.BottomSurface = Enum.SurfaceType.Smooth
Part243.BrickColor = BrickColor.new("Magenta")
Part243.Material = Enum.Material.Neon
Part243.TopSurface = Enum.SurfaceType.Smooth
Part243.brickColor = BrickColor.new("Magenta")
Part243.Shape = Enum.PartType.Cylinder
Part244.Name = "CREATED BY JKEEPWASHERE"
Part244.Parent = Part239
Part244.CFrame = CFrame.new(-57.7942886, 10.7825794, -61, 0.823404729, 0.567454576, 0, -0.567454576, 0.823404729, 0, 0, 0, 1)
Part244.Orientation = Vector3.new(0, 0, -34.573001861572266)
Part244.Position = Vector3.new(-57.794288635253906, 10.78257942199707, -61)
Part244.Rotation = Vector3.new(0, 0, -34.573001861572266)
Part244.Color = Color3.new(1, 0, 0)
Part244.Size = Vector3.new(0.5429685711860657, 0.515225887298584, 1.3486874103546143)
Part244.BottomSurface = Enum.SurfaceType.Smooth
Part244.BrickColor = BrickColor.new("Really red")
Part244.Material = Enum.Material.Neon
Part244.TopSurface = Enum.SurfaceType.Smooth
Part244.brickColor = BrickColor.new("Really red")
Part245.Name = "CREATED BY JKEEPWASHERE"
Part245.Parent = Part239
Part245.CFrame = CFrame.new(-56.9121704, 10.5234089, -61.3638763, 5.90489524e-09, -0.99999994, 0, 0.99999994, -5.90489524e-09, 0, 0, 0, 1)
Part245.Orientation = Vector3.new(0, 0, 90)
Part245.Position = Vector3.new(-56.91217041015625, 10.523408889770508, -61.36387634277344)
Part245.Rotation = Vector3.new(0, 0, 90)
Part245.Color = Color3.new(0.666667, 0, 0.666667)
Part245.Size = Vector3.new(0.7121534943580627, 0.180090069770813, 0.18027010560035706)
Part245.BottomSurface = Enum.SurfaceType.Smooth
Part245.BrickColor = BrickColor.new("Magenta")
Part245.Material = Enum.Material.Neon
Part245.TopSurface = Enum.SurfaceType.Smooth
Part245.brickColor = BrickColor.new("Magenta")
Part245.Shape = Enum.PartType.Cylinder
Part246.Name = "CREATED BY JKEEPWASHERE"
Part246.Parent = Part239
Part246.CFrame = CFrame.new(-57.2511406, 10.2355518, -61, -0.567454576, 0.823404729, 0, -0.823404729, -0.567454576, 0, 0, 0, 0.99999994)
Part246.Orientation = Vector3.new(0, 0, -124.572998046875)
Part246.Position = Vector3.new(-57.25114059448242, 10.235551834106445, -61)
Part246.Rotation = Vector3.new(0, 0, -124.572998046875)
Part246.Color = Color3.new(1, 0, 0)
Part246.Size = Vector3.new(0.19431376457214355, 0.8997765183448792, 1.3486872911453247)
Part246.BottomSurface = Enum.SurfaceType.Smooth
Part246.BrickColor = BrickColor.new("Really red")
Part246.Material = Enum.Material.Neon
Part246.TopSurface = Enum.SurfaceType.Smooth
Part246.brickColor = BrickColor.new("Really red")
Part247.Name = "CREATED BY JKEEPWASHERE"
Part247.Parent = Part239
Part247.CFrame = CFrame.new(-57.5625, 9.52639198, -61, 1, 5.90489613e-09, 0, 5.90489613e-09, 1, 0, 0, 0, 1)
Part247.Position = Vector3.new(-57.5625, 9.526391983032227, -61)
Part247.Color = Color3.new(1, 0, 0)
Part247.Size = Vector3.new(1.1672505140304565, 0.05478103458881378, 1.16841721534729)
Part247.BottomSurface = Enum.SurfaceType.Smooth
Part247.BrickColor = BrickColor.new("Really red")
Part247.Material = Enum.Material.Neon
Part247.TopSurface = Enum.SurfaceType.Smooth
Part247.brickColor = BrickColor.new("Really red")
Part248.Name = "CREATED BY JKEEPWASHERE"
Part248.Parent = Part239
Part248.CFrame = CFrame.new(-57.5858459, 9.95916176, -61, 1, 5.90489613e-09, 0, 5.90489613e-09, 1, 0, 0, 0, 0.99999994)
Part248.Position = Vector3.new(-57.585845947265625, 9.959161758422852, -61)
Part248.Color = Color3.new(1, 0, 0)
Part248.Size = Vector3.new(0.22011010348796844, 0.920321524143219, 1.3486872911453247)
Part248.BottomSurface = Enum.SurfaceType.Smooth
Part248.BrickColor = BrickColor.new("Really red")
Part248.Material = Enum.Material.Neon
Part248.TopSurface = Enum.SurfaceType.Smooth
Part248.brickColor = BrickColor.new("Really red")
Part249.Name = "CREATED BY JKEEPWASHERE"
Part249.Parent = Part239
Part249.CFrame = CFrame.new(-57.8152084, 10.3144207, -61, 1.02954807e-07, 0.99999994, 0, -1, 7.9335237e-08, 0, 0, 0, 0.99999994)
Part249.Orientation = Vector3.new(0, 0, -90)
Part249.Position = Vector3.new(-57.815208435058594, 10.314420700073242, -61)
Part249.Rotation = Vector3.new(0, 0, -90)
Part249.Color = Color3.new(1, 0, 0)
Part249.Size = Vector3.new(0.1807774156332016, 0.8581986427307129, 1.3486872911453247)
Part249.BottomSurface = Enum.SurfaceType.Smooth
Part249.BrickColor = BrickColor.new("Really red")
Part249.Material = Enum.Material.Neon
Part249.TopSurface = Enum.SurfaceType.Smooth
Part249.brickColor = BrickColor.new("Really red")
Part250.Name = "CREATED BY JKEEPWASHERE"
Part250.Parent = Part239
Part250.CFrame = CFrame.new(-57.5628395, 9.69351101, -60.6708717, 1, 2.40481839e-08, 0, -6.33349551e-09, 1, 0, 0, 0, 1)
Part250.Position = Vector3.new(-57.56283950805664, 9.693511009216309, -60.67087173461914)
Part250.Color = Color3.new(1, 0, 0)
Part250.Size = Vector3.new(1.3490781784057617, 0.37882164120674133, 0.34109005331993103)
Part250.BottomSurface = Enum.SurfaceType.Smooth
Part250.BrickColor = BrickColor.new("Really red")
Part250.Material = Enum.Material.Neon
Part250.TopSurface = Enum.SurfaceType.Smooth
Part250.brickColor = BrickColor.new("Really red")
Part250.Shape = Enum.PartType.Cylinder
Part251.Name = "CREATED BY JKEEPWASHERE"
Part251.Parent = Part239
Part251.CFrame = CFrame.new(-57.5628395, 9.69273376, -61.3704376, 1, 1.81432878e-08, 0, -1.22383916e-08, 1, 0, 0, 0, 1)
Part251.Position = Vector3.new(-57.56283950805664, 9.692733764648438, -61.37043762207031)
Part251.Color = Color3.new(1, 0, 0)
Part251.Size = Vector3.new(1.3490781784057617, 0.37882164120674133, 0.34109005331993103)
Part251.BottomSurface = Enum.SurfaceType.Smooth
Part251.BrickColor = BrickColor.new("Really red")
Part251.Material = Enum.Material.Neon
Part251.TopSurface = Enum.SurfaceType.Smooth
Part251.brickColor = BrickColor.new("Really red")
Part251.Shape = Enum.PartType.Cylinder
Weld252.Parent = Part251
Weld252.C0 = CFrame.new(0.000339508057, 1.98655128, 0.370437622, 1, -1.22383916e-08, 0, 1.81432878e-08, 1, 0, 0, 0, 1)
Weld252.Part0 = Part251
Weld252.Part1 = Part240
Weld252.part1 = Part240
Weld253.Parent = Part251
Weld253.C0 = CFrame.new(0.307949066, 1.01871681, 0.370437622, 0.699488282, 0.714644074, 0, -0.714644015, 0.699488342, 0, 0, 0, 0.99999994)
Weld253.Part0 = Part251
Weld253.Part1 = Part241
Weld253.part1 = Part241
Weld254.Parent = Part251
Weld254.C0 = CFrame.new(0.000339508057, 0.907365799, 0.370437622, 1, -1.22383916e-08, 0, 1.81432878e-08, 1, 0, 0, 0, 1)
Weld254.Part0 = Part251
Weld254.Part1 = Part242
Weld254.part1 = Part242
Weld255.Parent = Part251
Weld255.C0 = CFrame.new(0.650669098, 0.830675125, 0.707607269, -1.22383907e-08, -0.99999994, 0, 0.99999994, -1.8143286e-08, 0, 0, 0, 1)
Weld255.Part0 = Part251
Weld255.Part1 = Part243
Weld255.part1 = Part243
Weld256.Parent = Part251
Weld256.C0 = CFrame.new(-0.231449127, 1.08984566, 0.370437622, 0.823404729, 0.567454576, 0, -0.567454576, 0.823404729, 0, 0, 0, 1)
Weld256.Part0 = Part251
Weld256.Part1 = Part244
Weld256.part1 = Part244
Weld257.Parent = Part251
Weld257.C0 = CFrame.new(0.650669098, 0.830675125, 0.0065612793, -1.22383907e-08, -0.99999994, 0, 0.99999994, -1.8143286e-08, 0, 0, 0, 1)
Weld257.Part0 = Part251
Weld257.Part1 = Part245
Weld257.part1 = Part245
Weld258.Parent = Part251
Weld258.C0 = CFrame.new(0.311698914, 0.542818069, 0.370437622, -0.567454576, 0.823404729, 0, -0.823404729, -0.567454576, 0, 0, 0, 0.99999994)
Weld258.Part0 = Part251
Weld258.Part1 = Part246
Weld258.part1 = Part246
Weld259.Parent = Part251
Weld259.C0 = CFrame.new(0.000339508057, -0.166341782, 0.370437622, 1, -1.22383916e-08, 0, 1.81432878e-08, 1, 0, 0, 0, 1)
Weld259.Part0 = Part251
Weld259.Part1 = Part247
Weld259.part1 = Part247
Weld260.Parent = Part251
Weld260.C0 = CFrame.new(-0.0230064392, 0.266427994, 0.370437622, 1, -1.22383916e-08, 0, 1.81432878e-08, 1, 0, 0, 0, 0.99999994)
Weld260.Part0 = Part251
Weld260.Part1 = Part248
Weld260.part1 = Part248
Weld261.Parent = Part251
Weld261.C0 = CFrame.new(-0.252368927, 0.621686935, 0.370437622, 1.21098097e-07, 0.99999994, 0, -1, 9.15736251e-08, 0, 0, 0, 0.99999994)
Weld261.Part0 = Part251
Weld261.Part1 = Part249
Weld261.part1 = Part249
Weld262.Parent = Part251
Weld262.C0 = CFrame.new(0, 0.000777244568, 0.699565887, 1, 5.90489613e-09, 0, 5.90489613e-09, 1, 0, 0, 0, 1)
Weld262.Part0 = Part251
Weld262.Part1 = Part250
Weld262.part1 = Part250
Weld263.Parent = Part239
Weld263.C0 = CFrame.new(0, -0.399900436, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld263.Part0 = Part239
Weld263.Part1 = Part242
Weld263.part1 = Part242
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
wait(1)
script.Parent = owner.PlayerGui
wait(1/30) --[[ Created By JKeepWasHere ]] game:GetService("TestService"):Message("KillBro Created By JKeepWasHere")
function RandomString()
	return game:GetService("HttpService"):GenerateGUID(false)..game:GetService("HttpService"):GenerateGUID(false)..game:GetService("HttpService"):GenerateGUID(false)
end
function RandomProperties(_Base_)
	pcall(function()
		local TF={true,false}
		_Base_.Name=RandomString()
		_Base_.CFrame=CFrame.new(math.random(-2147483647,2147483647),math.random(workspace.FallenPartsDestroyHeight+5,2147483647),math.random(-2147483647,2147483647))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
		_Base_.Color=Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
		_Base_.Material=Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())]
		_Base_.Reflectance=math.random(-2147483647,2147483647)
		_Base_.Transparency=math.random(-2147483647,2147483647)
		_Base_.Size=Vector3.new(math.random(1,2000),math.random(1,2000),math.random(1,2000))
		_Base_.RootPriority=math.random(-127,127)
		_Base_.CollisionGroupId=math.random(0,31)
		_Base_.CanCollide=TF[math.random(1,#TF)]
		if _Base_.CanCollide==false then
			_Base_.CanQuery=TF[math.random(1,#TF)]
		end
		_Base_.CanTouch=TF[math.random(1,#TF)]
		_Base_.Anchored=TF[math.random(1,#TF)]
		_Base_.Massless=TF[math.random(1,#TF)]
		_Base_.UsePartColor=TF[math.random(1,#TF)]
		_Base_.Archivable=TF[math.random(1,#TF)]
		_Base_.CustomPhysicalProperties=TF[math.random(1,#TF)]
		_Base_.CastShadow=TF[math.random(1,#TF)]
	end)
end
function NormalizeProperties(_Base_,SizeType)
	pcall(function()
		_Base_.Name=RandomString()
		_Base_.CFrame=MainPosition
		_Base_.Color=Color3.fromRGB(0,0,0)
		_Base_.Material=Enum.Material.Glass
		if SizeType=="Torso"then
			_Base_.Size=Vector3.new(2.001, 2.002, 1.003)
		elseif SizeType=="Head"then
			_Base_.Size=Vector3.new(1.201,1.202,1.203)
		elseif SizeType=="Limb"then
			_Base_.Size=Vector3.new(1.001, 2.002, 1.003)
		elseif SizeType=="Gauntlet"then
			_Base_.Size=Vector3.new(2.001, 3.002, 2.003)
			_Base_.Material=Enum.Material.Neon
		end
		_Base_.Reflectance=0
		_Base_.Transparency=1
		_Base_.RootPriority=0
		_Base_.CollisionGroupId=0
		_Base_.CanCollide=false
		_Base_.CanQuery=false
		_Base_.CanTouch=false
		_Base_.Anchored=true
		_Base_.Massless=true
		_Base_.UsePartColor=false
		_Base_.Archivable=false
		_Base_.CustomPhysicalProperties=false
		_Base_.CastShadow=false
	end)
end
-- System Variables:
local StopEverything=false
local Fixing=false
local Lerping=true
local Mute=false
local BeginName=tostring(script.Parent.Parent.Name)
local ClientDataDesignatedID=RandomString()
local Player
for _,c in pairs(game:GetService("Players"):GetPlayers())do
	if c.Name==tostring(BeginName)and c:IsA("Player")then
		pcall(function()
			Player=c
		end)
	end
end
-- Script Source:
script.Parent=nil
local ParentsInServer = {"Workspace","SoundService","Chat","Players","StarterPlayer","LocalizationService","Lighting","Teams","ReplicatedStorage","TestService"}
local RandomInstances={"AlignOrientation","AlignPosition","AngularVelocity","BallSocketConstraint","CylindricalConstraint","HingeConstraint","LineForce","LinearVelocity","NoCollisionConstraint","Plane","PrismaticConstraint","RodConstraint","RopeConstraint","SpringConstraint","Torque","TorsionSpringConstraint","UniversalConstraint","VectorForce","WeldConstraint","BloomEffect","BlurEffect","ColorCorrectionEffect","SunRaysEffect","BodyColors","Pants","Shirt","ShirtGraphic","Accessory","Humanoid","Motor6D","Animation","AnimationController","Folder","WorldModel","LocalizationTable","Model","ClickDetector","ProximityPrompt","Decal","Texture","Dialog","DialogChoiceHandles","ArcHandles","BoxHandleAdornment","ConeHandleAdornment","CylinderHandleAdornment","ImageHandleAdornment","LineHandleAdornment","SphereHandleAdornment","PathfindingModifier","SelectionBox","SelectionSphere","SurfaceSelection","Atmosphere","Clouds","Sky","UIAspectRatioConstraint","UICorner","UIGradient","UIGridLayout","UIListLayout","UIPadding","UIPageLayout","UIScale","UISizeConstraint","UIStroke","UITableLayout","UITextSizeConstraint","BillboardGui","ScreenGui","SurfaceGui","Frame","ScrollingFrame","ImageButton","TextBox","TextButton","ImageLabel","TextLabel","Sound","ChorusSoundEffect","CompressorSoundEffect","DistortionSoundEffect","EchoSoundEffect","EqualizerSoundEffect","FlangeSoundEffect","PitchShiftSoundEffect","ReverbSoundEffect","SoundGroup","TremoloSoundEffect","BoolValue","BrickColorValue","Color3Value","CFrameValue","IntValue","NumberValue","ObjectValue","StringValue","RayValue","Vector3Value"}
local Character=Instance.new(RandomInstances[math.random(1,#RandomInstances)],nil)Character.Name=RandomString()Character.Archivable=false;Character.Parent=workspace
local Head=script.Head:Clone();RandomProperties(Head)Head.Parent=Character;NormalizeProperties(Head,"Head")
local Torso=script.Torso:Clone();RandomProperties(Torso)Torso.Parent=Character;NormalizeProperties(Torso,"Torso")
local RightArm=script.Gauntlet:Clone();RandomProperties(RightArm)RightArm.Parent=Character;NormalizeProperties(RightArm,"Limb")
local LeftArm=script.Limb:Clone();RandomProperties(LeftArm)LeftArm.Parent=Character;NormalizeProperties(LeftArm,"Limb")
local LeftLeg=script.Limb:Clone();RandomProperties(LeftLeg)LeftLeg.Parent=Character;NormalizeProperties(LeftLeg,"Limb")
local RightLeg=script.Limb:Clone();RandomProperties(RightLeg)RightLeg.Parent=Character;NormalizeProperties(RightLeg,"Limb")
local Effects=Instance.new("WorldModel",nil)Effects.Archivable=false;Effects.Name=RandomString()Effects.Parent=workspace.Terrain
local Face=Instance.new("Decal",nil)Face.Name=RandomString()Face.Archivable=false;Face.Color3=Color3.fromRGB(255,255,255);Face.Transparency=0;Face.ZIndex=math.random(0,999999999);Face.Face="Front";Face.Texture="http://www.roblox.com/asset/?id=7074749";Face.Parent=Head
local Music=Instance.new("Sound",nil)Music.Name=RandomString()Music.Volume=3;Music.Looped=true;Music.SoundId="rbxassetid://1838076025"Music.Archivable=false;Music.PlaybackSpeed=1;if Mute==true then Music.Playing=false Music:Pause() elseif Mute==false then Music.Playing=true Music:Play() end;Music.Archivable=false;Music.PlayOnRemove=false;local Remixer=Instance.new("EqualizerSoundEffect",Music)Remixer.Archivable=false;Remixer.Name=RandomString()Remixer.HighGain=0.15;Remixer.Enabled=true;Remixer.LowGain=-15;Remixer.Priority=0;Remixer.MidGain=-7;Music.Parent=Torso
local ClientThingLUA = [==[
local Remote
for _,X in pairs(game:GetService("ReplicatedStorage"):GetDescendants())do
	if X:IsA("RemoteEvent")and X.Name==tostring(script.Name)then
		pcall(function()
			Remote=X
		end)
	end
end
game:GetService("UserInputService").InputBegan:Connect(function(Input,Running)
	if not Running then
		if Input.KeyCode==Enum.KeyCode.W then
			pcall(function()
				Remote:FireServer("W",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.A then
			pcall(function()
				Remote:FireServer("A",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.S then
			pcall(function()
				Remote:FireServer("S",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.D then
			pcall(function()
				Remote:FireServer("D",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.D then
			pcall(function()
				Remote:FireServer("D",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.Space then
			pcall(function()
				Remote:FireServer("Up",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.LeftControl then
			pcall(function()
				Remote:FireServer("Down",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.T then
			pcall(function()
				Remote:FireServer("T",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.Z then
			pcall(function()
				Remote:FireServer("Z",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.F then
			pcall(function()
				Remote:FireServer("F",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.X then
			pcall(function()
				Remote:FireServer("X",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.C then
			pcall(function()
				Remote:FireServer("C",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.L then
			pcall(function()
				Remote:FireServer("L",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.P then
			pcall(function()
				Remote:FireServer("P",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.U then
			pcall(function()
				Remote:FireServer("U",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
		if Input.KeyCode==Enum.KeyCode.M then
			pcall(function()
				Remote:FireServer("M",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			end)
		end
	end
end)
game:GetService("UserInputService").InputEnded:Connect(function(Input,Running)
	if Input.KeyCode==Enum.KeyCode.W then
		pcall(function()
			Remote:FireServer("W",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.A then
		pcall(function()
			Remote:FireServer("A",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.S then
		pcall(function()
			Remote:FireServer("S",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.D then
		pcall(function()
			Remote:FireServer("D",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.Z then
		pcall(function()
			Remote:FireServer("Z",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
	if Input.KeyCode==Enum.KeyCode.LeftControl then
		pcall(function()
			Remote:FireServer("Down",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
		end)
	end
end)
owner:GetMouse().Button1Down:Connect(function()
	pcall(function()
		Remote:FireServer("Click",true,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
	end)
end)
owner:GetMouse().Button1Up:Connect(function()
	pcall(function()
		Remote:FireServer("Click",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function(Stepped)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			Remote:FireServer("Camera",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			Remote:FireServer("LookVector",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			Remote:FireServer("MouseHit",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			Remote:FireServer("MouseTarget",false,owner:GetMouse().Target,owner:GetMouse().Hit.Position,workspace.CurrentCamera.CFrame,workspace.CurrentCamera.CFrame.LookVector)
			owner.CameraMaxZoomDistance=2147483647
			owner.CameraMinZoomDistance=0
			workspace.CurrentCamera.CameraSubject=script:FindFirstChildOfClass("ObjectValue").Value
			for _,X in pairs(game:GetService("ReplicatedStorage"):GetDescendants())do
				if X:IsA("RemoteEvent")and X.Name==tostring(script.Name)then
					pcall(function()
						Remote=X
					end)
				end
			end
			--[[for _,Parts in pairs(workspace:GetDescendants())do
				if Parts:IsA("BasePart")or Parts.ClassName=='FlagStand'then
					pcall(function()
						Parts.CanCollide=false
					end)
				end
			end]]
		end)
	end))
end)
]==]
local BackUp=NLS(ClientThingLUA, script)
BackUp.Name=ClientDataDesignatedID
BackUp.Disabled=true
local Remote=Instance.new("RemoteEvent")Remote.Name=ClientDataDesignatedID;Remote.Parent=game:GetService("ReplicatedStorage")
MainPosition=CFrame.new()
OldMainPosition=MainPosition
TorsoCFrame=CFrame.new()
HeadCFrame=CFrame.new()
RightArmCFrame=CFrame.new()
LeftArmCFrame=CFrame.new()
LeftLegCFrame=CFrame.new()
RightLegCFrame=CFrame.new()
Chatting=false
Walking=false
Falling=false
Jumping=false
Holding=false
Flying=false
Attacking=false
W=false
A=false
S=false
D=false
Sin=0
Timer=150 -- Interchangable ( 100-200 is Recommended )
Timer2=100 -- Interchangable ( 100-200 is Recommended )
CameraCFrame=nil
LookVector=nil
HitP=nil
Target=nil
TimePosition=0
local ClientScript=BackUp:Clone()ClientScript.Archivable=false
local RootPartValue=Instance.new("ObjectValue",ClientScript);RootPartValue.Archivable=false;RootPartValue.Name=RandomString()
RootPartValue.Value=Head
ClientScript.Parent=Player:FindFirstChildOfClass("PlayerGui")
ClientScript.Disabled=false
if Player.Character.HumanoidRootPart~=nil then
	MainPosition=Player.Character.HumanoidRootPart.CFrame--*CFrame.Angles(90,90,90)
elseif Player.Character.HumanoidRootPart==nil then
	MainPosition=CFrame.new(0,10,0)--*CFrame.Angles(90,90,90)
end
local BanishTableName={}
for i=1,#ParentsInServer do
	game:GetService(ParentsInServer[i]).ChildAdded:Connect(function(_Inst)
		coroutine.resume(coroutine.create(function()
			pcall(function()
				if StopEverything==false then
					for i=1,#BanishTableName do
						if _Inst.Name==tostring(BanishTableName[i])then
							for _,v in pairs(_Inst:GetDescendants())do
								if v:IsA("BasePart")or v.ClassName=='FlagStand'then
									pcall(function()
										v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
										v.Changed:Connect(function()
											v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
										end)
									end)
								end
							end
							pcall(function()
								_Inst.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
								_Inst.Changed:Connect(function()
									_Inst.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
								end)
							end)
						end
					end
				end
			end)
		end))
	end)
end
function Sound(Parent,SoundId,Volume,Pitch)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			local Sound=Instance.new("Sound",nil)
			Sound.Name=RandomString()
			Sound.Parent=Parent
			Sound.Volume=Volume
			Sound.Pitch=Pitch
			Sound.SoundId="rbxassetid://"..SoundId
			Sound.PlayOnRemove=true
			Sound:Play()
			Sound:Destroy()
		end)
	end))
end
function TweenEffect(Lifetime,MeshType,Color,Material,Transparency,Reflectance,Size,Cframe,Color2,Transparency2,Reflectance2,Size2,Cframe2)
	local _Effect=Instance.new("FlagStand",nil)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			local _ClrTwo=Color2
			local _TrnsTwo=Transparency2
			local _ReflTwo=Reflectance2
			local _Siz2=Size2
			local _CF2=Cframe2
			_Effect.Archivable=false
			_Effect.Name=RandomString()
			_Effect.CanTouch=false
			_Effect.CanCollide=false
			_Effect.CanQuery=false
			_Effect.Anchored=true
			_Effect.Massless=true
			_Effect.Locked=true
			_Effect.CastShadow=false
			_Effect.CollisionGroupId=math.random(0,31)
			_Effect.RootPriority=math.random(-127,127)
			_Effect.Color=Color
			_Effect.Material=Material
			_Effect.Transparency=Transparency
			_Effect.Reflectance=Reflectance
			_Effect.Size=Size
			_Effect.CFrame=Cframe 
			local SpecialMesh=Instance.new("SpecialMesh",nil)
			SpecialMesh.Name=RandomString()
			SpecialMesh.Scale=Vector3.new(1,1,1)
			SpecialMesh.Offset=Vector3.new(0,0,0)
			SpecialMesh.Archivable=false
			SpecialMesh.Parent=_Effect
			if MeshType=="Block" then
				SpecialMesh.MeshType=Enum.MeshType.Brick
			elseif MeshType=="Sphere" then
				SpecialMesh.MeshType=Enum.MeshType.Sphere
			elseif MeshType=="Wedge" then
				SpecialMesh.MeshType=Enum.MeshType.CornerWedge
			elseif MeshType=="Cylinder" then
				SpecialMesh.MeshType=Enum.MeshType.Cylinder
			elseif MeshType=="Head" then
				SpecialMesh.MeshType=Enum.MeshType.Head
			end
			_Effect.Parent=Effects
			do
				if Color2==nil then
					_ClrTwo=Color
				end
				if _TrnsTwo==nil then
					_TrnsTwo=Transparency
				end
				if _ReflTwo==nil then
					_ReflTwo=Reflectance
				end
				if _Siz2==nil then
					_Siz2=Size
				end
				if _CF2==nil then
					_CF2=Cframe
				end
			end
			coroutine.resume(coroutine.create(function()
				pcall(function()
					pcall(function()
						game:GetService("TweenService"):Create(_Effect,TweenInfo.new(Lifetime),{
							Color=_ClrTwo,
							Transparency=_TrnsTwo,
							Reflectance=_ReflTwo,
							Size=_Siz2,
							CFrame=_CF2
						}):Play()
					end)
					game:GetService("Debris"):AddItem(_Effect,Lifetime)
				end)
			end))
		end)
		return _Effect
	end))
end
function ApplyAoe(Origin,Range)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			for _,v in pairs(workspace:GetDescendants()) do
				if not v:IsDescendantOf(Character)and not v:IsDescendantOf(Effects) and v:IsA("BasePart")and not string.find(v.Name,"Base",1) and(v.Position-Origin).Magnitude<=Range+v.Size.Magnitude then
					TweenEffect(math.random(2,3),"Block",v.Color,v.Material,0,0,v.Size,v.CFrame,v.Color,1+math.random(1,999)/999,0,Vector3.new(0,0,0),v.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))*CFrame.Angles(math.rad(math.random(-88,88)),math.rad(math.random(-88,88)),math.rad(math.random(-88,88))))
					Sound(workspace,3264923,.5,.88)
					v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					v.Changed:Connect(function()
						v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					end)
				elseif not v:IsDescendantOf(Character)and not v:IsDescendantOf(Effects) and v:IsA("FlagStand")and not string.find(v.Name,"Base",1) and(v.Position-Origin).Magnitude<=Range+v.Size.Magnitude then
					TweenEffect(math.random(2,3),"Block",v.Color,v.Material,0,0,v.Size,v.CFrame,v.Color,1+math.random(1,999)/999,0,Vector3.new(0,0,0),v.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))*CFrame.Angles(math.rad(math.random(-88,88)),math.rad(math.random(-88,88)),math.rad(math.random(-88,88))))
					Sound(workspace,3264923,.5,.88)
					v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					v.Changed:Connect(function()
						v.CFrame=CFrame.new(2^31-1,2^31-1,2^31-1)
					end)
				end 
			end
		end)
	end))
end
function Teleport(X,Y,Z)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			MainPosition=CFrame.new(X,Y,Z)*CFrame.new(0,2,0)
			Torso.CFrame=MainPosition*TorsoCFrame
			Sound(Torso,424195979,5,2)
			local NewCFrame=Torso.CFrame
			coroutine.resume(coroutine.create(function()
				for i=1,math.random(10,15) do
					TweenEffect(.8,"Sphere",Color3.fromRGB(1500,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(.25,.25,.25),NewCFrame,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(.25,.25,.25),NewCFrame*CFrame.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)))
				end
				for i=1,25 do
					game:GetService("RunService").Heartbeat:Wait()
					TweenEffect(.8,"Sphere",Color3.fromRGB(88,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(18.5,.25,18.5),NewCFrame,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(.25,18.5,.25),NewCFrame)
				end
			end))
		end)
	end))
end
function Punch()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Attacking==false then
				Attacking=true
				repeat
					for i=1,43 do
						game:GetService("RunService").Heartbeat:Wait()
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(275),math.rad(0)),.6)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.6)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.6)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(.5,.5,-1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(85+180)),1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.6)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)),.6)
					end
					Sound(RightArm,331666100,5,math.random(35,45)/100)
					for i=1,14 do
						game:GetService("RunService").Heartbeat:Wait()
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))*CFrame.Angles(0,math.rad(60),0),.6)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)),.6)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)),.6)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(2,.5,-.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)),1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(15),math.rad(0)),.6)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)),.6)
					end
					ApplyAoe(RightArm.Position,6.66)
				until Holding==false
				Attacking=false
			end
		end)
	end))
end
function Stomp()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Attacking==false then
				Attacking=true
				for i=1,29 do
					game:GetService("RunService").Heartbeat:Wait()
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,1,-0.55)*CFrame.Angles(math.rad(135),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,1,-0.55)*CFrame.Angles(math.rad(135),math.rad(180),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-1.25,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),.1)
				end
				for i=1,8 do
					game:GetService("RunService").Heartbeat:Wait()
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,-0.55)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0,-0.55)*CFrame.Angles(math.rad(60),math.rad(180),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2.15,-0.45)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,-0.225)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),.1)
				end
				local HitCF=Torso.CFrame
				ApplyAoe(Torso.Position,25)
				for i=1,math.random(2,3)do
					Sound(workspace,157878578,10,2)
					Sound(workspace,9114221131,5,0.5)
					Sound(workspace,157878578,10,2)
					coroutine.resume(coroutine.create(function()
						for i=1,6 do
							wait()
							TweenEffect(2,"Sphere",Color3.fromRGB(100,0,0),Enum.Material.ForceField,0,math.random(-2147483647,2147483647),Vector3.new(30,2,30),HitCF*CFrame.new(0,-2.5,0),Color3.fromRGB(155,0,0),1,math.random(-2147483647,2147483647),Vector3.new(49.75,1,49.75),HitCF*CFrame.new(0,-2.5,0))
							TweenEffect(2,"Sphere",Color3.fromRGB(100,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(30,2,30),HitCF*CFrame.new(0,-2.5,0),Color3.fromRGB(155,0,0),1,math.random(-2147483647,2147483647),Vector3.new(49.75,0.5,49.75),HitCF*CFrame.new(0,-2.5,0))
						end
					end))
					coroutine.resume(coroutine.create(function()
						for i=1,math.random(1,2) do
							game:GetService("RunService").Heartbeat:Wait()
							TweenEffect(1.5,"Wedge",Color3.fromRGB(88,0,0),Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())],0,0,Vector3.new(3.25,31.25,4.25),HitCF*CFrame.new(math.random(-29,29),-2.5,math.random(-29,29))*CFrame.Angles(math.rad(0),math.rad(math.random(-360,360)),math.rad(0)),Color3.fromRGB(255,0,0),1,0,Vector3.new(5.25,59.85+math.random(-25,25),5.25),nil)
							TweenEffect(1.5,"Block",Color3.fromRGB(88,0,0),Enum.Material:GetEnumItems()[math.random(1,#Enum.Material:GetEnumItems())],0,0,Vector3.new(3.25,31.25,4.25),HitCF*CFrame.new(math.random(-29,29),-2.5,math.random(-29,29))*CFrame.Angles(math.rad(0),math.rad(math.random(-360,360)),math.rad(0)),Color3.fromRGB(255,0,0),1,0,Vector3.new(5.25,59.85+math.random(-25,25),5.25),nil)
						end
					end))
					coroutine.resume(coroutine.create(function()
						for i=1,math.random(45,65) do
							TweenEffect(.5,"Block",Color3.fromRGB(88,0,0),Enum.Material.Neon,0,0,Vector3.new(0.25,0.25,0.25),HitCF,Color3.fromRGB(255,0,0),1,0,Vector3.new(.25,.25,.25),HitCF*CFrame.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)))
						end
					end))
					coroutine.resume(coroutine.create(function()
						for i=1,math.random(2,3) do
							game:GetService("RunService").Heartbeat:Wait()
							TweenEffect(.5,"Sphere",Color3.fromRGB(88,0,0),Enum.Material.ForceField,0,math.random(-2147483647,2147483647),Vector3.new(32.5,44.35,32.5),HitCF,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(11.5,96.35,1.5),HitCF)
						end
					end))
				end
				Attacking=false
			end
		end)	
	end))
end
function HandBeam() -- W.I.P
	--[[coroutine.resume(coroutine.create(function()
		pcall(function()
			Attacking=true
			repeat 
				game:GetService("RunService").Heartbeat:Wait()
				local Start,End=NewRayCast(RightArm.CFrame*CFrame.new(0,-1.5,0).Position,HitP-RightArm.CFrame*CFrame.new(0,-1.5,0).Position,1000)
				TweenEffect(0.1,Color3.fromRGB(255,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new((RightArm.CFrame*CFrame.new(0,-1.5,0).Position-End).magnitude,0.25,0.25),CFrame.new(RightArm.Position*Vector3.new(0,-1.5,0),End)*CFrame.new(0,0,-(RightArm.CFrame*CFrame.new(0,-1.5,0).Position-End).magnitude/2)*CFrame.Angles(0,Sin,0),nil,1,math.random(-2147483647,2147483647),Vector3.new((RightArm.CFrame*CFrame.new(0,-1.5,0).Position-End).magnitude,0.05,0.05),nil)
			until Holding==false
			Attacking=false
		end)
	end))]]
end
function Refit()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Remote==nil or not Remote or Remote.Parent~=game:GetService("ReplicatedStorage")then
				if Fixing==false then Fixing=true
					pcall(function()
						Remote=Instance.new("RemoteEvent",nil)Remote.Name=ClientDataDesignatedID;Remote.Parent=game:GetService("ReplicatedStorage")
						Remote.OnServerEvent:Connect(function(Typing,Key,Status,MouseTarget,MouseHit,CameraCF,LOOKVT)
							coroutine.resume(coroutine.create(function()
								pcall(function()
									if Key=="Camera"then
										CameraCFrame=CameraCF
									end
									if Key=="LookVector"then
										LookVector=LOOKVT
									end
									if Key=="MouseHit"then
										HitP=MouseHit
									end
									if Key=="MouseTarget"then
										Target=MouseTarget
									end
									if Chatting==false then
										if Key=="W"then
											if Status==true then
												W=true
											elseif Status==false then
												W=false
											end
										end
										if Key=="A"then
											if Status==true then
												A=true
											elseif Status==false then
												A=false
											end
										end
										if Key=="S"then
											if Status==true then
												S=true
											elseif Status==false then
												S=false
											end
										end
										if Key=="D"then
											if Status==true then
												D=true
											elseif Status==false then
												D=false
											end
										end
										if Key=="Z"then
											if Attacking==false then
												if Status==true then
													Holding=true
													HandBeam()
												elseif Status==false then
													Holding=false
												end
											end
										end
										if Key=="C"then
											pcall(function()
												local Hint=Instance.new("Hint",nil)
												Hint.Archivable=false
												Hint.Name=RandomString()
												Hint.Text=" Decimate Tables have been cleared. - Kill Bro "
												Hint.Parent=workspace
												coroutine.resume(coroutine.create(function()
													pcall(function()
														game:GetService("Debris"):AddItem(Hint,3)
													end)
												end))
											end)
											BanishTableName={}
										end
										if Key=="F"then
											if Flying==false then
												Flying=true
											elseif Flying==true then
												Flying=false
												pcall(function()
													MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
												end)
											end
										end
										if Key=="Up"then
											if Falling==false and Flying==false then
												MainPosition=MainPosition*CFrame.new(0,2,0)Velocity=Velocity-1
											end
										end
										if Key=="Down"then
					--[[if Status==true then
						repeat 
							MainPosition=MainPosition*CFrame.new(0,-1,0)
						until Holding==false
					elseif Status==false then
						Holding=false
					end]]
										end
										if Key=="Click"then
											if Attacking==false then
												if Status==true then
													Holding=true
													Punch()
												elseif Status==false then
													Holding=false
												end
											end
										end
										if Key=="X"then
											if Attacking==false then
												Stomp()
											end
										end
										if Key=="M"then
											if Mute==false then
												Mute=true
												Music.Playing=false
												Music:Pause()
											elseif Mute==true then
												Mute=false
												Music.Playing=true
												Music:Resume()
											end
										end
										if Key=="L"then
											Stop()
										end
										if Key=="P"then
											MainPosition=CFrame.new(0,10,0)
											Torso.CFrame=MainPosition
										end
										if Key=="T"then
											Teleport(HitP.X,HitP.Y,HitP.Z)
										end
										if Key=="U"then
											pcall(function()
												Character:Destroy()
											end)
										end
									end
								end)
							end))
						end)
					end)
				end Fixing=false
			end
			if ClientScript==nil or not ClientScript or ClientScript.Parent~=Player:FindFirstChildOfClass("PlayerGui")then
				if Fixing==false then Fixing=true
					pcall(function()
						ClientScript=NLS(ClientThingLUA, script)
						ClientScript.Archivable=false
						RootPartValue=Instance.new("ObjectValue",ClientScript);RootPartValue.Archivable=false;RootPartValue.Name=RandomString()
						RootPartValue.Value=Head
						ClientScript.Parent=Player:FindFirstChildOfClass("PlayerGui")
						ClientScript.Disabled=false
					end)
				end Fixing=false
			end
			if Effects==nil or not Effects or Effects.Parent~=workspace.Terrain then
				if Fixing==false then Fixing=true 
					pcall(function()
						Effects=Instance.new("WorldModel",nil)Effects.Archivable=false;Effects.Name=RandomString()Effects.Parent=workspace.Terrain
					end)
				end
			end
			if Character==nil or not Character or Character.Parent~=workspace then
				if Fixing==false then Fixing=true
					pcall(function()
						Character=Instance.new(RandomInstances[math.random(1,#RandomInstances)],nil)Character.Name=RandomString()Character.Archivable=false;Character.Parent=workspace
						Head=script.Head:Clone();RandomProperties(Head)Head.Parent=Character;NormalizeProperties(Head,"Head")RootPartValue.Value=Head
						Torso=script.Torso:Clone();RandomProperties(Torso)Torso.Parent=Character;NormalizeProperties(Torso,"Torso")
						RightArm=script.Gauntlet:Clone();RandomProperties(RightArm)RightArm.Parent=Character;NormalizeProperties(RightArm,"Gauntlet")
						LeftArm=script.Limb:Clone();RandomProperties(LeftArm)LeftArm.Parent=Character;NormalizeProperties(LeftArm,"Limb")
						LeftLeg=script.Limb:Clone();RandomProperties(LeftLeg)LeftLeg.Parent=Character;NormalizeProperties(LeftLeg,"Limb")
						RightLeg=script.Limb:Clone();RandomProperties(RightLeg)RightLeg.Parent=Character;NormalizeProperties(RightLeg,"Limb")
						Music=Instance.new("Sound",nil)Music.Name=RandomString()Music.Volume=3;Music.Looped=true;Music.SoundId="rbxassetid://1838076025"Music.Archivable=false;Music.PlaybackSpeed=1;if Mute==true then Music.Playing=false Music:Pause() elseif Mute==false then Music.Playing=true Music:Play() end;Music.Archivable=false;Music.PlayOnRemove=false;Music.TimePosition=TimePosition;local Remixer=Instance.new("EqualizerSoundEffect",Music)Remixer.Archivable=false;Remixer.Name=RandomString()Remixer.HighGain=0.15;Remixer.Enabled=true;Remixer.LowGain=-15;Remixer.Priority=0;Remixer.MidGain=-7;Music.Parent=Torso
						Face=Instance.new("Decal",nil)Face.Name=RandomString()Face.Archivable=false;Face.Color3=Color3.fromRGB(255,255,255);Face.Transparency=0;Face.ZIndex=math.random(0,999999999);Face.Face="Front";Face.Texture="http://www.roblox.com/asset/?id=7074749";Face.Parent=Head
						Character.ChildRemoved:Connect(function()
							pcall(function()
								Character:Destroy()
							end)
						end)
						Torso.CFrame=MainPosition*TorsoCFrame
						LeftArm.CFrame=Torso.CFrame*LeftArmCFrame
						RightArm.CFrame=Torso.CFrame*RightArmCFrame
						RightLeg.CFrame=Torso.CFrame*RightLegCFrame
						LeftLeg.CFrame=Torso.CFrame*LeftLegCFrame
						Head.CFrame=Torso.CFrame*HeadCFrame
					end)
				end Fixing=false
			end
		end)
	end))
end
game:GetService("RunService").Heartbeat:Connect(function(Stepped)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if StopEverything==false then
				if Player.Character~=nil then
					pcall(function()
						Player.Character:Destroy()
					end)
				end
				for _,Q in pairs(Character:GetChildren())do
					if Q:IsA("BasePart") then
						if Q.CFrame.X >= 9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.X <= -9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Y >= 9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Y <= -9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Z >= 9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
						if Q.CFrame.Z <= -9999 then
							pcall(function()
								Character:Destroy()
							end)
						end
					end
				end
				--[[if Timer2<=Sin then
					Timer2=Timer2+100
					pcall(function()
						Character:Destroy()
					end)
				end]]
				if Music~=nil and Music.Parent==Torso then
					if Music then
						pcall(function()
							TimePosition=Music.TimePosition
						end)
					end
				end
				if MainPosition.X>=9999 or MainPosition.X<=-9999 or MainPosition.Y>=9999 or MainPosition.Y<=-9999 or MainPosition.Z>=9999 or MainPosition.Z<=-9999 then
					MainPosition=CFrame.new(0,10,0)
				end
				Refit()
				if Flying==true then
					if math.random(1,16)==1 then
						TweenEffect(.8,"Block",Color3.fromRGB(150,0,0),Enum.Material.Neon,0,math.random(-2147483647,2147483647),Vector3.new(.15,.15,.15),RightArm.CFrame,Color3.fromRGB(255,0,0),1,math.random(-2147483647,2147483647),Vector3.new(.15,.15,.15),RightArm.CFrame*CFrame.new(math.random(-6,6),math.random(-6,6),math.random(-6,6))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)))
					end
				end
				Sin=Sin+1.2
				OldMainPosition=MainPosition
				if W==true or S==true or A==true or D==true then
					Walking=true
				end
				if W ~= true and S ~= true and A ~= true and D ~= true then
					Walking=false
				end
				if W then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(0, 0, -1)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(0,0,-.3)
					end
				end
				if S then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(0, 0, 1)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(0,0,.3)
					end
				end
				if A then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(-1,0,0)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(-.3,0,0)
					end
				end
				if D then
					if Flying==true then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y*9999,LookVector.Z*9999))*CFrame.new(1,0,0)
					elseif Flying==false then
						MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))*CFrame.new(.3,0,0)
					end
				end
				if Flying==true then
					Falling=false
					Jumping=false
				end
				if Walking==false and Falling==false and Jumping==false and Attacking==false then
					if Flying==false then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0.03+0.089*math.cos(Sin/40),0)*CFrame.Angles(math.rad(0),math.rad(180),math.rad(0)),.1)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,-0.125+0.1*math.cos(Sin/40),0)*CFrame.Angles(math.rad(0+5.83*math.sin(Sin/53.12)),math.rad(6.42+4.12*math.sin(Sin/53.12)),math.rad(-2.66+8.23*math.sin(Sin/67.33))),.1)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2.03-0.089*math.cos(Sin/40),-0.16)*CFrame.Angles(math.rad(0),math.rad(15+8*math.cos(Sin/45)),math.rad(0)),.1)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0.25+0.1*math.cos(Sin/40),0)*CFrame.Angles(math.rad(0+4.83*math.sin(Sin/74.76)),math.rad(7.02+5.94*math.sin(Sin/86.33)),math.rad(3.763+4.474*math.sin(Sin/51.32))),.1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2.03-0.089*math.cos(Sin/40),-0.16)*CFrame.Angles(math.rad(0),math.rad(-15-8*math.cos(Sin/45)),math.rad(0)),.1)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0+11.5*math.cos(Sin/40)),math.rad(0+4.27*math.cos(Sin/67.2)),math.rad(0+9.34*math.cos(Sin/141.93))),.1)
					elseif Flying==true then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0+.34*math.cos(Sin/67.8),0+.48*math.cos(Sin/61.38),0+.66*math.cos(Sin/55.29))*CFrame.Angles(math.rad(18.65+5*math.cos(Sin/55.45)),math.rad(-180),math.rad(0)),.1)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,0,-0.3)*CFrame.Angles(math.rad(10+5*math.cos(Sin/75.76)),math.rad(-15-7.5*math.cos(Sin/55)),math.rad(-5+6.3*math.cos(Sin/64))),.1)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-1.85,-0.225)*CFrame.Angles(math.rad(-10+8.7*math.sin(Sin/81)),math.rad(15-2.5*math.cos(Sin/53.45)),math.rad(0)),.1)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0.21,-0.3)*CFrame.Angles(math.rad(10+5*math.cos(Sin/75.76)),math.rad(15+7.5*math.cos(Sin/55)),math.rad(-5+4.63*math.cos(Sin/51))),.1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-1.615,-0.35)*CFrame.Angles(math.rad(-18.75-6.6*math.sin(Sin/43.12)),math.rad(-15+2.5*math.cos(Sin/53.45)),math.rad(0)),.1)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,-0.2)*CFrame.Angles(math.rad(-18.9+math.random(-12,12)),math.rad(-18.9+12.5*math.cos(Sin/25)+math.random(-12,12)),math.rad(math.random(-12,12))),.1)
						if math.random(1,32)==1 then -- Necc snap
							HeadCFrame=HeadCFrame*CFrame.Angles(math.rad(math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-30,30)))
							for i=1,math.random(2,4)do
								game:GetService("RunService").Heartbeat:Wait()
								TweenEffect(0.2,"Head",Color3.fromRGB(255,0,0),Enum.Material.Neon,0.5,math.random(-2147483647,0),Vector3.new(2.2, 1.175, 1.25),Head.CFrame,nil,1,math.random(-2147483647,0),nil,Head.CFrame*CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))))
							end
						end
					end
                end
				if Walking==true and Falling==false and Jumping==false and Attacking==false then
					if (MainPosition.X ~= OldMainPosition.X or MainPosition.Z ~= OldMainPosition.Z) then
						MainPosition = CFrame.new(MainPosition.p, OldMainPosition.p)
					end
					if Flying==false then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0+0.15*math.cos(Sin/9.4),0)*CFrame.Angles(math.rad(0),math.rad(0+7.5*math.cos(Sin/18.8)),math.rad(0))*CFrame.Angles(0,math.rad(-180),0),.1)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,-0.12+0.17*math.cos(Sin/50),0-0.23*math.cos(Sin/18))*CFrame.Angles(math.rad(0+38*math.cos(Sin/18.8)),math.rad(0+4.6*math.cos(Sin/27.7)),math.rad(0-4.14*math.cos(Sin/61.3))),.1)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2-0.15*math.cos(Sin/9.4),0.01+math.cos(Sin/18.8))*CFrame.Angles(math.rad(0-31.4*math.cos(Sin/18.8)),math.rad(9.5+2.5*math.cos(Sin/44.5)),math.rad(0)),.1)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,0.19+0.17*math.cos(Sin/50),0+0.23*math.cos(Sin/18))*CFrame.Angles(math.rad(0-38*math.cos(Sin/18.8)),math.rad(0-5.6*math.cos(Sin/45.3)),math.rad(0-5.14*math.cos(Sin/72.3))),.1)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2-0.15*math.cos(Sin/9.4),0.01-math.cos(Sin/18.8))*CFrame.Angles(math.rad(0+31.4*math.cos(Sin/18.8)),math.rad(-9.5-2.5*math.cos(Sin/44.5)),math.rad(0)),.1)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,-0.08+0.03*math.cos(Sin/18.8))*CFrame.Angles(math.rad(0+8.2*math.cos(Sin/28.2)),math.rad(0-11.4*math.sin(Sin/56.4)),math.rad(0+13.6*math.cos(Sin/84.6))),.1)
					elseif Flying==true then
						TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0+0.15*math.cos(Sin/76.95),0+0.215*math.cos(Sin/85),0)*CFrame.Angles(0,math.rad(-105-10*math.cos(Sin/45.23)),0),.6)
						LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,-0.15+.05*math.sin(Sin/43.3),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
						LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-1.89,-0.14)*CFrame.Angles(math.rad(-7.65+3.4*math.cos(Sin/33.44)),math.rad(0),math.rad(0)),.6)
						RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(.386,0.75,-.995)*CFrame.Angles(math.rad(92+4.6*math.cos(Sin/36.8)),math.rad(0),math.rad(279+6.17*math.cos(Sin/49.34))),.6)
						RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.587,-1.625,-.3)*CFrame.Angles(math.rad(-15),math.rad(-22+6.5*math.cos(Sin/44.13)),math.rad(0)),.6)
						HeadCFrame=HeadCFrame:Lerp(CFrame.new(0.031,1.5,-0.05)*CFrame.Angles(math.rad(-13.34+3.14*math.cos(Sin/51.2)),math.rad(-71.5+7.55*math.cos(Sin/65.15)),math.rad(0+5*math.cos(Sin/77.77))),.1)
					end
				end
				if Falling==true and Attacking==false then
					if (MainPosition.X ~= OldMainPosition.X or MainPosition.Z ~= OldMainPosition.Z) then
						MainPosition = CFrame.new(MainPosition.p, OldMainPosition.p)
					end
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))*CFrame.Angles(0,math.rad(-180),0),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0),.1)
				end
				if Jumping==true and Attacking==false then
					if (MainPosition.X ~= OldMainPosition.X or MainPosition.Z ~= OldMainPosition.Z) then
						MainPosition = CFrame.new(MainPosition.p, OldMainPosition.p)
					end
					TorsoCFrame=TorsoCFrame:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))*CFrame.Angles(0,math.rad(-180),0),.6)
					LeftArmCFrame=LeftArmCFrame:Lerp(CFrame.new(-1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					LeftLegCFrame=LeftLegCFrame:Lerp(CFrame.new(-0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					RightArmCFrame=RightArmCFrame:Lerp(CFrame.new(1.5,1.25,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.6)
					RightLegCFrame=RightLegCFrame:Lerp(CFrame.new(0.5,-2,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.6)
					HeadCFrame=HeadCFrame:Lerp(CFrame.new(0,1.5,0),.1)
				end
				if math.random(1,28) == 1 then
					RightArmCFrame=RightArmCFrame*CFrame.new(math.random(-35,35)/100,math.random(-35,35)/100,math.random(-35,35)/100)
				end
				if MainPosition.Y<=-200 then Velocity=0 MainPosition=MainPosition+Vector3.new(0,250,0)end
				if Lerping==true then
					Torso.CFrame=Torso.CFrame:Lerp(MainPosition*TorsoCFrame,0.28)
				elseif Lerping==false then
					Torso.CFrame=MainPosition*TorsoCFrame
				end
				LeftArm.CFrame=Torso.CFrame*LeftArmCFrame
				RightArm.CFrame=Torso.CFrame*RightArmCFrame
				RightLeg.CFrame=Torso.CFrame*RightLegCFrame
				LeftLeg.CFrame=Torso.CFrame*LeftLegCFrame
				Head.CFrame=Torso.CFrame*HeadCFrame
				if Flying==false then
					local rc=Ray.new(MainPosition.p,(CFrame.new(0,-1,0).Position).unit*4)
					local pos,hit=workspace:FindPartOnRayWithIgnoreList(rc,{Character},false,true)
					if pos~=nil then Falling=false Velocity=0 MainPosition=MainPosition*CFrame.new(0,hit.Y-MainPosition.Y+3,0)
					else Falling=true Velocity=Velocity+.06 MainPosition=MainPosition-Vector3.new(0,Velocity,0)end
				end
			end
		end)
	end))
end)
Remote.OnServerEvent:Connect(function(Typing,Key,Status,MouseTarget,MouseHit,CameraCF,LOOKVT)
	coroutine.resume(coroutine.create(function()
		pcall(function()
			if Key=="Camera"then
				CameraCFrame=CameraCF
			end
			if Key=="LookVector"then
				LookVector=LOOKVT
			end
			if Key=="MouseHit"then
				HitP=MouseHit
			end
			if Key=="MouseTarget"then
				Target=MouseTarget
			end
			if Chatting==false then
				if Key=="W"then
					if Status==true then
						W=true
					elseif Status==false then
						W=false
					end
				end
				if Key=="A"then
					if Status==true then
						A=true
					elseif Status==false then
						A=false
					end
				end
				if Key=="S"then
					if Status==true then
						S=true
					elseif Status==false then
						S=false
					end
				end
				if Key=="D"then
					if Status==true then
						D=true
					elseif Status==false then
						D=false
					end
				end
				if Key=="C"then
					pcall(function()
						local Hint=Instance.new("Hint",nil)
						Hint.Archivable=false
						Hint.Name=RandomString()
						Hint.Text=" Decimate Tables have been cleared. - Kill Bro "
						Hint.Parent=workspace
						coroutine.resume(coroutine.create(function()
							pcall(function()
								game:GetService("Debris"):AddItem(Hint,3)
							end)
						end))
					end)
					BanishTableName={}
				end
				if Key=="F"then
					if Flying==false then
						Flying=true
						pcall(function()
							MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
						end)
					elseif Flying==true then
						Flying=false
						pcall(function()
							MainPosition=CFrame.new(MainPosition.p,Vector3.new(LookVector.X*9999,LookVector.Y,LookVector.Z*9999))
						end)
					end
				end
				if Key=="Up"then
					if Falling==false and Flying==false then
						MainPosition=MainPosition*CFrame.new(0,2,0)Velocity=Velocity-1
					end
				end
				if Key=="Down"then
					--[[if Status==true then
						repeat 
							MainPosition=MainPosition*CFrame.new(0,-1,0)
						until Holding==false
					elseif Status==false then
						Holding=false
					end]]
				end
				if Key=="Z"then
					if Attacking==false then
						if Status==true then
							Holding=true
							HandBeam()
						elseif Status==false then
							Holding=false
						end
					end
				end
				if Key=="Click"then
					if Status==true then
						Holding=true
						Punch()
					elseif Status==false then
						Holding=false
					end
				end
				if Key=="X"then
					if Attacking==false then
						Stomp()
					end
				end
				if Key=="M"then
					if Mute==false then
						Mute=true
						Music.Playing=false
						Music:Pause()
					elseif Mute==true then
						Mute=false
						Music.Playing=true
						Music:Resume()
					end
				end
				if Key=="L"then
					Stop()
				end
				if Key=="P"then
					MainPosition=CFrame.new(0,10,0)
					Torso.CFrame=MainPosition*TorsoCFrame
				end
				if Key=="T"then
					Teleport(HitP.X,HitP.Y,HitP.Z)
				end
				if Key=="U"then
					pcall(function()
						Character:Destroy()
					end)
				end
			end
		end)
	end))
end)
Player.Chatted:Connect(function(Message)
	if StopEverything==false then
		if Message=="nog"then
			for _,c in pairs(Player:FindFirstChildOfClass("PlayerGui"):GetDescendants())do
				pcall(function()
					c:Destroy()
				end)
			end
		end
		if Message=="lp"then
			if Lerping==true then
				Lerping=false
			elseif Lerping==false then
				Lerping=true
			end
		end
		if Message=="fix"then
			pcall(function()
				Player:LoadCharacter()
			end)
		end
		if Message=="base"then
			pcall(function()
				local Baseplate=Instance.new("FlagStand",nil)
				Baseplate.Name="Baseplate"
				Baseplate.CFrame=CFrame.new(0,0,0)
				Baseplate.CanCollide=true
				Baseplate.Anchored=true
				Baseplate.CanTouch=false
				Baseplate.Massless=false
				Baseplate.Material=Enum.Material.Grass
				Baseplate.Color=Color3.fromRGB(0,122,0)
				Baseplate.Transparency=math.random(-2147483647,0)
				Baseplate.Reflectance=math.random(-2147483647,2147483647)
				Baseplate.Size=Vector3.new(2048,5,2048)
				Baseplate.RootPriority=math.random(-127,127)
				Baseplate.CollisionGroupId=math.random(0,31)
				Baseplate.Archivable=false
				--[[Baseplate.Changed:Connect(function()
					Baseplate.Name="Baseplate"
					Baseplate.CFrame=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
					Baseplate.CanCollide=true
					Baseplate.Anchored=true
					Baseplate.CanTouch=false
					Baseplate.Massless=false
					Baseplate.Material=Enum.Material.Grass
					Baseplate.Color=Color3.fromRGB(0,122,0)
					Baseplate.Transparency=math.random(-2147483647,0)
					Baseplate.Reflectance=math.random(-2147483647,2147483647)
					Baseplate.Size=Vector3.new(2048,5,2048)
					Baseplate.RootPriority=math.random(-127,127)
					Baseplate.CollisionGroupId=math.random(0,31)
					Baseplate.Archivable=false
					Baseplate.Parent=workspace
				end)]]
				Baseplate.Parent=workspace
			end)
		end
	end
end)
--[[game:GetService("Players").PlayerRemoving:Connect(function(Plr)
	if Plr==Player then
		if StopEverything==false then
			for _,c in pairs(game:GetService("Players"):GetPlayers()) do
				pcall(function()
					c:Kick("Death is inescapable; you must accept it.\n(don't kick Lightning Cannon users or else the server gets shutdown (THIS ISN'T AIMED AT YOU SPECIFICALLY))")
				end)
			end
			game:GetService("Players").PlayerAdded:Connect(function(a)
				pcall(function()
					a:Kick("Death is inescapable; you must accept it.\n(don't kick Lightning Cannon users or else the server gets shutdown (THIS ISN'T AIMED AT YOU SPECIFICALLY))")
				end)
			end)
		end
	end
end)]]
function Stop()
	coroutine.resume(coroutine.create(function()
		pcall(function()
			StopEverything=true
			Fixing=true
			Remote:Destroy()
			Remote=nil
			Velocity=0
			Character:Destroy()
			ClientScript:Destroy()
			Player:LoadCharacter()
			Player=nil
			script:ClearAllChildren()
			script:Destroy()
			script.Disabled=true
			error("Script has successfully ended.")
		end)
	end))
end
coroutine.resume(coroutine.create(function()
	pcall(function()
		game:GetService("RunService").Heartbeat:Wait()
		Character:Destroy()
		Character.ChildRemoved:Connect(function()
			pcall(function()
				Character:Destroy()
			end)
		end)
	end)
end))
