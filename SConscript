# -*- python -*-
# $Header: /nfs/slac/g/glast/ground/cvs/GlastRelease-scons/HepRepXml/SConscript,v 1.3 2008/11/10 15:38:03 ecephas Exp $
# Authors: Riccardo Giannitrapani <riccardo@fisica.uniud.it>
# Version: HepRepXml-00-08-01
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




