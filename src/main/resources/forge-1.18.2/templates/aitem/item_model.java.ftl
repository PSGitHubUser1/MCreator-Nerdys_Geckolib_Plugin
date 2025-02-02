package ${package}.item.model;

<#assign geomodel = data.normal>
<#assign texture = data.texture>

public class ${name}ItemModel extends AnimatedGeoModel<${name}Item> {
	@Override
	public ResourceLocation getAnimationFileLocation(${name}Item animatable) {
		return new ResourceLocation("${modid}", "animations/${geomodel?replace(".geo.json", "")}.animation.json");
	}

	@Override
	public ResourceLocation getModelLocation(${name}Item animatable) {
		return new ResourceLocation("${modid}", "geo/${geomodel}");
	}

	@Override
	public ResourceLocation getTextureLocation(${name}Item animatable) {
		return new ResourceLocation("${modid}", "textures/items/${texture}.png");
	}
}