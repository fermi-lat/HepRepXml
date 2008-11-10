# -*- python -*-
# $Header: /nfs/slac/g/glast/ground/cvs/GlastRelease-scons/HepRepXml/SConscript,v 1.2 2008/10/21 19:30:36 glastrm Exp $
# Authors: Riccardo Giannitrapani <riccardo@fisica.uniud.it>
# Version: HepRepXml-00-08-02
Import('baseEnv')
Import('listFiles')
Import('packages')
progEnv = baseEnv.Clone()
libEnv = baseEnv.Clone()

libEnv.Tool('HepRepXmlLib', depsOnly = 1)
HepRepXml = libEnv.SharedLibrary('HepRepXml', listFiles(['src/*.cxx']))


progEnv.Tool('HepRepXmlLib')
test_HepRepXml = progEnv.GaudiProgram('test_HepRepXml', listFiles(['src/test/*.cxx']), test = 1)

progEnv.Tool('registerObjects', package = 'HepRepXml', libraries = [HepRepXml], testApps = [test_HepRepXml])
