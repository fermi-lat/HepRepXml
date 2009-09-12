# -*- python -*-
# $Header: /nfs/slac/g/glast/ground/cvs/HepRepXml/SConscript,v 1.7 2009/09/10 21:30:04 lsrea Exp $
# Authors: Riccardo Giannitrapani <riccardo@fisica.uniud.it>
# Version: HepRepXml-00-08-05
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




