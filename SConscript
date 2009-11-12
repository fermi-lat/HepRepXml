# -*- python -*-
# $Header: /nfs/slac/g/glast/ground/cvs/GlastRelease-scons/HepRepXml/SConscript,v 1.8 2009/09/12 16:21:56 lsrea Exp $
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
test_HepRepXml = progEnv.GaudiProgram('test_HepRepXml',
                                      listFiles(['src/test/*.cxx']), test = 1)

progEnv.Tool('registerTargets', package = 'HepRepXml',
             libraryCxts = [[HepRepXml, libEnv]],
             testAppCxts = [[test_HepRepXml, progEnv]])




