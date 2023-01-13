# ==
# Boilerplate circuit compilation for development
# ==

# Compile circuit
circom ../Backbone.circom --r1cs --wasm --prime vesta

# Generate the witness, primarily as a smoke test for the circuit
node Backbone_js/generate_witness.js Backbone_js/Backbone.wasm backbone_smoke.json Backbone.wtns

# Clean up
mv Backbone_js/Backbone.wasm ../out
mv Backbone.r1cs ../out
# rm -r Backbone_js/ Backbone.wtns
