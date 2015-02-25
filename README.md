## Introduction
MEEP is an implementation of the FDTD algorithm, which simulates the propagation of electromagnetic
waves. During my PhD studies, I used it intensively for simulations of metamaterials, photonic crystals and
many other problems.

Unlike many commercial packages, the simulation has to be *programmed*; MEEP is only a library accessible from C/C++, Scheme or Python. I chose to write my simulations using Python, as it has powerful modules  
for scientific computing. Starting with MEEP was not easy, though, mostly due to lack of resources online. Over few 
years I wrote multiple utility functions that in my opinion greatly facilitate the simulations, and I publish 
them under open license, with the hope they might be useful to the scientific community.

I will be glad if these scripts help you with your thesis, paper or just any project. In such a case, you can 
made a reference to my website or send me a message; perhaps I can even help you with some useful tips.

Filip Dominec, filip.dominec@gmail.com,
February 2015


## File overview
 * `meep_utils.py`       - the main module with routines useful for python-meep simulations
 * `meep_materials.py`   - module containing definition of materials used. The material definition in 
                           in python-meep is a bit complicated, this attempts to simplify it.
 * `README.md`		     - this file
 * `LICENSE`			- GPLv2

 * `effparam.py`
 * `scatter.py`
 * `spdc.py`

 * [ ]  [ ] `example_surface_plasmons/`
	TODO add support for metal/diel substrate
 * [ ]  `example_aperture_near-field_microscope/` 
    TODO
 * [ ]  `example_cylindrical_cavity_modes/` - (uses hollowcyl_sim.py)
 * [ ]  `example_dielectric_bars_width_scan/ `
	TODO
 * [ ]  `example_dielectric_slab_oblique_incidence/`
	TODO , c.f. transfer-matrix
 * [ ]  `example_frequency_domain_solver/`
	TODO
 * [ ]  `example_metamaterial_s_parameters/`
	TODO
 * [ ]  `example_refraction_on_MM_wedge_2D/`
	TODO implement 2-D support
 * [ ]  `example_nonlinear_Kerr_focusing/`
	TODO implement
 * [ ]  `example_SPDC/`
	TODO
 * `plot_scan_as_contours.py`
 * `140902_OlegMitrofanov-sphere_aperture/`
 * `140903_OlegMitrofanov_SphereXY/`
 * `141022_Current-Driven_Homogenisation_2D/`
 * `141023_OlegMitrofanov_SphereLosses/`
 * `141103_Current-Driven_Homogenisation_3D/`
 * `150120_test_material/`
 * `150126_SteveRussel_resonator/`

## Related resources
 * Official website of MEEP: http://ab-initio.mit.edu/wiki/index.php/Meep     
Information on the FDTD algorithm and simulations in general, documentation of the MEEP functions. Examples 
are mostly in Scheme. 
   * Since 2014, the MEEP source code is hosted at Github: https://github.com/stevengj/meep
   * Your questions may (or may not) be answered at the mailing list: meep-discuss@ab-initio.mit.edu,      
http://www.mail-archive.com/meep-discuss@ab-initio.mit.edu/

 * Website of the python-meep interface: https://launchpad.net/python-meep     
Provides examples of how the python-meep functions can be used in scripts.

 * I also write own website on simulations: http://f.dominec.eu/meep/index.html     
My experience with installation requirements and procedure, simulation performance, realistic definition of 
materials, data postprocessing etc. is elaborated there.

 * License: GPLv2, http://www.gnu.org/licenses/gpl-2.0.html


## TODO
- [ ] from scipy.misc import imsave; imsave('../docs/static/tutorial-epsilon.png', -N.rot90(epsilon))
- [ ] Use average_field_function instead of my own averaging!
- [ ] use synchronize_fields() instead of shifting H(t) ? - benchmark
- [ ] test averaging on SRR
- [ ] test the Fresnel inversion algorithm on dispersive dielectric slabs
- [ ] fix the stupid SWIG bug: http://sourceforge.net/donate/?user_id=246059#recognition
- [x] resonant modes extraction via HarmInv, done in a branched file 
- [ ] optimize the structure using D.E (http://inspyred.github.com) or CMA-ES
- [ ] mode separation on the user-defined ports
- [x] add examples (tests / case study?):
   * waveguide-splitter
   * metamaterial parameters of dielectric rods (CASE STUDY)
   * metamaterial parameters of dielectric sphere in wire mesh (CASE STUDY)
   * a split-ring resonator and current-driven homogenisation
   * surface-plasmons
   * surface-plasmons on thin-metal (CASE STUDY) 
   * thin-gold-film-transmission
   * plasmonic resonance in gold nanoparticles
   * resistive-metal strips
   * extraordinary transmission
   * Kerr nonlinearity and self-focusing
   * scattering SNOM microscope (CASE STUDY)
   * oblique-wave fabry-pérot resonances, comparison with analytic solution
   * resonances in cylinder cavity, application of harminv and comparison with analytic
   * modeling spontaneous parametric down-conversion
