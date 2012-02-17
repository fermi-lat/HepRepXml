# -*- python -*-
# $Header: /nfs/slac/g/glast/ground/cvs/HepRepXml/SConscript,v 1.12.64.1 2012/01/30 19:20:05 heather Exp $
# Authors: Riccardo Giannitrapani <riccardo@fisica.uniud.it>
# Version: HepRepXml-00-08-07-gr02
Import('baseEnv')
Import('listFiles')
Import('packages')
progEnv = baseEnv.Clone()
libEnv = baseEnv.Clone()

libEnv.Tool('addLinkDeps', package='HepRepXml', toBuild='component')
HepRepXml = libEnv.SharedLibrary('HepRepXml', listFiles(['src/*.cxx']))


progEnv.Tool('HepRepXmlLib')
test_HepRepXml = progEnv.GaudiProgram('test_HepRepXml',
                                      listFiles(['src/test/*.cxx']), test = 1,
                                      package='HepRepXml')

progEnv.Tool('registerTargets', package = 'HepRepXml',
             libraryCxts = [[HepRepXml, libEnv]],
             testAppCxts = [[test_HepRepXml, progEnv]],
             jo = ['src/test/jobOptions.txt'])




