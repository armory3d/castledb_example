package arm;

import dat.Data;

class DatabaseTrait extends armory.Trait {
	public function new() {
		super();

		// Load database at compile time
		dat.Data.load(haxe.Resource.getString("test.cdb"));
		
		var scn = iron.Scene.active;
		scn.notifyOnInit(function() {

			// Silly example..
			// Cube locations defined in database
			var t = scn.getChild("cube1").transform;
			t.loc.z = dat.Data.objects.get(cube1).location_z;
			t.dirty = true;

			t = scn.getChild("cube2").transform;
			t.loc.z = dat.Data.objects.get(cube2).location_z;
			t.dirty = true;

			t = scn.getChild("cube3").transform;
			t.loc.z = dat.Data.objects.get(cube3).location_z;
			t.dirty = true;
		});
	}
}
