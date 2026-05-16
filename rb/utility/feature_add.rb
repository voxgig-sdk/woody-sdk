# Woody SDK utility: feature_add
module WoodyUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
