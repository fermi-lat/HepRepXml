# -*- python -*-
# $Header: /nfs/slac/g/glast/ground/cvs/HepRepXml/SConscript,v 1.14 2012/01/17 22:15:59 heather Exp $
# Authors: Riccardo Giannitrapani <riccardo@fisica.uniud.it>
# Version: HepRepXml-00-10-00
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




